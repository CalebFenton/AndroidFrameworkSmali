.class public Lcom/android/internal/telephony/PhoneSwitcher;
.super Landroid/os/Handler;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PhoneSwitcher$1;,
        Lcom/android/internal/telephony/PhoneSwitcher$2;,
        Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;,
        Lcom/android/internal/telephony/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;
    }
.end annotation


# static fields
.field private static final EVENT_DEFAULT_SUBSCRIPTION_CHANGED:I = 0x65

.field private static final EVENT_EMERGENCY_TOGGLE:I = 0x69

.field private static final EVENT_RELEASE_NETWORK:I = 0x68

.field private static final EVENT_REQUEST_NETWORK:I = 0x67

.field private static final EVENT_RESEND_DATA_ALLOWED:I = 0x6a

.field private static final EVENT_SUBSCRIPTION_CHANGED:I = 0x66

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneSwitcher"

.field private static final MAX_LOCAL_LOG_LINES:I = 0x1e

.field private static final REQUESTS_CHANGED:Z = true

.field private static final REQUESTS_UNCHANGED:Z

.field private static final VDBG:Z


# instance fields
.field private final mActivePhoneRegistrants:[Landroid/os/RegistrantList;

.field private final mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mDefaultDataSubscription:I

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mMaxActivePhones:I

.field private final mNumPhones:I

.field private final mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

.field private final mPhoneSubscriptions:[I

.field private final mPhones:[Lcom/android/internal/telephony/Phone;

.field private final mPrioritizedDcRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DcRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

.field private final mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;


# direct methods
.method public constructor <init>(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V
    .locals 9
    .param p1, "maxActivePhones"    # I
    .param p2, "numPhones"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "subscriptionController"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p5, "looper"    # Landroid/os/Looper;
    .param p6, "tr"    # Lcom/android/internal/telephony/ITelephonyRegistry;
    .param p7, "cis"    # [Lcom/android/internal/telephony/CommandsInterface;
    .param p8, "phones"    # [Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 107
    invoke-direct {p0, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@3
    .line 67
    new-instance v5, Ljava/util/ArrayList;

    #@5
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    #@a
    .line 162
    new-instance v5, Lcom/android/internal/telephony/PhoneSwitcher$1;

    #@c
    invoke-direct {v5, p0}, Lcom/android/internal/telephony/PhoneSwitcher$1;-><init>(Lcom/android/internal/telephony/PhoneSwitcher;)V

    #@f
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

    #@11
    .line 171
    new-instance v5, Lcom/android/internal/telephony/PhoneSwitcher$2;

    #@13
    invoke-direct {v5, p0}, Lcom/android/internal/telephony/PhoneSwitcher$2;-><init>(Lcom/android/internal/telephony/PhoneSwitcher;)V

    #@16
    .line 170
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    #@18
    .line 108
    iput-object p3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    #@1a
    .line 109
    iput p2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    #@1c
    .line 110
    move-object/from16 v0, p8

    #@1e
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@20
    .line 111
    new-array v5, p2, [I

    #@22
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    #@24
    .line 112
    iput p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mMaxActivePhones:I

    #@26
    .line 113
    new-instance v5, Landroid/util/LocalLog;

    #@28
    const/16 v6, 0x1e

    #@2a
    invoke-direct {v5, v6}, Landroid/util/LocalLog;-><init>(I)V

    #@2d
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLocalLog:Landroid/util/LocalLog;

    #@2f
    .line 115
    iput-object p4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    #@31
    .line 117
    new-array v5, p2, [Landroid/os/RegistrantList;

    #@33
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    #@35
    .line 118
    new-array v5, p2, [Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    #@37
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    #@39
    .line 119
    const/4 v2, 0x0

    #@3a
    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    #@3c
    .line 120
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    #@3e
    new-instance v6, Landroid/os/RegistrantList;

    #@40
    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    #@43
    aput-object v6, v5, v2

    #@45
    .line 121
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    #@47
    new-instance v6, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    #@49
    const/4 v7, 0x0

    #@4a
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;-><init>(Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;)V

    #@4d
    aput-object v6, v5, v2

    #@4f
    .line 122
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@51
    aget-object v5, v5, v2

    #@53
    if-eqz v5, :cond_0

    #@55
    .line 123
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@57
    aget-object v5, v5, v2

    #@59
    const/16 v6, 0x69

    #@5b
    const/4 v7, 0x0

    #@5c
    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/Phone;->registerForEmergencyCallToggle(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5f
    .line 119
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@61
    goto :goto_0

    #@62
    .line 127
    :cond_1
    move-object/from16 v0, p7

    #@64
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    #@66
    .line 130
    :try_start_0
    const-string/jumbo v5, "PhoneSwitcher"

    #@69
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    #@6b
    invoke-interface {p6, v5, v6}, Lcom/android/internal/telephony/ITelephonyRegistry;->addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6e
    .line 134
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    #@70
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

    #@72
    .line 135
    new-instance v7, Landroid/content/IntentFilter;

    #@74
    const-string/jumbo v8, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    #@77
    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@7a
    .line 134
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@7d
    .line 137
    new-instance v3, Landroid/net/NetworkCapabilities;

    #@7f
    invoke-direct {v3}, Landroid/net/NetworkCapabilities;-><init>()V

    #@82
    .line 138
    .local v3, "netCap":Landroid/net/NetworkCapabilities;
    const/4 v5, 0x0

    #@83
    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    #@86
    .line 139
    const/4 v5, 0x0

    #@87
    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@8a
    .line 140
    const/4 v5, 0x1

    #@8b
    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@8e
    .line 141
    const/4 v5, 0x2

    #@8f
    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@92
    .line 142
    const/4 v5, 0x3

    #@93
    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@96
    .line 143
    const/4 v5, 0x4

    #@97
    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@9a
    .line 144
    const/4 v5, 0x5

    #@9b
    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@9e
    .line 145
    const/4 v5, 0x7

    #@9f
    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@a2
    .line 146
    const/16 v5, 0x8

    #@a4
    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@a7
    .line 147
    const/16 v5, 0x9

    #@a9
    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@ac
    .line 148
    const/16 v5, 0xa

    #@ae
    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@b1
    .line 149
    const/16 v5, 0xd

    #@b3
    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@b6
    .line 150
    const/16 v5, 0xc

    #@b8
    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@bb
    .line 151
    const-string/jumbo v5, "*"

    #@be
    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    #@c1
    .line 153
    new-instance v4, Lcom/android/internal/telephony/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;

    #@c3
    invoke-direct {v4, p5, p3, v3, p0}, Lcom/android/internal/telephony/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/PhoneSwitcher;)V

    #@c6
    .line 156
    .local v4, "networkFactory":Landroid/net/NetworkFactory;
    const/16 v5, 0x65

    #@c8
    invoke-virtual {v4, v5}, Landroid/net/NetworkFactory;->setScoreFilter(I)V

    #@cb
    .line 157
    invoke-virtual {v4}, Landroid/net/NetworkFactory;->register()V

    #@ce
    .line 159
    const-string/jumbo v5, "PhoneSwitcher started"

    #@d1
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    #@d4
    .line 106
    return-void

    #@d5
    .line 131
    .end local v3    # "netCap":Landroid/net/NetworkCapabilities;
    .end local v4    # "networkFactory":Landroid/net/NetworkFactory;
    :catch_0
    move-exception v1

    #@d6
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 91
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    #@c
    .line 162
    new-instance v0, Lcom/android/internal/telephony/PhoneSwitcher$1;

    #@e
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSwitcher$1;-><init>(Lcom/android/internal/telephony/PhoneSwitcher;)V

    #@11
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

    #@13
    .line 171
    new-instance v0, Lcom/android/internal/telephony/PhoneSwitcher$2;

    #@15
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSwitcher$2;-><init>(Lcom/android/internal/telephony/PhoneSwitcher;)V

    #@18
    .line 170
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    #@1a
    .line 92
    iput v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mMaxActivePhones:I

    #@1c
    .line 93
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    #@1e
    .line 94
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    #@20
    .line 95
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    #@22
    .line 96
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    #@24
    .line 97
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    #@26
    .line 98
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@28
    .line 99
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLocalLog:Landroid/util/LocalLog;

    #@2a
    .line 100
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    #@2c
    .line 101
    iput v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    #@2e
    .line 90
    return-void
.end method

.method private activate(I)V
    .locals 5
    .param p1, "phoneId"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 347
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    #@3
    aget-object v0, v1, p1

    #@5
    .line 348
    .local v0, "state":Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;
    iget-boolean v1, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    return-void

    #@a
    .line 349
    :cond_0
    iput-boolean v4, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    #@c
    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "activate "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    #@23
    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@26
    move-result-wide v2

    #@27
    iput-wide v2, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->lastRequested:J

    #@29
    .line 352
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    #@2b
    aget-object v1, v1, p1

    #@2d
    const/4 v2, 0x0

    #@2e
    invoke-interface {v1, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    #@31
    .line 353
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    #@33
    aget-object v1, v1, p1

    #@35
    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@38
    .line 346
    return-void
.end method

.method private deactivate(I)V
    .locals 5
    .param p1, "phoneId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 337
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    #@3
    aget-object v0, v1, p1

    #@5
    .line 338
    .local v0, "state":Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;
    iget-boolean v1, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    #@7
    if-nez v1, :cond_0

    #@9
    return-void

    #@a
    .line 339
    :cond_0
    iput-boolean v4, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    #@c
    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "deactivate "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    #@23
    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@26
    move-result-wide v2

    #@27
    iput-wide v2, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->lastRequested:J

    #@29
    .line 342
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    #@2b
    aget-object v1, v1, p1

    #@2d
    const/4 v2, 0x0

    #@2e
    invoke-interface {v1, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    #@31
    .line 343
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    #@33
    aget-object v1, v1, p1

    #@35
    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@38
    .line 336
    return-void
.end method

.method private isEmergency()Z
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 210
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    #@3
    array-length v4, v3

    #@4
    move v1, v2

    #@5
    :goto_0
    if-ge v1, v4, :cond_3

    #@7
    aget-object v0, v3, v1

    #@9
    .line 211
    .local v0, "p":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_1

    #@b
    .line 210
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@d
    goto :goto_0

    #@e
    .line 212
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    #@11
    move-result v5

    #@12
    if-nez v5, :cond_2

    #@14
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isInEmergencyCall()Z

    #@17
    move-result v5

    #@18
    if-eqz v5, :cond_0

    #@1a
    :cond_2
    const/4 v1, 0x1

    #@1b
    return v1

    #@1c
    .line 214
    .end local v0    # "p":Lcom/android/internal/telephony/Phone;
    :cond_3
    return v2
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "l"    # Ljava/lang/String;

    #@0
    .prologue
    .line 415
    const-string/jumbo v0, "PhoneSwitcher"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 416
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLocalLog:Landroid/util/LocalLog;

    #@8
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@b
    .line 414
    return-void
.end method

.method private onEvaluate(ZLjava/lang/String;)V
    .locals 13
    .param p1, "requestsChanged"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 271
    new-instance v9, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v9, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@5
    .line 272
    .local v9, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->isEmergency()Z

    #@8
    move-result v11

    #@9
    if-eqz v11, :cond_0

    #@b
    .line 273
    const-string/jumbo v11, "onEvalute aborted due to Emergency"

    #@e
    invoke-direct {p0, v11}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    #@11
    .line 274
    return-void

    #@12
    .line 277
    :cond_0
    move v3, p1

    #@13
    .line 278
    .local v3, "diffDetected":Z
    iget-object v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    #@15
    invoke-virtual {v11}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    #@18
    move-result v0

    #@19
    .line 279
    .local v0, "dataSub":I
    iget v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataSubscription:I

    #@1b
    if-eq v0, v11, :cond_1

    #@1d
    .line 280
    const-string/jumbo v11, " default "

    #@20
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v11

    #@24
    iget v12, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataSubscription:I

    #@26
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v11

    #@2a
    const-string/jumbo v12, "->"

    #@2d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v11

    #@31
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    .line 281
    iput v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataSubscription:I

    #@36
    .line 282
    const/4 v3, 0x1

    #@37
    .line 286
    .end local v3    # "diffDetected":Z
    :cond_1
    const/4 v4, 0x0

    #@38
    .local v4, "i":I
    :goto_0
    iget v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    #@3a
    if-ge v4, v11, :cond_3

    #@3c
    .line 287
    iget-object v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    #@3e
    invoke-virtual {v11, v4}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    #@41
    move-result v10

    #@42
    .line 288
    .local v10, "sub":I
    iget-object v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    #@44
    aget v11, v11, v4

    #@46
    if-eq v10, v11, :cond_2

    #@48
    .line 289
    const-string/jumbo v11, " phone["

    #@4b
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v11

    #@4f
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v11

    #@53
    const-string/jumbo v12, "] "

    #@56
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v11

    #@5a
    iget-object v12, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    #@5c
    aget v12, v12, v4

    #@5e
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    .line 290
    const-string/jumbo v11, "->"

    #@64
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v11

    #@68
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6b
    .line 291
    iget-object v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    #@6d
    aput v10, v11, v4

    #@6f
    .line 292
    const/4 v3, 0x1

    #@70
    .line 286
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@72
    goto :goto_0

    #@73
    .line 296
    .end local v10    # "sub":I
    :cond_3
    if-eqz v3, :cond_8

    #@75
    .line 297
    new-instance v11, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v12, "evaluating due to "

    #@7d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v11

    #@81
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v12

    #@85
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v11

    #@89
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v11

    #@8d
    invoke-direct {p0, v11}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    #@90
    .line 299
    new-instance v5, Ljava/util/ArrayList;

    #@92
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@95
    .line 301
    .local v5, "newActivePhones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    #@97
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9a
    move-result-object v2

    #@9b
    .local v2, "dcRequest$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@9e
    move-result v11

    #@9f
    if-eqz v11, :cond_5

    #@a1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a4
    move-result-object v1

    #@a5
    check-cast v1, Lcom/android/internal/telephony/dataconnection/DcRequest;

    #@a7
    .line 302
    .local v1, "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    iget-object v11, v1, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    #@a9
    invoke-direct {p0, v11}, Lcom/android/internal/telephony/PhoneSwitcher;->phoneIdForRequest(Landroid/net/NetworkRequest;)I

    #@ac
    move-result v8

    #@ad
    .line 303
    .local v8, "phoneIdForRequest":I
    const/4 v11, -0x1

    #@ae
    if-eq v8, v11, :cond_4

    #@b0
    .line 304
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b3
    move-result-object v11

    #@b4
    invoke-interface {v5, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@b7
    move-result v11

    #@b8
    if-nez v11, :cond_4

    #@ba
    .line 305
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bd
    move-result-object v11

    #@be
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@c1
    .line 306
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@c4
    move-result v11

    #@c5
    iget v12, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mMaxActivePhones:I

    #@c7
    if-lt v11, v12, :cond_4

    #@c9
    .line 318
    .end local v1    # "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    .end local v8    # "phoneIdForRequest":I
    :cond_5
    const/4 v6, 0x0

    #@ca
    .local v6, "phoneId":I
    :goto_1
    iget v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    #@cc
    if-ge v6, v11, :cond_7

    #@ce
    .line 319
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d1
    move-result-object v11

    #@d2
    invoke-interface {v5, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@d5
    move-result v11

    #@d6
    if-nez v11, :cond_6

    #@d8
    .line 320
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/PhoneSwitcher;->deactivate(I)V

    #@db
    .line 318
    :cond_6
    add-int/lit8 v6, v6, 0x1

    #@dd
    goto :goto_1

    #@de
    .line 325
    :cond_7
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e1
    move-result-object v7

    #@e2
    .local v7, "phoneId$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@e5
    move-result v11

    #@e6
    if-eqz v11, :cond_8

    #@e8
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@eb
    move-result-object v11

    #@ec
    check-cast v11, Ljava/lang/Integer;

    #@ee
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    #@f1
    move-result v6

    #@f2
    .line 326
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/PhoneSwitcher;->activate(I)V

    #@f5
    goto :goto_2

    #@f6
    .line 270
    .end local v2    # "dcRequest$iterator":Ljava/util/Iterator;
    .end local v5    # "newActivePhones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "phoneId":I
    .end local v7    # "phoneId$iterator":Ljava/util/Iterator;
    :cond_8
    return-void
.end method

.method private onReleaseNetwork(Landroid/net/NetworkRequest;)V
    .locals 3
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 252
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcRequest;

    #@2
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    #@4
    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DcRequest;-><init>(Landroid/net/NetworkRequest;Landroid/content/Context;)V

    #@7
    .line 254
    .local v0, "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    #@9
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 255
    const-string/jumbo v1, "netReleased"

    #@12
    const/4 v2, 0x1

    #@13
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)V

    #@16
    .line 251
    :cond_0
    return-void
.end method

.method private onRequestNetwork(Landroid/net/NetworkRequest;)V
    .locals 3
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 243
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcRequest;

    #@2
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    #@4
    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DcRequest;-><init>(Landroid/net/NetworkRequest;Landroid/content/Context;)V

    #@7
    .line 244
    .local v0, "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    #@9
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    .line 245
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    #@11
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@14
    .line 246
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    #@16
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@19
    .line 247
    const-string/jumbo v1, "netRequest"

    #@1c
    const/4 v2, 0x1

    #@1d
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)V

    #@20
    .line 242
    :cond_0
    return-void
.end method

.method private onResendDataAllowed(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 366
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@2
    .line 367
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    #@4
    aget-object v1, v1, v0

    #@6
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    #@8
    aget-object v2, v2, v0

    #@a
    iget-boolean v2, v2, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    #@c
    const/4 v3, 0x0

    #@d
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    #@10
    .line 365
    return-void
.end method

.method private phoneIdForRequest(Landroid/net/NetworkRequest;)I
    .locals 5
    .param p1, "netRequest"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 371
    iget-object v4, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@2
    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 374
    .local v2, "specifier":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_0

    #@c
    .line 375
    iget v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataSubscription:I

    #@e
    .line 379
    .local v3, "subId":I
    :goto_0
    const/4 v1, -0x1

    #@f
    .line 380
    .local v1, "phoneId":I
    const/4 v4, -0x1

    #@10
    if-ne v3, v4, :cond_1

    #@12
    return v1

    #@13
    .line 377
    .end local v1    # "phoneId":I
    .end local v3    # "subId":I
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@16
    move-result v3

    #@17
    .restart local v3    # "subId":I
    goto :goto_0

    #@18
    .line 382
    .restart local v1    # "phoneId":I
    :cond_1
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_1
    iget v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    #@1b
    if-ge v0, v4, :cond_2

    #@1d
    .line 383
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    #@1f
    aget v4, v4, v0

    #@21
    if-ne v4, v3, :cond_3

    #@23
    .line 384
    move v1, v0

    #@24
    .line 388
    :cond_2
    return v1

    #@25
    .line 382
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_1
.end method

.method private validatePhoneId(I)V
    .locals 2
    .param p1, "phoneId"    # I

    #@0
    .prologue
    .line 409
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 410
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Invalid PhoneId"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 408
    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 420
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    #@2
    const-string/jumbo v4, "  "

    #@5
    invoke-direct {v3, p2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@8
    .line 421
    .local v3, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string/jumbo v4, "PhoneSwitcher:"

    #@b
    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@e
    .line 422
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@11
    move-result-object v0

    #@12
    .line 423
    .local v0, "c":Ljava/util/Calendar;
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    #@15
    if-ge v1, v4, :cond_1

    #@17
    .line 424
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    #@19
    aget-object v2, v4, v1

    #@1b
    .line 425
    .local v2, "ps":Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;
    iget-wide v4, v2, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->lastRequested:J

    #@1d
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@20
    .line 426
    new-instance v4, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v5, "PhoneId("

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    const-string/jumbo v5, ") active="

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    iget-boolean v5, v2, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    #@39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    const-string/jumbo v5, ", lastRequest="

    #@40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    .line 427
    iget-wide v6, v2, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->lastRequested:J

    #@46
    const-wide/16 v8, 0x0

    #@48
    cmp-long v4, v6, v8

    #@4a
    if-nez v4, :cond_0

    #@4c
    const-string/jumbo v4, "never"

    #@4f
    .line 426
    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@5a
    .line 423
    add-int/lit8 v1, v1, 0x1

    #@5c
    goto :goto_0

    #@5d
    .line 428
    :cond_0
    const-string/jumbo v4, "%tm-%td %tH:%tM:%tS.%tL"

    #@60
    const/4 v6, 0x6

    #@61
    new-array v6, v6, [Ljava/lang/Object;

    #@63
    const/4 v7, 0x0

    #@64
    aput-object v0, v6, v7

    #@66
    const/4 v7, 0x1

    #@67
    aput-object v0, v6, v7

    #@69
    const/4 v7, 0x2

    #@6a
    aput-object v0, v6, v7

    #@6c
    const/4 v7, 0x3

    #@6d
    aput-object v0, v6, v7

    #@6f
    const/4 v7, 0x4

    #@70
    aput-object v0, v6, v7

    #@72
    const/4 v7, 0x5

    #@73
    aput-object v0, v6, v7

    #@75
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@78
    move-result-object v4

    #@79
    goto :goto_1

    #@7a
    .line 430
    .end local v2    # "ps":Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@7d
    .line 431
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLocalLog:Landroid/util/LocalLog;

    #@7f
    invoke-virtual {v4, p1, v3, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@82
    .line 432
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@85
    .line 419
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 181
    iget v0, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v0, :pswitch_data_0

    #@6
    .line 180
    :goto_0
    return-void

    #@7
    .line 183
    :pswitch_0
    const-string/jumbo v0, "subChanged"

    #@a
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)V

    #@d
    goto :goto_0

    #@e
    .line 187
    :pswitch_1
    const-string/jumbo v0, "defaultChanged"

    #@11
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)V

    #@14
    goto :goto_0

    #@15
    .line 191
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@17
    check-cast v0, Landroid/net/NetworkRequest;

    #@19
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->onRequestNetwork(Landroid/net/NetworkRequest;)V

    #@1c
    goto :goto_0

    #@1d
    .line 195
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1f
    check-cast v0, Landroid/net/NetworkRequest;

    #@21
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->onReleaseNetwork(Landroid/net/NetworkRequest;)V

    #@24
    goto :goto_0

    #@25
    .line 199
    :pswitch_4
    const-string/jumbo v0, "emergencyToggle"

    #@28
    const/4 v1, 0x1

    #@29
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)V

    #@2c
    goto :goto_0

    #@2d
    .line 203
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->onResendDataAllowed(Landroid/os/Message;)V

    #@30
    goto :goto_0

    #@31
    .line 181
    nop

    #@32
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isPhoneActive(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    #@0
    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->validatePhoneId(I)V

    #@3
    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    #@5
    aget-object v0, v0, p1

    #@7
    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    #@9
    return v0
.end method

.method public registerForActivePhoneSwitch(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->validatePhoneId(I)V

    #@3
    .line 398
    new-instance v0, Landroid/os/Registrant;

    #@5
    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 399
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    #@a
    aget-object v1, v1, p1

    #@c
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@f
    .line 400
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    #@12
    .line 396
    return-void
.end method

.method public resendDataAllowed(I)V
    .locals 2
    .param p1, "phoneId"    # I

    #@0
    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->validatePhoneId(I)V

    #@3
    .line 360
    const/16 v1, 0x6a

    #@5
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    .line 361
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    #@b
    .line 362
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 358
    return-void
.end method

.method public unregisterForActivePhoneSwitch(ILandroid/os/Handler;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 404
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->validatePhoneId(I)V

    #@3
    .line 405
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    #@5
    aget-object v0, v0, p1

    #@7
    invoke-virtual {v0, p2}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@a
    .line 403
    return-void
.end method
