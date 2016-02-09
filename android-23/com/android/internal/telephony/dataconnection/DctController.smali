.class public Lcom/android/internal/telephony/dataconnection/DctController;
.super Landroid/os/Handler;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;,
        Lcom/android/internal/telephony/dataconnection/DctController$1;,
        Lcom/android/internal/telephony/dataconnection/DctController$2;,
        Lcom/android/internal/telephony/dataconnection/DctController$3;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_DATA_ATTACHED:I = 0x1f4

.field private static final EVENT_DATA_DETACHED:I = 0x258

.field private static final EVENT_EMERGENCY_CALL_TOGGLED:I = 0x2bc

.field private static final EVENT_EXECUTE_ALL_REQUESTS:I = 0x66

.field private static final EVENT_EXECUTE_REQUEST:I = 0x65

.field private static final EVENT_PROCESS_REQUESTS:I = 0x64

.field private static final EVENT_RELEASE_ALL_REQUESTS:I = 0x68

.field private static final EVENT_RELEASE_REQUEST:I = 0x67

.field private static final EVENT_RETRY_ATTACH:I = 0x69

.field private static final LOG_TAG:Ljava/lang/String; = "DctController"

.field private static sDctController:Lcom/android/internal/telephony/dataconnection/DctController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

.field private mDcSwitchStateHandler:[Landroid/os/Handler;

.field private mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

.field private mNetworkFactory:[Landroid/net/NetworkFactory;

.field private mNetworkFactoryMessenger:[Landroid/os/Messenger;

.field private mNetworkFilter:[Landroid/net/NetworkCapabilities;

.field private mObserver:Landroid/database/ContentObserver;

.field private mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhoneNum:I

.field private mPhones:[Lcom/android/internal/telephony/PhoneProxy;

.field private mRequestInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRspHandler:Landroid/os/Handler;

.field private mSubController:Lcom/android/internal/telephony/SubscriptionController;

.field private mSubMgr:Landroid/telephony/SubscriptionManager;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)I
    .locals 1
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)I
    .locals 1
    .param p1, "request"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseNetwork(Landroid/net/NetworkRequest;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;ILandroid/util/LocalLog;)I
    .locals 1
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "priority"    # I
    .param p3, "l"    # Landroid/util/LocalLog;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DctController;->requestNetwork(Landroid/net/NetworkRequest;ILandroid/util/LocalLog;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)Ljava/lang/String;
    .locals 1
    .param p1, "nr"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap4(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/internal/telephony/dataconnection/DctController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->onSettingsChange()V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/internal/telephony/dataconnection/DctController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->onSubInfoReady()V

    #@3
    return-void
.end method

.method private constructor <init>([Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 10
    .param p1, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 208
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@4
    .line 75
    new-instance v4, Ljava/util/HashMap;

    #@6
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@9
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    #@b
    .line 84
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@e
    move-result-object v4

    #@f
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    #@11
    .line 89
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DctController$1;

    #@13
    invoke-direct {v4, p0}, Lcom/android/internal/telephony/dataconnection/DctController$1;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;)V

    #@16
    .line 88
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    #@18
    .line 96
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DctController$2;

    #@1a
    new-instance v5, Landroid/os/Handler;

    #@1c
    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    #@1f
    invoke-direct {v4, p0, v5}, Lcom/android/internal/telephony/dataconnection/DctController$2;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/os/Handler;)V

    #@22
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mObserver:Landroid/database/ContentObserver;

    #@24
    .line 168
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DctController$3;

    #@26
    invoke-direct {v4, p0}, Lcom/android/internal/telephony/dataconnection/DctController$3;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;)V

    #@29
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHandler:Landroid/os/Handler;

    #@2b
    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v5, "DctController(): phones.length="

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    array-length v5, p1

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@43
    .line 210
    if-eqz p1, :cond_0

    #@45
    array-length v4, p1

    #@46
    if-nez v4, :cond_2

    #@48
    .line 211
    :cond_0
    if-nez p1, :cond_1

    #@4a
    .line 212
    const-string/jumbo v4, "DctController(phones): UNEXPECTED phones=null, ignore"

    #@4d
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    #@50
    .line 216
    :goto_0
    return-void

    #@51
    .line 214
    :cond_1
    const-string/jumbo v4, "DctController(phones): UNEXPECTED phones.length=0, ignore"

    #@54
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    #@57
    goto :goto_0

    #@58
    .line 218
    :cond_2
    array-length v4, p1

    #@59
    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    #@5b
    .line 219
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@5d
    .line 221
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    #@5f
    new-array v4, v4, [Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@61
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@63
    .line 222
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    #@65
    new-array v4, v4, [Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    #@67
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    #@69
    .line 223
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    #@6b
    new-array v4, v4, [Landroid/os/Handler;

    #@6d
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateHandler:[Landroid/os/Handler;

    #@6f
    .line 224
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    #@71
    new-array v4, v4, [Landroid/os/Messenger;

    #@73
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    #@75
    .line 225
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    #@77
    new-array v4, v4, [Landroid/net/NetworkFactory;

    #@79
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    #@7b
    .line 226
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    #@7d
    new-array v4, v4, [Landroid/net/NetworkCapabilities;

    #@7f
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    #@81
    .line 228
    const/4 v0, 0x0

    #@82
    .local v0, "i":I
    :goto_1
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    #@84
    if-ge v0, v4, :cond_4

    #@86
    .line 229
    move v2, v0

    #@87
    .line 230
    .local v2, "phoneId":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@89
    new-instance v5, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@8b
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@8d
    aget-object v6, v6, v0

    #@8f
    .line 231
    new-instance v7, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v8, "DcSwitchStateMachine-"

    #@97
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v7

    #@9b
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v7

    #@9f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v7

    #@a3
    .line 230
    invoke-direct {v5, v6, v7, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)V

    #@a6
    aput-object v5, v4, v0

    #@a8
    .line 232
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@aa
    aget-object v4, v4, v0

    #@ac
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->start()V

    #@af
    .line 233
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    #@b1
    new-instance v5, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    #@b3
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@b5
    aget-object v6, v6, v0

    #@b7
    invoke-direct {v5, v6, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;I)V

    #@ba
    aput-object v5, v4, v0

    #@bc
    .line 234
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateHandler:[Landroid/os/Handler;

    #@be
    new-instance v5, Landroid/os/Handler;

    #@c0
    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    #@c3
    aput-object v5, v4, v0

    #@c5
    .line 236
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    #@c7
    aget-object v4, v4, v0

    #@c9
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@cb
    aget-object v5, v5, v0

    #@cd
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    #@d0
    move-result-object v5

    #@d1
    .line 237
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateHandler:[Landroid/os/Handler;

    #@d3
    aget-object v6, v6, v0

    #@d5
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@d7
    aget-object v7, v7, v0

    #@d9
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getHandler()Landroid/os/Handler;

    #@dc
    move-result-object v7

    #@dd
    .line 236
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    #@e0
    move-result v3

    #@e1
    .line 239
    .local v3, "status":I
    if-nez v3, :cond_3

    #@e3
    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    #@e5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e8
    const-string/jumbo v5, "DctController(phones): Connect success: "

    #@eb
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v4

    #@ef
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v4

    #@f3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f6
    move-result-object v4

    #@f7
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@fa
    .line 246
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@fc
    aget-object v4, v4, v0

    #@fe
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    #@101
    move-result-object v1

    #@102
    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    #@104
    .line 247
    .local v1, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->updatePhoneBaseForIndex(ILcom/android/internal/telephony/PhoneBase;)V

    #@107
    .line 228
    add-int/lit8 v0, v0, 0x1

    #@109
    goto/16 :goto_1

    #@10b
    .line 242
    .end local v1    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    #@10d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@110
    const-string/jumbo v5, "DctController(phones): Could not connect to "

    #@113
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v4

    #@117
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v4

    #@11b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11e
    move-result-object v4

    #@11f
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    #@122
    goto :goto_2

    #@123
    .line 250
    .end local v2    # "phoneId":I
    .end local v3    # "status":I
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@125
    aget-object v4, v4, v9

    #@127
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    #@12a
    move-result-object v4

    #@12b
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    #@12d
    .line 251
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    #@12f
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    #@132
    move-result-object v4

    #@133
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    #@135
    .line 252
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    #@137
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    #@139
    invoke-virtual {v4, v5}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    #@13c
    .line 255
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    #@13e
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@141
    move-result-object v4

    #@142
    .line 257
    const-string/jumbo v5, "multi_sim_data_call"

    #@145
    .line 256
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@148
    move-result-object v5

    #@149
    .line 258
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mObserver:Landroid/database/ContentObserver;

    #@14b
    .line 255
    invoke-virtual {v4, v5, v9, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@14e
    .line 208
    return-void
.end method

.method private apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;
    .locals 7
    .param p1, "nr"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 544
    iget-object v2, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@4
    .line 546
    .local v2, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    #@7
    move-result-object v4

    #@8
    array-length v4, v4

    #@9
    if-lez v4, :cond_0

    #@b
    .line 547
    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    #@e
    move-result v4

    #@f
    if-nez v4, :cond_0

    #@11
    .line 548
    return-object v6

    #@12
    .line 553
    :cond_0
    const/4 v3, -0x1

    #@13
    .line 554
    .local v3, "type":I
    const/4 v1, 0x0

    #@14
    .line 556
    .local v1, "name":Ljava/lang/String;
    const/4 v0, 0x0

    #@15
    .line 557
    .local v0, "error":Z
    const/16 v4, 0xc

    #@17
    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 559
    const-string/jumbo v1, "default"

    #@20
    .line 560
    .local v1, "name":Ljava/lang/String;
    const/4 v3, 0x0

    #@21
    .line 562
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_3

    #@27
    .line 563
    if-eqz v1, :cond_2

    #@29
    const/4 v0, 0x1

    #@2a
    .line 564
    :cond_2
    const-string/jumbo v1, "mms"

    #@2d
    .line 565
    .restart local v1    # "name":Ljava/lang/String;
    const/4 v3, 0x2

    #@2e
    .line 567
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x1

    #@2f
    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_5

    #@35
    .line 568
    if-eqz v1, :cond_4

    #@37
    const/4 v0, 0x1

    #@38
    .line 569
    :cond_4
    const-string/jumbo v1, "supl"

    #@3b
    .line 570
    .restart local v1    # "name":Ljava/lang/String;
    const/4 v3, 0x3

    #@3c
    .line 572
    .end local v1    # "name":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x2

    #@3d
    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@40
    move-result v4

    #@41
    if-eqz v4, :cond_7

    #@43
    .line 573
    if-eqz v1, :cond_6

    #@45
    const/4 v0, 0x1

    #@46
    .line 574
    :cond_6
    const-string/jumbo v1, "dun"

    #@49
    .line 575
    .restart local v1    # "name":Ljava/lang/String;
    const/4 v3, 0x4

    #@4a
    .line 577
    .end local v1    # "name":Ljava/lang/String;
    :cond_7
    const/4 v4, 0x3

    #@4b
    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@4e
    move-result v4

    #@4f
    if-eqz v4, :cond_9

    #@51
    .line 578
    if-eqz v1, :cond_8

    #@53
    const/4 v0, 0x1

    #@54
    .line 579
    :cond_8
    const-string/jumbo v1, "fota"

    #@57
    .line 580
    .restart local v1    # "name":Ljava/lang/String;
    const/16 v3, 0xa

    #@59
    .line 582
    .end local v1    # "name":Ljava/lang/String;
    :cond_9
    const/4 v4, 0x4

    #@5a
    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@5d
    move-result v4

    #@5e
    if-eqz v4, :cond_b

    #@60
    .line 583
    if-eqz v1, :cond_a

    #@62
    const/4 v0, 0x1

    #@63
    .line 584
    :cond_a
    const-string/jumbo v1, "ims"

    #@66
    .line 585
    .restart local v1    # "name":Ljava/lang/String;
    const/16 v3, 0xb

    #@68
    .line 587
    .end local v1    # "name":Ljava/lang/String;
    :cond_b
    const/4 v4, 0x5

    #@69
    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@6c
    move-result v4

    #@6d
    if-eqz v4, :cond_d

    #@6f
    .line 588
    if-eqz v1, :cond_c

    #@71
    const/4 v0, 0x1

    #@72
    .line 589
    :cond_c
    const-string/jumbo v1, "cbs"

    #@75
    .line 590
    .restart local v1    # "name":Ljava/lang/String;
    const/16 v3, 0xc

    #@77
    .line 592
    .end local v1    # "name":Ljava/lang/String;
    :cond_d
    const/4 v4, 0x7

    #@78
    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@7b
    move-result v4

    #@7c
    if-eqz v4, :cond_f

    #@7e
    .line 593
    if-eqz v1, :cond_e

    #@80
    const/4 v0, 0x1

    #@81
    .line 594
    :cond_e
    const-string/jumbo v1, "ia"

    #@84
    .line 595
    .restart local v1    # "name":Ljava/lang/String;
    const/16 v3, 0xe

    #@86
    .line 597
    .end local v1    # "name":Ljava/lang/String;
    :cond_f
    const/16 v4, 0x8

    #@88
    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@8b
    move-result v4

    #@8c
    if-eqz v4, :cond_11

    #@8e
    .line 598
    if-eqz v1, :cond_10

    #@90
    const/4 v0, 0x1

    #@91
    .line 599
    :cond_10
    const/4 v1, 0x0

    #@92
    .line 600
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v4, "RCS APN type not yet supported"

    #@95
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    #@98
    .line 602
    .end local v1    # "name":Ljava/lang/String;
    :cond_11
    const/16 v4, 0x9

    #@9a
    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@9d
    move-result v4

    #@9e
    if-eqz v4, :cond_13

    #@a0
    .line 603
    if-eqz v1, :cond_12

    #@a2
    const/4 v0, 0x1

    #@a3
    .line 604
    :cond_12
    const/4 v1, 0x0

    #@a4
    .line 605
    .restart local v1    # "name":Ljava/lang/String;
    const-string/jumbo v4, "XCAP APN type not yet supported"

    #@a7
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    #@aa
    .line 607
    .end local v1    # "name":Ljava/lang/String;
    :cond_13
    const/16 v4, 0xa

    #@ac
    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@af
    move-result v4

    #@b0
    if-eqz v4, :cond_15

    #@b2
    .line 608
    if-eqz v1, :cond_14

    #@b4
    const/4 v0, 0x1

    #@b5
    .line 609
    :cond_14
    const-string/jumbo v1, "emergency"

    #@b8
    .line 610
    .local v1, "name":Ljava/lang/String;
    const/16 v3, 0xf

    #@ba
    .line 612
    .end local v1    # "name":Ljava/lang/String;
    :cond_15
    if-eqz v0, :cond_16

    #@bc
    .line 617
    const-string/jumbo v4, "Multiple apn types specified in request - result is unspecified!"

    #@bf
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    #@c2
    .line 619
    :cond_16
    const/4 v4, -0x1

    #@c3
    if-eq v3, v4, :cond_17

    #@c5
    if-nez v1, :cond_18

    #@c7
    .line 620
    :cond_17
    new-instance v4, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string/jumbo v5, "Unsupported NetworkRequest in Telephony: nr="

    #@cf
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v4

    #@d3
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v4

    #@d7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v4

    #@db
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    #@de
    .line 621
    return-object v6

    #@df
    .line 623
    :cond_18
    return-object v1
.end method

.method public static getInstance()Lcom/android/internal/telephony/dataconnection/DctController;
    .locals 2

    #@0
    .prologue
    .line 192
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 193
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    .line 194
    const-string/jumbo v1, "DctController.getInstance can\'t be called before makeDCTController()"

    #@9
    .line 193
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 196
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    #@f
    return-object v0
.end method

.method private getRequestPhoneId(Landroid/net/NetworkRequest;)I
    .locals 5
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 627
    iget-object v3, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@2
    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 629
    .local v1, "specifier":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@8
    const-string/jumbo v3, ""

    #@b
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 630
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    #@13
    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    #@16
    move-result v2

    #@17
    .line 634
    .local v2, "subId":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    #@19
    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    #@1c
    move-result v0

    #@1d
    .line 635
    .local v0, "phoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    #@20
    move-result v3

    #@21
    if-nez v3, :cond_2

    #@23
    .line 636
    const/4 v0, 0x0

    #@24
    .line 637
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    #@27
    move-result v3

    #@28
    if-nez v3, :cond_2

    #@2a
    .line 638
    new-instance v3, Ljava/lang/RuntimeException;

    #@2c
    const-string/jumbo v4, "Should not happen, no valid phoneId"

    #@2f
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@32
    throw v3

    #@33
    .line 632
    .end local v0    # "phoneId":I
    .end local v2    # "subId":I
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@36
    move-result v2

    #@37
    .restart local v2    # "subId":I
    goto :goto_0

    #@38
    .line 641
    .restart local v0    # "phoneId":I
    :cond_2
    return v0
.end method

.method private getTopPriorityRequestPhoneId()I
    .locals 9

    #@0
    .prologue
    .line 499
    const/4 v6, 0x0

    #@1
    .line 500
    .local v6, "retRequestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    const/4 v3, 0x0

    #@2
    .line 501
    .local v3, "phoneId":I
    const/4 v4, -0x1

    #@3
    .line 504
    .local v4, "priority":I
    const/4 v1, 0x0

    #@4
    .end local v6    # "retRequestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    .local v1, "i":I
    :goto_0
    iget v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    #@6
    if-ge v1, v7, :cond_2

    #@8
    .line 505
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    #@a
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@d
    move-result-object v7

    #@e
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v2

    #@12
    .line 506
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v7

    #@16
    if-eqz v7, :cond_1

    #@18
    .line 507
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    #@1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v8

    #@1e
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v5

    #@22
    check-cast v5, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    #@24
    .line 508
    .local v5, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v8, "selectExecPhone requestInfo = "

    #@2c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v7

    #@30
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v7

    #@34
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v7

    #@38
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@3b
    .line 509
    iget-object v7, v5, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    #@3d
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    #@40
    move-result v7

    #@41
    if-ne v7, v1, :cond_0

    #@43
    .line 510
    iget v7, v5, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->priority:I

    #@45
    if-ge v4, v7, :cond_0

    #@47
    .line 511
    iget v4, v5, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->priority:I

    #@49
    .line 512
    move-object v6, v5

    #@4a
    .local v6, "retRequestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    goto :goto_1

    #@4b
    .line 504
    .end local v5    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    .end local v6    # "retRequestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 517
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    if-eqz v6, :cond_3

    #@50
    .line 518
    iget-object v7, v6, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    #@52
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    #@55
    move-result v3

    #@56
    .line 526
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v8, "getTopPriorityRequestPhoneId = "

    #@5e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v7

    #@62
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    move-result-object v7

    #@66
    .line 527
    const-string/jumbo v8, ", priority = "

    #@69
    .line 526
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v7

    #@6d
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v7

    #@71
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v7

    #@75
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@78
    .line 529
    return v3

    #@79
    .line 520
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    #@7b
    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    #@7e
    move-result v0

    #@7f
    .line 521
    .local v0, "defaultDds":I
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    #@81
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    #@84
    move-result v3

    #@85
    .line 522
    const-string/jumbo v7, "getTopPriorityRequestPhoneId: RequestInfo list is empty, use Dds sub phone id"

    #@88
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@8b
    goto :goto_2
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 645
    const-string/jumbo v0, "DctController"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 644
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 649
    const-string/jumbo v0, "DctController"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 648
    return-void
.end method

.method public static makeDctController([Lcom/android/internal/telephony/PhoneProxy;)Lcom/android/internal/telephony/dataconnection/DctController;
    .locals 2
    .param p0, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;

    #@0
    .prologue
    .line 200
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v1, "makeDctController: new DctController phones.length="

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    array-length v1, p0

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@1c
    .line 202
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DctController;

    #@1e
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DctController;-><init>([Lcom/android/internal/telephony/PhoneProxy;)V

    #@21
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    #@23
    .line 204
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v1, "makeDctController: X sDctController="

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@3c
    .line 205
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    #@3e
    return-object v0
.end method

.method private onExecuteAllRequests(I)V
    .locals 4
    .param p1, "phoneId"    # I

    #@0
    .prologue
    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "onExecuteAllRequests phoneId="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@17
    .line 405
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    #@19
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v0

    #@21
    .line 406
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_1

    #@27
    .line 407
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    #@29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v1

    #@31
    check-cast v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    #@33
    .line 408
    .local v1, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    #@35
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    #@38
    move-result v2

    #@39
    if-ne v2, p1, :cond_0

    #@3b
    .line 409
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->onExecuteRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    #@3e
    goto :goto_0

    #@3f
    .line 403
    .end local v1    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :cond_1
    return-void
.end method

.method private onExecuteRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V
    .locals 6
    .param p1, "requestInfo"    # Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    #@0
    .prologue
    .line 391
    iget-boolean v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    #@2
    if-nez v4, :cond_0

    #@4
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    #@6
    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    #@8
    iget v5, v5, Landroid/net/NetworkRequest;->requestId:I

    #@a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v5

    #@e
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_0

    #@14
    .line 392
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v5, "onExecuteRequest request="

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@2b
    .line 393
    new-instance v4, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v5, "DctController.onExecuteRequest - executed="

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    iget-boolean v5, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    #@39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->log(Ljava/lang/String;)V

    #@44
    .line 394
    const/4 v4, 0x1

    #@45
    iput-boolean v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    #@47
    .line 395
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    #@49
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    .line 396
    .local v0, "apn":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    #@4f
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    #@52
    move-result v3

    #@53
    .line 397
    .local v3, "phoneId":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@55
    aget-object v4, v4, v3

    #@57
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    #@5a
    move-result-object v2

    #@5b
    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    #@5d
    .line 398
    .local v2, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    iget-object v1, v2, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@5f
    .line 399
    .local v1, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->getLog()Landroid/util/LocalLog;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v1, v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->incApnRefCount(Ljava/lang/String;Landroid/util/LocalLog;)V

    #@66
    .line 390
    .end local v0    # "apn":Ljava/lang/String;
    .end local v1    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v2    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    .end local v3    # "phoneId":I
    :cond_0
    return-void
.end method

.method private onProcessRequest()V
    .locals 7

    #@0
    .prologue
    .line 364
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->getTopPriorityRequestPhoneId()I

    #@3
    move-result v3

    #@4
    .line 365
    .local v3, "phoneId":I
    const/4 v0, -0x1

    #@5
    .line 367
    .local v0, "activePhoneId":I
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@8
    array-length v5, v5

    #@9
    if-ge v1, v5, :cond_0

    #@b
    .line 368
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    #@d
    aget-object v5, v5, v1

    #@f
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleSync()Z

    #@12
    move-result v5

    #@13
    if-nez v5, :cond_3

    #@15
    .line 369
    move v0, v1

    #@16
    .line 374
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v6, "onProcessRequest phoneId="

    #@1e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    .line 375
    const-string/jumbo v6, ", activePhoneId="

    #@29
    .line 374
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v5

    #@35
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@38
    .line 377
    const/4 v5, -0x1

    #@39
    if-eq v0, v5, :cond_1

    #@3b
    if-ne v0, v3, :cond_4

    #@3d
    .line 378
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    #@3f
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@42
    move-result-object v5

    #@43
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@46
    move-result-object v2

    #@47
    .line 379
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@4a
    move-result v5

    #@4b
    if-eqz v5, :cond_5

    #@4d
    .line 380
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    #@4f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@52
    move-result-object v6

    #@53
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    move-result-object v4

    #@57
    check-cast v4, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    #@59
    .line 381
    .local v4, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v5, v4, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    #@5b
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    #@5e
    move-result v5

    #@5f
    if-ne v5, v3, :cond_2

    #@61
    iget-boolean v5, v4, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    #@63
    if-nez v5, :cond_2

    #@65
    .line 382
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    #@67
    aget-object v5, v5, v3

    #@69
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->connect(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)I

    #@6c
    goto :goto_1

    #@6d
    .line 367
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v4    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@6f
    goto :goto_0

    #@70
    .line 386
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    #@72
    aget-object v5, v5, v0

    #@74
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->disconnectAll()I

    #@77
    .line 355
    :cond_5
    return-void
.end method

.method private onReleaseAllRequests(I)V
    .locals 4
    .param p1, "phoneId"    # I

    #@0
    .prologue
    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "onReleaseAllRequests phoneId="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@17
    .line 431
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    #@19
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v0

    #@21
    .line 432
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_1

    #@27
    .line 433
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    #@29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v1

    #@31
    check-cast v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    #@33
    .line 434
    .local v1, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    #@35
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    #@38
    move-result v2

    #@39
    if-ne v2, p1, :cond_0

    #@3b
    .line 435
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->onReleaseRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    #@3e
    goto :goto_0

    #@3f
    .line 429
    .end local v1    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :cond_1
    return-void
.end method

.method private onReleaseRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V
    .locals 6
    .param p1, "requestInfo"    # Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    #@0
    .prologue
    .line 415
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v5, "onReleaseRequest request="

    #@8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@17
    .line 416
    if-eqz p1, :cond_0

    #@19
    .line 417
    const-string/jumbo v4, "DctController.onReleaseRequest"

    #@1c
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->log(Ljava/lang/String;)V

    #@1f
    .line 418
    iget-boolean v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    #@21
    if-eqz v4, :cond_0

    #@23
    .line 419
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    #@25
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    .line 420
    .local v0, "apn":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    #@2b
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    #@2e
    move-result v3

    #@2f
    .line 421
    .local v3, "phoneId":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@31
    aget-object v4, v4, v3

    #@33
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    #@36
    move-result-object v2

    #@37
    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    #@39
    .line 422
    .local v2, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    iget-object v1, v2, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@3b
    .line 423
    .local v1, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->getLog()Landroid/util/LocalLog;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v1, v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->decApnRefCount(Ljava/lang/String;Landroid/util/LocalLog;)V

    #@42
    .line 424
    const/4 v4, 0x0

    #@43
    iput-boolean v4, p1, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    #@45
    .line 414
    .end local v0    # "apn":Ljava/lang/String;
    .end local v1    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v2    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    .end local v3    # "phoneId":I
    :cond_0
    return-void
.end method

.method private onRetryAttach(I)V
    .locals 3
    .param p1, "phoneId"    # I

    #@0
    .prologue
    .line 441
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->getTopPriorityRequestPhoneId()I

    #@3
    move-result v0

    #@4
    .line 442
    .local v0, "topPriPhone":I
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "onRetryAttach phoneId="

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, " topPri phone = "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@26
    .line 444
    const/4 v1, -0x1

    #@27
    if-eq p1, v1, :cond_0

    #@29
    if-ne p1, v0, :cond_0

    #@2b
    .line 445
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    #@2d
    aget-object v1, v1, p1

    #@2f
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->retryConnect()V

    #@32
    .line 440
    :cond_0
    return-void
.end method

.method private onSettingsChange()V
    .locals 15

    #@0
    .prologue
    const/4 v14, 0x0

    #@1
    .line 451
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    #@3
    invoke-virtual {v11}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    #@6
    move-result v11

    #@7
    int-to-long v2, v11

    #@8
    .line 453
    .local v2, "dataSubId":J
    const/4 v0, -0x1

    #@9
    .line 454
    .local v0, "activePhoneId":I
    const/4 v5, 0x0

    #@a
    .local v5, "i":I
    :goto_0
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@c
    array-length v11, v11

    #@d
    if-ge v5, v11, :cond_0

    #@f
    .line 455
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    #@11
    aget-object v11, v11, v5

    #@13
    invoke-virtual {v11}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleSync()Z

    #@16
    move-result v11

    #@17
    if-nez v11, :cond_2

    #@19
    .line 456
    move v0, v5

    #@1a
    .line 461
    :cond_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    #@1d
    move-result-object v10

    #@1e
    .line 462
    .local v10, "subIds":[I
    if-eqz v10, :cond_1

    #@20
    array-length v11, v10

    #@21
    if-nez v11, :cond_3

    #@23
    .line 463
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v12, "onSettingsChange, subIds null or length 0 for activePhoneId "

    #@2b
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v11

    #@2f
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v11

    #@33
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v11

    #@37
    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    #@3a
    .line 464
    return-void

    #@3b
    .line 454
    .end local v10    # "subIds":[I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 466
    .restart local v10    # "subIds":[I
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v12, "onSettingsChange, data sub: "

    #@46
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v11

    #@4a
    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v11

    #@4e
    const-string/jumbo v12, ", active data sub: "

    #@51
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v11

    #@55
    aget v12, v10, v14

    #@57
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v11

    #@5b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v11

    #@5f
    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@62
    .line 468
    aget v11, v10, v14

    #@64
    int-to-long v12, v11

    #@65
    cmp-long v11, v12, v2

    #@67
    if-eqz v11, :cond_6

    #@69
    .line 469
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    #@6b
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@6e
    move-result-object v11

    #@6f
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@72
    move-result-object v6

    #@73
    .line 470
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@76
    move-result v11

    #@77
    if-eqz v11, :cond_6

    #@79
    .line 471
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    #@7b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7e
    move-result-object v12

    #@7f
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@82
    move-result-object v8

    #@83
    check-cast v8, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    #@85
    .line 472
    .local v8, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v11, v8, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    #@87
    iget-object v11, v11, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@89
    invoke-virtual {v11}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    #@8c
    move-result-object v9

    #@8d
    .line 473
    .local v9, "specifier":Ljava/lang/String;
    if-eqz v9, :cond_5

    #@8f
    const-string/jumbo v11, ""

    #@92
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@95
    move-result v11

    #@96
    if-eqz v11, :cond_4

    #@98
    .line 474
    :cond_5
    iget-boolean v11, v8, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    #@9a
    if-eqz v11, :cond_4

    #@9c
    .line 475
    iget-object v11, v8, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    #@9e
    invoke-direct {p0, v11}, Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;

    #@a1
    move-result-object v1

    #@a2
    .line 476
    .local v1, "apn":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    const-string/jumbo v12, "[setDataSubId] activePhoneId:"

    #@aa
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v11

    #@ae
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v11

    #@b2
    const-string/jumbo v12, ", subId ="

    #@b5
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v11

    #@b9
    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v11

    #@bd
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v11

    #@c1
    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@c4
    .line 478
    const-string/jumbo v11, "DctController.onSettingsChange releasing request"

    #@c7
    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->log(Ljava/lang/String;)V

    #@ca
    .line 480
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@cc
    aget-object v11, v11, v0

    #@ce
    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    #@d1
    move-result-object v7

    #@d2
    check-cast v7, Lcom/android/internal/telephony/PhoneBase;

    #@d4
    .line 481
    .local v7, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    iget-object v4, v7, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@d6
    .line 482
    .local v4, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->getLog()Landroid/util/LocalLog;

    #@d9
    move-result-object v11

    #@da
    invoke-virtual {v4, v1, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->decApnRefCount(Ljava/lang/String;Landroid/util/LocalLog;)V

    #@dd
    .line 483
    iput-boolean v14, v8, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->executed:Z

    #@df
    goto :goto_1

    #@e0
    .line 491
    .end local v1    # "apn":Ljava/lang/String;
    .end local v4    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v7    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    .end local v8    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    .end local v9    # "specifier":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    #@e1
    :goto_2
    iget v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    #@e3
    if-ge v5, v11, :cond_7

    #@e5
    .line 492
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    #@e7
    aget-object v11, v11, v5

    #@e9
    check-cast v11, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    #@eb
    invoke-virtual {v11}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->evalPendingRequest()V

    #@ee
    .line 491
    add-int/lit8 v5, v5, 0x1

    #@f0
    goto :goto_2

    #@f1
    .line 495
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V

    #@f4
    .line 449
    return-void
.end method

.method private onSubInfoReady()V
    .locals 4

    #@0
    .prologue
    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "onSubInfoReady mPhoneNum="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@19
    .line 534
    const/4 v0, 0x0

    #@1a
    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    #@1c
    if-ge v0, v2, :cond_0

    #@1e
    .line 535
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@20
    aget-object v2, v2, v0

    #@22
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getSubId()I

    #@25
    move-result v1

    #@26
    .line 536
    .local v1, "subId":I
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v3, "onSubInfoReady handle pending requests subId="

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@3d
    .line 537
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    #@3f
    aget-object v2, v2, v0

    #@41
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)V

    #@48
    .line 538
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    #@4a
    aget-object v2, v2, v0

    #@4c
    check-cast v2, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    #@4e
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->evalPendingRequest()V

    #@51
    .line 534
    add-int/lit8 v0, v0, 0x1

    #@53
    goto :goto_0

    #@54
    .line 540
    .end local v1    # "subId":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V

    #@57
    .line 532
    return-void
.end method

.method private releaseNetwork(Landroid/net/NetworkRequest;)I
    .locals 3
    .param p1, "request"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 315
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    #@2
    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    #@4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    #@e
    .line 316
    .local v0, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "releaseNetwork request="

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, ", requestInfo="

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@30
    .line 317
    if-eqz v0, :cond_0

    #@32
    const-string/jumbo v1, "DctController.releaseNetwork"

    #@35
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->log(Ljava/lang/String;)V

    #@38
    .line 319
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    #@3a
    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    #@3c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    .line 320
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    #@46
    .line 321
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V

    #@49
    .line 322
    const/4 v1, 0x1

    #@4a
    return v1
.end method

.method private requestNetwork(Landroid/net/NetworkRequest;ILandroid/util/LocalLog;)I
    .locals 3
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "priority"    # I
    .param p3, "l"    # Landroid/util/LocalLog;

    #@0
    .prologue
    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "requestNetwork request="

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    .line 304
    const-string/jumbo v2, ", priority="

    #@13
    .line 303
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@22
    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v2, "Dctc.requestNetwork, priority="

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {p3, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@39
    .line 307
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    #@3b
    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;-><init>(Landroid/net/NetworkRequest;ILandroid/util/LocalLog;)V

    #@3e
    .line 308
    .local v0, "requestInfo":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    #@40
    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    #@42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    .line 309
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V

    #@4c
    .line 311
    const/4 v1, 0x1

    #@4d
    return v1
.end method

.method private updatePhoneBaseForIndex(ILcom/android/internal/telephony/PhoneBase;)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v1, "updatePhoneBaseForIndex for phone index="

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@19
    .line 127
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@1c
    move-result-object v0

    #@1d
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHandler:Landroid/os/Handler;

    #@1f
    .line 128
    add-int/lit16 v2, p1, 0x1f4

    #@21
    .line 127
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    #@24
    .line 129
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@27
    move-result-object v0

    #@28
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHandler:Landroid/os/Handler;

    #@2a
    .line 130
    add-int/lit16 v2, p1, 0x258

    #@2c
    .line 129
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    #@2f
    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHandler:Landroid/os/Handler;

    #@31
    .line 132
    add-int/lit16 v1, p1, 0x2bc

    #@33
    .line 131
    invoke-virtual {p2, v0, v1, v3}, Lcom/android/internal/telephony/PhoneBase;->registerForEmergencyCallToggle(Landroid/os/Handler;ILjava/lang/Object;)V

    #@36
    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@38
    aget-object v0, v0, p1

    #@3a
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    #@3d
    move-result-object v0

    #@3e
    .line 135
    const-string/jumbo v1, "connectivity"

    #@41
    .line 134
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@44
    move-result-object v7

    #@45
    check-cast v7, Landroid/net/ConnectivityManager;

    #@47
    .line 137
    .local v7, "cm":Landroid/net/ConnectivityManager;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    #@49
    if-eqz v0, :cond_0

    #@4b
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v1, "unregister TelephonyNetworkFactory for phone index="

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v0

    #@5f
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@62
    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    #@64
    aget-object v0, v0, p1

    #@66
    invoke-virtual {v7, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkFactory(Landroid/os/Messenger;)V

    #@69
    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    #@6b
    aput-object v3, v0, p1

    #@6d
    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    #@6f
    aput-object v3, v0, p1

    #@71
    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    #@73
    aput-object v3, v0, p1

    #@75
    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    #@77
    new-instance v1, Landroid/net/NetworkCapabilities;

    #@79
    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    #@7c
    aput-object v1, v0, p1

    #@7e
    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    #@80
    aget-object v0, v0, p1

    #@82
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    #@85
    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    #@87
    aget-object v0, v0, p1

    #@89
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@8c
    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    #@8e
    aget-object v0, v0, p1

    #@90
    const/4 v1, 0x1

    #@91
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@94
    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    #@96
    aget-object v0, v0, p1

    #@98
    const/4 v1, 0x2

    #@99
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@9c
    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    #@9e
    aget-object v0, v0, p1

    #@a0
    const/4 v1, 0x3

    #@a1
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@a4
    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    #@a6
    aget-object v0, v0, p1

    #@a8
    const/4 v1, 0x4

    #@a9
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@ac
    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    #@ae
    aget-object v0, v0, p1

    #@b0
    const/4 v1, 0x5

    #@b1
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@b4
    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    #@b6
    aget-object v0, v0, p1

    #@b8
    const/4 v1, 0x7

    #@b9
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@bc
    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    #@be
    aget-object v0, v0, p1

    #@c0
    const/16 v1, 0x8

    #@c2
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@c5
    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    #@c7
    aget-object v0, v0, p1

    #@c9
    const/16 v1, 0x9

    #@cb
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@ce
    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    #@d0
    aget-object v0, v0, p1

    #@d2
    const/16 v1, 0xa

    #@d4
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@d7
    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    #@d9
    aget-object v0, v0, p1

    #@db
    const/16 v1, 0xd

    #@dd
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@e0
    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    #@e2
    aget-object v0, v0, p1

    #@e4
    const/16 v1, 0xc

    #@e6
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@e9
    .line 160
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    #@eb
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    #@ed
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->getLooper()Landroid/os/Looper;

    #@f0
    move-result-object v2

    #@f1
    .line 161
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@f3
    aget-object v1, v1, p1

    #@f5
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    #@f8
    move-result-object v3

    #@f9
    const-string/jumbo v4, "TelephonyNetworkFactory"

    #@fc
    .line 162
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    #@fe
    aget-object v6, v1, p1

    #@100
    move-object v1, p0

    #@101
    move-object v5, p2

    #@102
    .line 160
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/Phone;Landroid/net/NetworkCapabilities;)V

    #@105
    aput-object v0, v8, p1

    #@107
    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    #@109
    aget-object v0, v0, p1

    #@10b
    const/16 v1, 0x32

    #@10d
    invoke-virtual {v0, v1}, Landroid/net/NetworkFactory;->setScoreFilter(I)V

    #@110
    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    #@112
    new-instance v1, Landroid/os/Messenger;

    #@114
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    #@116
    aget-object v2, v2, p1

    #@118
    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@11b
    aput-object v1, v0, p1

    #@11d
    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    #@11f
    aget-object v0, v0, p1

    #@121
    const-string/jumbo v1, "Telephony"

    #@124
    invoke-virtual {v7, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V

    #@127
    .line 124
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    #@0
    .prologue
    .line 262
    const-string/jumbo v2, "DctController.dispose"

    #@3
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@6
    .line 263
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    #@9
    if-ge v1, v2, :cond_0

    #@b
    .line 264
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@d
    aget-object v2, v2, v1

    #@f
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    #@12
    move-result-object v2

    #@13
    .line 265
    const-string/jumbo v3, "connectivity"

    #@16
    .line 264
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/net/ConnectivityManager;

    #@1c
    .line 266
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    #@1e
    aget-object v2, v2, v1

    #@20
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkFactory(Landroid/os/Messenger;)V

    #@23
    .line 267
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    #@25
    const/4 v3, 0x0

    #@26
    aput-object v3, v2, v1

    #@28
    .line 263
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 270
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    #@2d
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    #@2f
    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    #@32
    .line 271
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    #@34
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@37
    move-result-object v2

    #@38
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mObserver:Landroid/database/ContentObserver;

    #@3a
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@3d
    .line 261
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 819
    const-string/jumbo v6, "DctController:"

    #@4
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7
    .line 821
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    #@9
    array-length v8, v7

    #@a
    move v6, v5

    #@b
    :goto_0
    if-ge v6, v8, :cond_0

    #@d
    aget-object v0, v7, v6

    #@f
    .line 822
    .local v0, "dssm":Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 821
    add-int/lit8 v6, v6, 0x1

    #@14
    goto :goto_0

    #@15
    .line 824
    .end local v0    # "dssm":Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    :catch_0
    move-exception v1

    #@16
    .line 825
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    #@19
    .line 827
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@1c
    .line 828
    const-string/jumbo v6, "++++++++++++++++++++++++++++++++"

    #@1f
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22
    .line 831
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    #@24
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@27
    move-result-object v6

    #@28
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2b
    move-result-object v3

    #@2c
    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2f
    move-result v6

    #@30
    if-eqz v6, :cond_1

    #@32
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35
    move-result-object v2

    #@36
    check-cast v2, Ljava/util/Map$Entry;

    #@38
    .line 832
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v7, "mRequestInfos["

    #@40
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v6

    #@44
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@47
    move-result-object v7

    #@48
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v6

    #@4c
    const-string/jumbo v7, "]="

    #@4f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v6

    #@53
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@56
    move-result-object v7

    #@57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v6

    #@5f
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@62
    goto :goto_1

    #@63
    .line 834
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;>;"
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v1

    #@64
    .line 835
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    #@67
    .line 837
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@6a
    .line 838
    const-string/jumbo v6, "++++++++++++++++++++++++++++++++"

    #@6d
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@70
    .line 839
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@73
    .line 840
    const-string/jumbo v6, "TelephonyNetworkFactories:"

    #@76
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@79
    .line 841
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    #@7b
    array-length v7, v6

    #@7c
    :goto_2
    if-ge v5, v7, :cond_2

    #@7e
    aget-object v4, v6, v5

    #@80
    .line 842
    .local v4, "tnf":Landroid/net/NetworkFactory;
    invoke-virtual {v4, p1, p2, p3}, Landroid/net/NetworkFactory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@83
    .line 841
    add-int/lit8 v5, v5, 0x1

    #@85
    goto :goto_2

    #@86
    .line 844
    .end local v4    # "tnf":Landroid/net/NetworkFactory;
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@89
    .line 845
    const-string/jumbo v5, "++++++++++++++++++++++++++++++++"

    #@8c
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8f
    .line 846
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@92
    .line 818
    return-void
.end method

.method executeAllRequests(I)V
    .locals 2
    .param p1, "phoneId"    # I

    #@0
    .prologue
    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "executeAllRequests, phone:"

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
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@17
    .line 337
    const/16 v0, 0x66

    #@19
    const/4 v1, 0x0

    #@1a
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(III)Landroid/os/Message;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    #@21
    .line 335
    return-void
.end method

.method executeRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V
    .locals 2
    .param p1, "request"    # Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    #@0
    .prologue
    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "executeRequest, request= "

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
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@17
    .line 332
    const/16 v0, 0x65

    #@19
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    #@20
    .line 330
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "handleMessage msg="

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
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@17
    .line 278
    iget v0, p1, Landroid/os/Message;->what:I

    #@19
    packed-switch v0, :pswitch_data_0

    #@1c
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v1, "Un-handled message ["

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    iget v1, p1, Landroid/os/Message;->what:I

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    const-string/jumbo v1, "]"

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    #@3c
    .line 276
    :goto_0
    return-void

    #@3d
    .line 280
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->onProcessRequest()V

    #@40
    goto :goto_0

    #@41
    .line 283
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@43
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    #@45
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->onExecuteRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    #@48
    goto :goto_0

    #@49
    .line 286
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@4b
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->onExecuteAllRequests(I)V

    #@4e
    goto :goto_0

    #@4f
    .line 289
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@51
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    #@53
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->onReleaseRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    #@56
    goto :goto_0

    #@57
    .line 292
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@59
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->onReleaseAllRequests(I)V

    #@5c
    goto :goto_0

    #@5d
    .line 295
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@5f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->onRetryAttach(I)V

    #@62
    goto :goto_0

    #@63
    .line 278
    nop

    #@64
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method processRequests()V
    .locals 1

    #@0
    .prologue
    .line 326
    const-string/jumbo v0, "processRequests"

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@6
    .line 327
    const/16 v0, 0x64

    #@8
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(I)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    #@f
    .line 325
    return-void
.end method

.method releaseAllRequests(I)V
    .locals 2
    .param p1, "phoneId"    # I

    #@0
    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "releaseAllRequests, phone:"

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
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@17
    .line 347
    const/16 v0, 0x68

    #@19
    const/4 v1, 0x0

    #@1a
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(III)Landroid/os/Message;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    #@21
    .line 345
    return-void
.end method

.method releaseRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V
    .locals 2
    .param p1, "request"    # Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    #@0
    .prologue
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "releaseRequest, request= "

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
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@17
    .line 342
    const/16 v0, 0x67

    #@19
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    #@20
    .line 340
    return-void
.end method

.method public retryAttach(I)V
    .locals 2
    .param p1, "phoneId"    # I

    #@0
    .prologue
    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "retryAttach, phone:"

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
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    #@17
    .line 352
    const/16 v0, 0x69

    #@19
    const/4 v1, 0x0

    #@1a
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(III)Landroid/os/Message;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    #@21
    .line 350
    return-void
.end method

.method public updatePhoneObject(Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneProxy;

    #@0
    .prologue
    .line 105
    if-nez p1, :cond_0

    #@2
    .line 106
    const-string/jumbo v2, "updatePhoneObject phone = null"

    #@5
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    #@8
    .line 107
    return-void

    #@9
    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    #@f
    .line 111
    .local v1, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    if-nez v1, :cond_1

    #@11
    .line 112
    const-string/jumbo v2, "updatePhoneObject phoneBase = null"

    #@14
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    #@17
    .line 113
    return-void

    #@18
    .line 116
    :cond_1
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    #@1b
    if-ge v0, v2, :cond_2

    #@1d
    .line 117
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    #@1f
    aget-object v2, v2, v0

    #@21
    if-ne v2, p1, :cond_3

    #@23
    .line 118
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->updatePhoneBaseForIndex(ILcom/android/internal/telephony/PhoneBase;)V

    #@26
    .line 104
    :cond_2
    return-void

    #@27
    .line 116
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0
.end method
