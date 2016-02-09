.class Lcom/android/server/TelephonyRegistry;
.super Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TelephonyRegistry$Record;,
        Lcom/android/server/TelephonyRegistry$LogSSC;,
        Lcom/android/server/TelephonyRegistry$1;,
        Lcom/android/server/TelephonyRegistry$2;
    }
.end annotation


# static fields
.field static final CHECK_PHONE_STATE_PERMISSION_MASK:I = 0xe0

.field private static final DBG:Z = false

.field private static final DBG_LOC:Z = false

.field static final ENFORCE_PHONE_STATE_PERMISSION_MASK:I = 0x400c

.field private static final MSG_UPDATE_DEFAULT_SUB:I = 0x2

.field private static final MSG_USER_SWITCHED:I = 0x1

.field static final PRECISE_PHONE_STATE_PERMISSION_MASK:I = 0x1800

.field private static final TAG:Ljava/lang/String; = "TelephonyRegistry"

.field private static final VDBG:Z


# instance fields
.field private hasNotifySubscriptionInfoChangedOccurred:Z

.field private logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mBackgroundCallState:I

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallForwarding:[Z

.field private mCallIncomingNumber:[Ljava/lang/String;

.field private mCallState:[I

.field private mCarrierNetworkChangeState:Z

.field private mCellInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCellLocation:[Landroid/os/Bundle;

.field private mConnectedApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDataActivity:[I

.field private mDataConnectionApn:[Ljava/lang/String;

.field private mDataConnectionLinkProperties:[Landroid/net/LinkProperties;

.field private mDataConnectionNetworkCapabilities:[Landroid/net/NetworkCapabilities;

.field private mDataConnectionNetworkType:[I

.field private mDataConnectionPossible:[Z

.field private mDataConnectionReason:[Ljava/lang/String;

.field private mDataConnectionState:[I

.field private mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

.field private mDefaultPhoneId:I

.field private mDefaultSubId:I

.field private mForegroundCallState:I

.field private final mHandler:Landroid/os/Handler;

.field private mMessageWaiting:[Z

.field private mNumPhones:I

.field private mOtaspMode:I

.field private mPreciseCallState:Landroid/telephony/PreciseCallState;

.field private mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TelephonyRegistry$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mRingingCallState:I

.field private mServiceState:[Landroid/telephony/ServiceState;

.field private mSignalStrength:[Landroid/telephony/SignalStrength;

.field private mVoLteServiceState:Landroid/telephony/VoLteServiceState;

.field private next:I


# direct methods
.method static synthetic -get0(Lcom/android/server/TelephonyRegistry;)[Landroid/os/Bundle;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/TelephonyRegistry;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/TelephonyRegistry;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/TelephonyRegistry;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/TelephonyRegistry;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/TelephonyRegistry;I)Z
    .locals 1
    .param p1, "phoneId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$Record;I)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "phoneId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->checkPossibleMissNotify(Lcom/android/server/TelephonyRegistry$Record;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/TelephonyRegistry;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, -0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 290
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    #@6
    .line 129
    new-instance v3, Ljava/util/ArrayList;

    #@8
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@d
    .line 130
    new-instance v3, Ljava/util/ArrayList;

    #@f
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@14
    .line 136
    iput-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->hasNotifySubscriptionInfoChangedOccurred:Z

    #@16
    .line 172
    const/4 v3, 0x1

    #@17
    iput v3, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    #@19
    .line 174
    iput-object v7, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    #@1b
    .line 176
    new-instance v3, Landroid/telephony/VoLteServiceState;

    #@1d
    invoke-direct {v3}, Landroid/telephony/VoLteServiceState;-><init>()V

    #@20
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mVoLteServiceState:Landroid/telephony/VoLteServiceState;

    #@22
    .line 178
    iput v6, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    #@24
    .line 180
    iput v6, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    #@26
    .line 182
    new-instance v3, Landroid/telephony/DataConnectionRealTimeInfo;

    #@28
    invoke-direct {v3}, Landroid/telephony/DataConnectionRealTimeInfo;-><init>()V

    #@2b
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

    #@2d
    .line 184
    iput v5, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:I

    #@2f
    .line 186
    iput v5, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:I

    #@31
    .line 188
    iput v5, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:I

    #@33
    .line 190
    new-instance v3, Landroid/telephony/PreciseCallState;

    #@35
    invoke-direct {v3}, Landroid/telephony/PreciseCallState;-><init>()V

    #@38
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    #@3a
    .line 192
    iput-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:Z

    #@3c
    .line 195
    new-instance v3, Landroid/telephony/PreciseDataConnectionState;

    #@3e
    invoke-direct {v3}, Landroid/telephony/PreciseDataConnectionState;-><init>()V

    #@41
    .line 194
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    #@43
    .line 214
    new-instance v3, Lcom/android/server/TelephonyRegistry$1;

    #@45
    invoke-direct {v3, p0}, Lcom/android/server/TelephonyRegistry$1;-><init>(Lcom/android/server/TelephonyRegistry;)V

    #@48
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    #@4a
    .line 254
    new-instance v3, Lcom/android/server/TelephonyRegistry$2;

    #@4c
    invoke-direct {v3, p0}, Lcom/android/server/TelephonyRegistry$2;-><init>(Lcom/android/server/TelephonyRegistry;)V

    #@4f
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@51
    .line 1672
    const/16 v3, 0xa

    #@53
    new-array v3, v3, [Lcom/android/server/TelephonyRegistry$LogSSC;

    #@55
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    #@57
    .line 1673
    iput v5, p0, Lcom/android/server/TelephonyRegistry;->next:I

    #@59
    .line 291
    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    #@5c
    move-result-object v1

    #@5d
    .line 293
    .local v1, "location":Landroid/telephony/CellLocation;
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    #@5f
    .line 294
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    #@62
    move-result-object v3

    #@63
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@65
    .line 295
    new-instance v3, Ljava/util/ArrayList;

    #@67
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@6a
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    #@6c
    .line 297
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    #@73
    move-result v2

    #@74
    .line 299
    .local v2, "numPhones":I
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    #@76
    .line 300
    new-array v3, v2, [I

    #@78
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    #@7a
    .line 301
    new-array v3, v2, [I

    #@7c
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    #@7e
    .line 302
    new-array v3, v2, [I

    #@80
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    #@82
    .line 303
    new-array v3, v2, [I

    #@84
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    #@86
    .line 304
    new-array v3, v2, [Ljava/lang/String;

    #@88
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    #@8a
    .line 305
    new-array v3, v2, [Landroid/telephony/ServiceState;

    #@8c
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    #@8e
    .line 306
    new-array v3, v2, [Landroid/telephony/SignalStrength;

    #@90
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    #@92
    .line 307
    new-array v3, v2, [Z

    #@94
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    #@96
    .line 308
    new-array v3, v2, [Z

    #@98
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:[Z

    #@9a
    .line 309
    new-array v3, v2, [Ljava/lang/String;

    #@9c
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:[Ljava/lang/String;

    #@9e
    .line 310
    new-array v3, v2, [Ljava/lang/String;

    #@a0
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:[Ljava/lang/String;

    #@a2
    .line 311
    new-array v3, v2, [Z

    #@a4
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    #@a6
    .line 312
    new-array v3, v2, [Landroid/os/Bundle;

    #@a8
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    #@aa
    .line 313
    new-array v3, v2, [Landroid/net/LinkProperties;

    #@ac
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:[Landroid/net/LinkProperties;

    #@ae
    .line 314
    new-array v3, v2, [Landroid/net/NetworkCapabilities;

    #@b0
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkCapabilities:[Landroid/net/NetworkCapabilities;

    #@b2
    .line 315
    new-instance v3, Ljava/util/ArrayList;

    #@b4
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@b7
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    #@b9
    .line 316
    const/4 v0, 0x0

    #@ba
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@bc
    .line 317
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    #@be
    aput v5, v3, v0

    #@c0
    .line 318
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    #@c2
    aput v5, v3, v0

    #@c4
    .line 319
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    #@c6
    aput v6, v3, v0

    #@c8
    .line 320
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    #@ca
    const-string/jumbo v4, ""

    #@cd
    aput-object v4, v3, v0

    #@cf
    .line 321
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    #@d1
    new-instance v4, Landroid/telephony/ServiceState;

    #@d3
    invoke-direct {v4}, Landroid/telephony/ServiceState;-><init>()V

    #@d6
    aput-object v4, v3, v0

    #@d8
    .line 322
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    #@da
    new-instance v4, Landroid/telephony/SignalStrength;

    #@dc
    invoke-direct {v4}, Landroid/telephony/SignalStrength;-><init>()V

    #@df
    aput-object v4, v3, v0

    #@e1
    .line 323
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    #@e3
    aput-boolean v5, v3, v0

    #@e5
    .line 324
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    #@e7
    aput-boolean v5, v3, v0

    #@e9
    .line 325
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:[Z

    #@eb
    aput-boolean v5, v3, v0

    #@ed
    .line 326
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:[Ljava/lang/String;

    #@ef
    const-string/jumbo v4, ""

    #@f2
    aput-object v4, v3, v0

    #@f4
    .line 327
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:[Ljava/lang/String;

    #@f6
    const-string/jumbo v4, ""

    #@f9
    aput-object v4, v3, v0

    #@fb
    .line 328
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    #@fd
    new-instance v4, Landroid/os/Bundle;

    #@ff
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #@102
    aput-object v4, v3, v0

    #@104
    .line 329
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    #@106
    invoke-virtual {v3, v0, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@109
    .line 316
    add-int/lit8 v0, v0, 0x1

    #@10b
    goto :goto_0

    #@10c
    .line 334
    :cond_0
    if-eqz v1, :cond_1

    #@10e
    .line 335
    const/4 v0, 0x0

    #@10f
    :goto_1
    if-ge v0, v2, :cond_1

    #@111
    .line 336
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    #@113
    aget-object v3, v3, v0

    #@115
    invoke-virtual {v1, v3}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    #@118
    .line 335
    add-int/lit8 v0, v0, 0x1

    #@11a
    goto :goto_1

    #@11b
    .line 339
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    #@11d
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@120
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    #@122
    .line 341
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    #@124
    const-class v4, Landroid/app/AppOpsManager;

    #@126
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@129
    move-result-object v3

    #@12a
    check-cast v3, Landroid/app/AppOpsManager;

    #@12c
    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    #@12e
    .line 290
    return-void
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;I)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "subId"    # I

    #@0
    .prologue
    .line 1430
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 1432
    .local v2, "ident":J
    if-nez p1, :cond_2

    #@6
    .line 1433
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@8
    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 1440
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@e
    .line 1443
    :goto_1
    new-instance v1, Landroid/content/Intent;

    #@10
    const-string/jumbo v4, "android.intent.action.PHONE_STATE"

    #@13
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@16
    .line 1444
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "state"

    #@19
    .line 1445
    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    .line 1444
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@24
    .line 1446
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@27
    move-result v4

    #@28
    if-nez v4, :cond_0

    #@2a
    .line 1447
    const-string/jumbo v4, "incoming_number"

    #@2d
    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@30
    .line 1452
    :cond_0
    const/4 v4, -0x1

    #@31
    if-eq p3, v4, :cond_1

    #@33
    .line 1453
    const-string/jumbo v4, "android.intent.action.SUBSCRIPTION_PHONE_STATE"

    #@36
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@39
    .line 1454
    const-string/jumbo v4, "subscription"

    #@3c
    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@3f
    .line 1459
    :cond_1
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    #@41
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@43
    .line 1460
    const-string/jumbo v6, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    #@46
    .line 1459
    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    #@49
    .line 1461
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    #@4b
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@4d
    .line 1462
    const-string/jumbo v6, "android.permission.READ_PHONE_STATE"

    #@50
    .line 1463
    const/16 v7, 0x33

    #@52
    .line 1461
    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V

    #@55
    .line 1429
    return-void

    #@56
    .line 1435
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@58
    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5b
    goto :goto_0

    #@5c
    .line 1437
    :catch_0
    move-exception v0

    #@5d
    .line 1440
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@60
    goto :goto_1

    #@61
    .line 1439
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@62
    .line 1440
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@65
    .line 1439
    throw v4
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "subId"    # I

    #@0
    .prologue
    .line 1502
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.action.DATA_CONNECTION_FAILED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1503
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "reason"

    #@b
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@e
    .line 1504
    const-string/jumbo v1, "apnType"

    #@11
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@14
    .line 1505
    const-string/jumbo v1, "subscription"

    #@17
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@1a
    .line 1506
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    #@1c
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@1e
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@21
    .line 1501
    return-void
.end method

.method private broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ZI)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p8, "roaming"    # Z
    .param p9, "subId"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1473
    new-instance v1, Landroid/content/Intent;

    #@3
    const-string/jumbo v2, "android.intent.action.ANY_DATA_STATE"

    #@6
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@9
    .line 1474
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "state"

    #@c
    .line 1475
    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$DataState;->toString()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    .line 1474
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@17
    .line 1476
    if-nez p2, :cond_0

    #@19
    .line 1477
    const-string/jumbo v2, "networkUnvailable"

    #@1c
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@1f
    .line 1479
    :cond_0
    if-eqz p3, :cond_1

    #@21
    .line 1480
    const-string/jumbo v2, "reason"

    #@24
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@27
    .line 1482
    :cond_1
    if-eqz p6, :cond_2

    #@29
    .line 1483
    const-string/jumbo v2, "linkProperties"

    #@2c
    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@2f
    .line 1484
    invoke-virtual {p6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    .line 1485
    .local v0, "iface":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@35
    .line 1486
    const-string/jumbo v2, "iface"

    #@38
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3b
    .line 1489
    .end local v0    # "iface":Ljava/lang/String;
    :cond_2
    if-eqz p7, :cond_3

    #@3d
    .line 1490
    const-string/jumbo v2, "networkCapabilities"

    #@40
    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@43
    .line 1492
    :cond_3
    if-eqz p8, :cond_4

    #@45
    const-string/jumbo v2, "networkRoaming"

    #@48
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@4b
    .line 1494
    :cond_4
    const-string/jumbo v2, "apn"

    #@4e
    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@51
    .line 1495
    const-string/jumbo v2, "apnType"

    #@54
    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@57
    .line 1496
    const-string/jumbo v2, "subscription"

    #@5a
    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@5d
    .line 1497
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    #@5f
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@61
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@64
    .line 1469
    return-void
.end method

.method private broadcastPreciseCallStateChanged(IIIII)V
    .locals 4
    .param p1, "ringingCallState"    # I
    .param p2, "foregroundCallState"    # I
    .param p3, "backgroundCallState"    # I
    .param p4, "disconnectCause"    # I
    .param p5, "preciseDisconnectCause"    # I

    #@0
    .prologue
    .line 1511
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.action.PRECISE_CALL_STATE"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1512
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "ringing_state"

    #@b
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@e
    .line 1513
    const-string/jumbo v1, "foreground_state"

    #@11
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@14
    .line 1514
    const-string/jumbo v1, "background_state"

    #@17
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@1a
    .line 1515
    const-string/jumbo v1, "disconnect_cause"

    #@1d
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@20
    .line 1516
    const-string/jumbo v1, "precise_disconnect_cause"

    #@23
    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@26
    .line 1517
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    #@28
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@2a
    .line 1518
    const-string/jumbo v3, "android.permission.READ_PRECISE_PHONE_STATE"

    #@2d
    .line 1517
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    #@30
    .line 1510
    return-void
.end method

.method private broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "networkType"    # I
    .param p3, "apnType"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "failCause"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1524
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1525
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "state"

    #@b
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@e
    .line 1526
    const-string/jumbo v1, "networkType"

    #@11
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@14
    .line 1527
    if-eqz p5, :cond_0

    #@16
    const-string/jumbo v1, "reason"

    #@19
    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1c
    .line 1528
    :cond_0
    if-eqz p3, :cond_1

    #@1e
    const-string/jumbo v1, "apnType"

    #@21
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@24
    .line 1529
    :cond_1
    if-eqz p4, :cond_2

    #@26
    const-string/jumbo v1, "apn"

    #@29
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@2c
    .line 1530
    :cond_2
    if-eqz p6, :cond_3

    #@2e
    .line 1531
    const-string/jumbo v1, "linkProperties"

    #@31
    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@34
    .line 1533
    :cond_3
    if-eqz p7, :cond_4

    #@36
    const-string/jumbo v1, "failCause"

    #@39
    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3c
    .line 1535
    :cond_4
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    #@3e
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@40
    .line 1536
    const-string/jumbo v3, "android.permission.READ_PRECISE_PHONE_STATE"

    #@43
    .line 1535
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    #@46
    .line 1523
    return-void
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V
    .locals 7
    .param p1, "state"    # Landroid/telephony/ServiceState;
    .param p2, "subId"    # I

    #@0
    .prologue
    .line 1386
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 1388
    .local v2, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@6
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    #@9
    move-result v6

    #@a
    invoke-interface {v5, v6}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 1392
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@10
    .line 1395
    :goto_0
    new-instance v1, Landroid/content/Intent;

    #@12
    const-string/jumbo v5, "android.intent.action.SERVICE_STATE"

    #@15
    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@18
    .line 1396
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    #@1a
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@1d
    .line 1397
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    #@20
    .line 1398
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@23
    .line 1400
    const-string/jumbo v5, "subscription"

    #@26
    invoke-virtual {v1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@29
    .line 1401
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    #@2b
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@2d
    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@30
    .line 1385
    return-void

    #@31
    .line 1389
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    #@32
    .line 1392
    .local v4, "re":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@35
    goto :goto_0

    #@36
    .line 1391
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    #@37
    .line 1392
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3a
    .line 1391
    throw v5
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V
    .locals 7
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p2, "subId"    # I

    #@0
    .prologue
    .line 1405
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 1407
    .local v2, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@6
    invoke-interface {v5, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 1411
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c
    .line 1414
    :goto_0
    new-instance v4, Landroid/content/Intent;

    #@e
    const-string/jumbo v5, "android.intent.action.SIG_STR"

    #@11
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@14
    .line 1415
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v5, 0x20000000

    #@16
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@19
    .line 1416
    new-instance v0, Landroid/os/Bundle;

    #@1b
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@1e
    .line 1417
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    #@21
    .line 1418
    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@24
    .line 1419
    const-string/jumbo v5, "subscription"

    #@27
    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@2a
    .line 1420
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    #@2c
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@2e
    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@31
    .line 1404
    return-void

    #@32
    .line 1408
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    #@33
    .line 1411
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@36
    goto :goto_0

    #@37
    .line 1410
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    #@38
    .line 1411
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3b
    .line 1410
    throw v5
.end method

.method private canReadPhoneState(Ljava/lang/String;)Z
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 665
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    #@3
    .line 666
    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    #@6
    .line 665
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 669
    const/4 v1, 0x1

    #@d
    return v1

    #@e
    .line 671
    :cond_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    #@10
    .line 672
    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    #@13
    .line 671
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_1

    #@19
    const/4 v0, 0x1

    #@1a
    .line 673
    .local v0, "canReadPhoneState":Z
    :goto_0
    if-eqz v0, :cond_2

    #@1c
    .line 674
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    #@1e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@21
    move-result v2

    #@22
    const/16 v3, 0x33

    #@24
    invoke-virtual {v1, v3, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_2

    #@2a
    .line 676
    return v4

    #@2b
    .line 671
    .end local v0    # "canReadPhoneState":Z
    :cond_1
    const/4 v0, 0x0

    #@2c
    .restart local v0    # "canReadPhoneState":Z
    goto :goto_0

    #@2d
    .line 678
    :cond_2
    return v0
.end method

.method private checkListenerPermission(I)V
    .locals 5
    .param p1, "events"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1579
    and-int/lit8 v1, p1, 0x10

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1580
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    #@7
    .line 1581
    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    #@a
    .line 1580
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 1585
    :cond_0
    and-int/lit16 v1, p1, 0x400

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 1586
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    #@13
    .line 1587
    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    #@16
    .line 1586
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    .line 1591
    :cond_1
    and-int/lit16 v1, p1, 0x400c

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 1593
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    #@1f
    .line 1594
    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    #@22
    const/4 v3, 0x0

    #@23
    .line 1593
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 1603
    :cond_2
    :goto_0
    and-int/lit16 v1, p1, 0x1800

    #@28
    if-eqz v1, :cond_3

    #@2a
    .line 1604
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    #@2c
    .line 1605
    const-string/jumbo v2, "android.permission.READ_PRECISE_PHONE_STATE"

    #@2f
    .line 1604
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@32
    .line 1609
    :cond_3
    const v1, 0x8000

    #@35
    and-int/2addr v1, p1

    #@36
    if-eqz v1, :cond_4

    #@38
    .line 1610
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    #@3a
    .line 1611
    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    #@3d
    .line 1610
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@40
    .line 1578
    :cond_4
    return-void

    #@41
    .line 1597
    :catch_0
    move-exception v0

    #@42
    .line 1598
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    #@44
    .line 1599
    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    #@47
    .line 1598
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@4a
    goto :goto_0
.end method

.method private checkNotifyPermission()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1558
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    #@6
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :cond_0
    return v0
.end method

.method private checkNotifyPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1548
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1549
    const/4 v1, 0x1

    #@7
    return v1

    #@8
    .line 1551
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Modify Phone State Permission Denial: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, " from pid="

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 1552
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@22
    move-result v2

    #@23
    .line 1551
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 1552
    const-string/jumbo v2, ", uid="

    #@2a
    .line 1551
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 1552
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@31
    move-result v2

    #@32
    .line 1551
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    .line 1554
    .local v0, "msg":Ljava/lang/String;
    const/4 v1, 0x0

    #@3b
    return v1
.end method

.method private checkPossibleMissNotify(Lcom/android/server/TelephonyRegistry$Record;I)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "phoneId"    # I

    #@0
    .prologue
    .line 1725
    iget v0, p1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    #@2
    .line 1727
    .local v0, "events":I
    and-int/lit8 v4, v0, 0x1

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 1731
    :try_start_0
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@8
    .line 1732
    new-instance v5, Landroid/telephony/ServiceState;

    #@a
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    #@c
    aget-object v6, v6, p2

    #@e
    invoke-direct {v5, v6}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    #@11
    .line 1731
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 1738
    :cond_0
    :goto_0
    and-int/lit16 v4, v0, 0x100

    #@16
    if-eqz v4, :cond_1

    #@18
    .line 1740
    :try_start_1
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    #@1a
    aget-object v3, v4, p2

    #@1c
    .line 1744
    .local v3, "signalStrength":Landroid/telephony/SignalStrength;
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@1e
    new-instance v5, Landroid/telephony/SignalStrength;

    #@20
    invoke-direct {v5, v3}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    #@23
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@26
    .line 1750
    .end local v3    # "signalStrength":Landroid/telephony/SignalStrength;
    :cond_1
    :goto_1
    and-int/lit8 v4, v0, 0x2

    #@28
    if-eqz v4, :cond_3

    #@2a
    .line 1752
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    #@2c
    aget-object v4, v4, p2

    #@2e
    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    #@31
    move-result v2

    #@32
    .line 1758
    .local v2, "gsmSignalStrength":I
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@34
    const/16 v5, 0x63

    #@36
    if-ne v2, v5, :cond_2

    #@38
    const/4 v2, -0x1

    #@39
    .end local v2    # "gsmSignalStrength":I
    :cond_2
    invoke-interface {v4, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    #@3c
    .line 1765
    :cond_3
    :goto_2
    const/16 v4, 0x400

    #@3e
    invoke-direct {p0, p1, v4}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    #@41
    move-result v4

    #@42
    if-eqz v4, :cond_4

    #@44
    .line 1771
    :try_start_3
    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@46
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    #@48
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4b
    move-result-object v4

    #@4c
    check-cast v4, Ljava/util/List;

    #@4e
    invoke-interface {v5, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    #@51
    .line 1777
    :cond_4
    :goto_3
    and-int/lit8 v4, v0, 0x4

    #@53
    if-eqz v4, :cond_5

    #@55
    .line 1783
    :try_start_4
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@57
    .line 1784
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    #@59
    aget-boolean v5, v5, p2

    #@5b
    .line 1783
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    #@5e
    .line 1790
    :cond_5
    :goto_4
    and-int/lit8 v4, v0, 0x8

    #@60
    if-eqz v4, :cond_6

    #@62
    .line 1796
    :try_start_5
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@64
    .line 1797
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    #@66
    aget-boolean v5, v5, p2

    #@68
    .line 1796
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    #@6b
    .line 1803
    :cond_6
    :goto_5
    const/16 v4, 0x10

    #@6d
    invoke-direct {p0, p1, v4}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    #@70
    move-result v4

    #@71
    if-eqz v4, :cond_7

    #@73
    .line 1807
    :try_start_6
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@75
    new-instance v5, Landroid/os/Bundle;

    #@77
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    #@79
    aget-object v6, v6, p2

    #@7b
    invoke-direct {v5, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@7e
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    #@81
    .line 1813
    :cond_7
    :goto_6
    and-int/lit8 v4, v0, 0x40

    #@83
    if-eqz v4, :cond_8

    #@85
    .line 1821
    :try_start_7
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@87
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    #@89
    aget v5, v5, p2

    #@8b
    .line 1822
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    #@8d
    aget v6, v6, p2

    #@8f
    .line 1821
    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    #@92
    .line 1724
    :cond_8
    :goto_7
    return-void

    #@93
    .line 1733
    :catch_0
    move-exception v1

    #@94
    .line 1734
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@96
    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@98
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9b
    goto/16 :goto_0

    #@9d
    .line 1745
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@9e
    .line 1746
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@a0
    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@a2
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a5
    goto :goto_1

    #@a6
    .line 1760
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    #@a7
    .line 1761
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@a9
    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@ab
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ae
    goto :goto_2

    #@af
    .line 1772
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_3
    move-exception v1

    #@b0
    .line 1773
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@b2
    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@b4
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b7
    goto :goto_3

    #@b8
    .line 1785
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_4
    move-exception v1

    #@b9
    .line 1786
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@bb
    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@bd
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c0
    goto :goto_4

    #@c1
    .line 1798
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_5
    move-exception v1

    #@c2
    .line 1799
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@c4
    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@c6
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c9
    goto :goto_5

    #@ca
    .line 1808
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_6
    move-exception v1

    #@cb
    .line 1809
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@cd
    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@cf
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d2
    goto :goto_6

    #@d3
    .line 1823
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_7
    move-exception v1

    #@d4
    .line 1824
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@d6
    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@d8
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@db
    goto :goto_7
.end method

.method private enforceCarrierPrivilege()V
    .locals 8

    #@0
    .prologue
    .line 1563
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@3
    move-result-object v3

    #@4
    .line 1564
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@9
    move-result-object v4

    #@a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@d
    move-result v5

    #@e
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    .line 1565
    .local v2, "pkgs":[Ljava/lang/String;
    const/4 v4, 0x0

    #@13
    array-length v5, v2

    #@14
    :goto_0
    if-ge v4, v5, :cond_1

    #@16
    aget-object v1, v2, v4

    #@18
    .line 1566
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    #@1b
    move-result v6

    #@1c
    .line 1567
    const/4 v7, 0x1

    #@1d
    .line 1566
    if-ne v6, v7, :cond_0

    #@1f
    .line 1568
    return-void

    #@20
    .line 1565
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@22
    goto :goto_0

    #@23
    .line 1572
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v5, "Carrier Privilege Permission Denial: from pid="

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@32
    move-result v5

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    .line 1573
    const-string/jumbo v5, ", uid="

    #@3a
    .line 1572
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    .line 1573
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@41
    move-result v5

    #@42
    .line 1572
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    .line 1575
    .local v0, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/SecurityException;

    #@4c
    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v4
.end method

.method private enforceNotifyPermissionOrCarrierPrivilege(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1540
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1541
    return-void

    #@7
    .line 1544
    :cond_0
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->enforceCarrierPrivilege()V

    #@a
    .line 1539
    return-void
.end method

.method private getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "phoneId"    # I

    #@0
    .prologue
    .line 683
    iget-boolean v0, p1, Lcom/android/server/TelephonyRegistry$Record;->canReadPhoneState:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    #@6
    aget-object v0, v0, p2

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    const-string/jumbo v0, ""

    #@c
    goto :goto_0
.end method

.method private handleRemoveListLocked()V
    .locals 4

    #@0
    .prologue
    .line 1616
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    .line 1618
    .local v2, "size":I
    if-lez v2, :cond_1

    #@8
    .line 1619
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "b$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/os/IBinder;

    #@1a
    .line 1620
    .local v0, "b":Landroid/os/IBinder;
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    #@1d
    goto :goto_0

    #@1e
    .line 1622
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@23
    .line 1615
    .end local v1    # "b$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V
    .locals 15
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p3, "events"    # I
    .param p4, "notifyNow"    # Z
    .param p5, "subId"    # I

    #@0
    .prologue
    .line 471
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v3

    #@4
    .line 478
    .local v3, "callerUserId":I
    if-eqz p3, :cond_16

    #@6
    .line 480
    move/from16 v0, p3

    #@8
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(I)V

    #@b
    .line 482
    move/from16 v0, p3

    #@d
    and-int/lit16 v11, v0, 0x400c

    #@f
    if-eqz v11, :cond_0

    #@11
    .line 484
    :try_start_0
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    #@13
    .line 485
    const-string/jumbo v12, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    #@16
    const/4 v13, 0x0

    #@17
    .line 484
    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 496
    :cond_0
    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@1c
    monitor-enter v12

    #@1d
    .line 500
    :try_start_1
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    #@20
    move-result-object v2

    #@21
    .line 501
    .local v2, "b":Landroid/os/IBinder;
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v1

    #@27
    .line 502
    .local v1, "N":I
    const/4 v7, 0x0

    #@28
    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_12

    #@2a
    .line 503
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v10

    #@30
    check-cast v10, Lcom/android/server/TelephonyRegistry$Record;

    #@32
    .line 504
    .local v10, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@34
    if-ne v2, v11, :cond_11

    #@36
    .line 514
    :goto_1
    move-object/from16 v0, p2

    #@38
    iput-object v0, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@3a
    .line 515
    move-object/from16 v0, p1

    #@3c
    iput-object v0, v10, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    #@3e
    .line 516
    iput v3, v10, Lcom/android/server/TelephonyRegistry$Record;->callerUserId:I

    #@40
    .line 517
    move/from16 v0, p3

    #@42
    and-int/lit16 v11, v0, 0x40ec

    #@44
    if-eqz v11, :cond_13

    #@46
    const/4 v8, 0x1

    #@47
    .line 519
    .local v8, "isPhoneStateEvent":Z
    :goto_2
    if-eqz v8, :cond_14

    #@49
    invoke-direct/range {p0 .. p1}, Lcom/android/server/TelephonyRegistry;->canReadPhoneState(Ljava/lang/String;)Z

    #@4c
    move-result v11

    #@4d
    :goto_3
    iput-boolean v11, v10, Lcom/android/server/TelephonyRegistry$Record;->canReadPhoneState:Z

    #@4f
    .line 522
    invoke-static/range {p5 .. p5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    #@52
    move-result v11

    #@53
    if-nez v11, :cond_15

    #@55
    .line 523
    const v11, 0x7fffffff

    #@58
    iput v11, v10, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    #@5a
    .line 527
    :goto_4
    iget v11, v10, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    #@5c
    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    #@5f
    move-result v11

    #@60
    iput v11, v10, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    #@62
    .line 529
    iget v9, v10, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    #@64
    .line 530
    .local v9, "phoneId":I
    move/from16 v0, p3

    #@66
    iput v0, v10, Lcom/android/server/TelephonyRegistry$Record;->events:I

    #@68
    .line 535
    if-eqz p4, :cond_10

    #@6a
    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6d
    move-result v11

    #@6e
    if-eqz v11, :cond_10

    #@70
    .line 536
    and-int/lit8 v11, p3, 0x1

    #@72
    if-eqz v11, :cond_1

    #@74
    .line 539
    :try_start_2
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@76
    .line 540
    new-instance v13, Landroid/telephony/ServiceState;

    #@78
    iget-object v14, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    #@7a
    aget-object v14, v14, v9

    #@7c
    invoke-direct {v13, v14}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    #@7f
    .line 539
    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@82
    .line 545
    :cond_1
    :goto_5
    and-int/lit8 v11, p3, 0x2

    #@84
    if-eqz v11, :cond_3

    #@86
    .line 547
    :try_start_3
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    #@88
    aget-object v11, v11, v9

    #@8a
    invoke-virtual {v11}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    #@8d
    move-result v6

    #@8e
    .line 549
    .local v6, "gsmSignalStrength":I
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@90
    const/16 v13, 0x63

    #@92
    if-ne v6, v13, :cond_2

    #@94
    const/4 v6, -0x1

    #@95
    .end local v6    # "gsmSignalStrength":I
    :cond_2
    invoke-interface {v11, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@98
    .line 555
    :cond_3
    :goto_6
    and-int/lit8 v11, p3, 0x4

    #@9a
    if-eqz v11, :cond_4

    #@9c
    .line 557
    :try_start_4
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@9e
    .line 558
    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    #@a0
    aget-boolean v13, v13, v9

    #@a2
    .line 557
    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@a5
    .line 563
    :cond_4
    :goto_7
    and-int/lit8 v11, p3, 0x8

    #@a7
    if-eqz v11, :cond_5

    #@a9
    .line 565
    :try_start_5
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@ab
    .line 566
    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    #@ad
    aget-boolean v13, v13, v9

    #@af
    .line 565
    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@b2
    .line 571
    :cond_5
    :goto_8
    const/16 v11, 0x10

    #@b4
    :try_start_6
    invoke-direct {p0, v10, v11}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@b7
    move-result v11

    #@b8
    if-eqz v11, :cond_6

    #@ba
    .line 575
    :try_start_7
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@bc
    .line 576
    new-instance v13, Landroid/os/Bundle;

    #@be
    iget-object v14, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    #@c0
    aget-object v14, v14, v9

    #@c2
    invoke-direct {v13, v14}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@c5
    .line 575
    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@c8
    .line 581
    :cond_6
    :goto_9
    and-int/lit8 v11, p3, 0x20

    #@ca
    if-eqz v11, :cond_7

    #@cc
    .line 583
    :try_start_8
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@ce
    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    #@d0
    aget v13, v13, v9

    #@d2
    .line 584
    invoke-direct {p0, v10, v9}, Lcom/android/server/TelephonyRegistry;->getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;

    #@d5
    move-result-object v14

    #@d6
    .line 583
    invoke-interface {v11, v13, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@d9
    .line 589
    :cond_7
    :goto_a
    and-int/lit8 v11, p3, 0x40

    #@db
    if-eqz v11, :cond_8

    #@dd
    .line 591
    :try_start_9
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@df
    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    #@e1
    aget v13, v13, v9

    #@e3
    .line 592
    iget-object v14, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    #@e5
    aget v14, v14, v9

    #@e7
    .line 591
    invoke-interface {v11, v13, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@ea
    .line 597
    :cond_8
    :goto_b
    move/from16 v0, p3

    #@ec
    and-int/lit16 v11, v0, 0x80

    #@ee
    if-eqz v11, :cond_9

    #@f0
    .line 599
    :try_start_a
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@f2
    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    #@f4
    aget v13, v13, v9

    #@f6
    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@f9
    .line 604
    :cond_9
    :goto_c
    move/from16 v0, p3

    #@fb
    and-int/lit16 v11, v0, 0x100

    #@fd
    if-eqz v11, :cond_a

    #@ff
    .line 606
    :try_start_b
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@101
    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    #@103
    aget-object v13, v13, v9

    #@105
    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@108
    .line 611
    :cond_a
    :goto_d
    move/from16 v0, p3

    #@10a
    and-int/lit16 v11, v0, 0x200

    #@10c
    if-eqz v11, :cond_b

    #@10e
    .line 613
    :try_start_c
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@110
    iget v13, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    #@112
    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@115
    .line 618
    :cond_b
    :goto_e
    const/16 v11, 0x400

    #@117
    :try_start_d
    invoke-direct {p0, v10, v11}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@11a
    move-result v11

    #@11b
    if-eqz v11, :cond_c

    #@11d
    .line 622
    :try_start_e
    iget-object v13, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@11f
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    #@121
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@124
    move-result-object v11

    #@125
    check-cast v11, Ljava/util/List;

    #@127
    invoke-interface {v13, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    #@12a
    .line 627
    :cond_c
    :goto_f
    move/from16 v0, p3

    #@12c
    and-int/lit16 v11, v0, 0x2000

    #@12e
    if-eqz v11, :cond_d

    #@130
    .line 629
    :try_start_f
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@132
    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

    #@134
    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    #@137
    .line 634
    :cond_d
    :goto_10
    move/from16 v0, p3

    #@139
    and-int/lit16 v11, v0, 0x800

    #@13b
    if-eqz v11, :cond_e

    #@13d
    .line 636
    :try_start_10
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@13f
    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    #@141
    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_d
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    #@144
    .line 641
    :cond_e
    :goto_11
    move/from16 v0, p3

    #@146
    and-int/lit16 v11, v0, 0x1000

    #@148
    if-eqz v11, :cond_f

    #@14a
    .line 643
    :try_start_11
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@14c
    .line 644
    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    #@14e
    .line 643
    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_e
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    #@151
    .line 649
    :cond_f
    :goto_12
    const/high16 v11, 0x10000

    #@153
    and-int v11, v11, p3

    #@155
    if-eqz v11, :cond_10

    #@157
    .line 651
    :try_start_12
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@159
    iget-boolean v13, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:Z

    #@15b
    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierNetworkChange(Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_f
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    #@15e
    :cond_10
    :goto_13
    monitor-exit v12

    #@15f
    .line 470
    .end local v1    # "N":I
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v7    # "i":I
    .end local v8    # "isPhoneStateEvent":Z
    .end local v9    # "phoneId":I
    .end local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :goto_14
    return-void

    #@160
    .line 488
    :catch_0
    move-exception v4

    #@161
    .line 489
    .local v4, "e":Ljava/lang/SecurityException;
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    #@163
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@166
    move-result v12

    #@167
    const/16 v13, 0x33

    #@169
    move-object/from16 v0, p1

    #@16b
    invoke-virtual {v11, v13, v12, v0}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@16e
    move-result v11

    #@16f
    if-eqz v11, :cond_0

    #@171
    .line 491
    return-void

    #@172
    .line 502
    .end local v4    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "N":I
    .restart local v2    # "b":Landroid/os/IBinder;
    .restart local v7    # "i":I
    .restart local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_11
    add-int/lit8 v7, v7, 0x1

    #@174
    goto/16 :goto_0

    #@176
    .line 508
    .end local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_12
    :try_start_13
    new-instance v10, Lcom/android/server/TelephonyRegistry$Record;

    #@178
    const/4 v11, 0x0

    #@179
    invoke-direct {v10, v11}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$Record;)V

    #@17c
    .line 509
    .restart local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    iput-object v2, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@17e
    .line 510
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@180
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    #@183
    goto/16 :goto_1

    #@185
    .line 496
    .end local v1    # "N":I
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v7    # "i":I
    .end local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v11

    #@186
    monitor-exit v12

    #@187
    throw v11

    #@188
    .line 517
    .restart local v1    # "N":I
    .restart local v2    # "b":Landroid/os/IBinder;
    .restart local v7    # "i":I
    .restart local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_13
    const/4 v8, 0x0

    #@189
    .restart local v8    # "isPhoneStateEvent":Z
    goto/16 :goto_2

    #@18b
    .line 519
    :cond_14
    const/4 v11, 0x0

    #@18c
    goto/16 :goto_3

    #@18e
    .line 525
    :cond_15
    :try_start_14
    move/from16 v0, p5

    #@190
    iput v0, v10, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    #@192
    goto/16 :goto_4

    #@194
    .line 541
    .restart local v9    # "phoneId":I
    :catch_1
    move-exception v5

    #@195
    .line 542
    .local v5, "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@197
    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    #@19a
    goto/16 :goto_5

    #@19c
    .line 551
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_2
    move-exception v5

    #@19d
    .line 552
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@19f
    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    #@1a2
    goto/16 :goto_6

    #@1a4
    .line 559
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_3
    move-exception v5

    #@1a5
    .line 560
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@1a7
    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    #@1aa
    goto/16 :goto_7

    #@1ac
    .line 567
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_4
    move-exception v5

    #@1ad
    .line 568
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@1af
    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    #@1b2
    goto/16 :goto_8

    #@1b4
    .line 577
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_5
    move-exception v5

    #@1b5
    .line 578
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@1b7
    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    #@1ba
    goto/16 :goto_9

    #@1bc
    .line 585
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_6
    move-exception v5

    #@1bd
    .line 586
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@1bf
    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    #@1c2
    goto/16 :goto_a

    #@1c4
    .line 593
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_7
    move-exception v5

    #@1c5
    .line 594
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@1c7
    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    #@1ca
    goto/16 :goto_b

    #@1cc
    .line 600
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_8
    move-exception v5

    #@1cd
    .line 601
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@1cf
    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    #@1d2
    goto/16 :goto_c

    #@1d4
    .line 607
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_9
    move-exception v5

    #@1d5
    .line 608
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@1d7
    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    #@1da
    goto/16 :goto_d

    #@1dc
    .line 614
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_a
    move-exception v5

    #@1dd
    .line 615
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@1df
    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    #@1e2
    goto/16 :goto_e

    #@1e4
    .line 623
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_b
    move-exception v5

    #@1e5
    .line 624
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@1e7
    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    #@1ea
    goto/16 :goto_f

    #@1ec
    .line 630
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v5

    #@1ed
    .line 631
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@1ef
    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    #@1f2
    goto/16 :goto_10

    #@1f4
    .line 637
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_d
    move-exception v5

    #@1f5
    .line 638
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@1f7
    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    #@1fa
    goto/16 :goto_11

    #@1fc
    .line 645
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_e
    move-exception v5

    #@1fd
    .line 646
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@1ff
    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    #@202
    goto/16 :goto_12

    #@204
    .line 652
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v5

    #@205
    .line 653
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@207
    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    #@20a
    goto/16 :goto_13

    #@20c
    .line 660
    .end local v1    # "N":I
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v5    # "ex":Landroid/os/RemoteException;
    .end local v7    # "i":I
    .end local v8    # "isPhoneStateEvent":Z
    .end local v9    # "phoneId":I
    .end local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_16
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    #@20f
    move-result-object v11

    #@210
    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    #@213
    goto/16 :goto_14
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1651
    const-string/jumbo v0, "TelephonyRegistry"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1650
    return-void
.end method

.method private logServiceStateChanged(Ljava/lang/String;IILandroid/telephony/ServiceState;)V
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "phoneId"    # I
    .param p4, "state"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 1676
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    #@8
    array-length v0, v0

    #@9
    if-nez v0, :cond_1

    #@b
    .line 1677
    :cond_0
    return-void

    #@c
    .line 1679
    :cond_1
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    #@e
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->next:I

    #@10
    aget-object v0, v0, v2

    #@12
    if-nez v0, :cond_2

    #@14
    .line 1680
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    #@16
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->next:I

    #@18
    new-instance v3, Lcom/android/server/TelephonyRegistry$LogSSC;

    #@1a
    invoke-direct {v3, v4}, Lcom/android/server/TelephonyRegistry$LogSSC;-><init>(Lcom/android/server/TelephonyRegistry$LogSSC;)V

    #@1d
    aput-object v3, v0, v2

    #@1f
    .line 1682
    :cond_2
    new-instance v1, Landroid/text/format/Time;

    #@21
    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    #@24
    .line 1683
    .local v1, "t":Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    #@27
    .line 1684
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    #@29
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->next:I

    #@2b
    aget-object v0, v0, v2

    #@2d
    move-object v2, p1

    #@2e
    move v3, p2

    #@2f
    move v4, p3

    #@30
    move-object v5, p4

    #@31
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry$LogSSC;->set(Landroid/text/format/Time;Ljava/lang/String;IILandroid/telephony/ServiceState;)V

    #@34
    .line 1685
    iget v0, p0, Lcom/android/server/TelephonyRegistry;->next:I

    #@36
    add-int/lit8 v0, v0, 0x1

    #@38
    iput v0, p0, Lcom/android/server/TelephonyRegistry;->next:I

    #@3a
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    #@3c
    array-length v2, v2

    #@3d
    if-lt v0, v2, :cond_3

    #@3f
    .line 1686
    iput v6, p0, Lcom/android/server/TelephonyRegistry;->next:I

    #@41
    .line 1675
    :cond_3
    return-void
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 687
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@2
    monitor-enter v3

    #@3
    .line 688
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    .line 689
    .local v1, "recordCount":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@c
    .line 690
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    #@14
    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@16
    if-ne v2, p1, :cond_0

    #@18
    .line 696
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    monitor-exit v3

    #@1e
    .line 697
    return-void

    #@1f
    .line 689
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    :cond_1
    monitor-exit v3

    #@23
    .line 686
    return-void

    #@24
    .line 687
    .end local v0    # "i":I
    .end local v1    # "recordCount":I
    :catchall_0
    move-exception v2

    #@25
    monitor-exit v3

    #@26
    throw v2
.end method

.method private toStringLogSSC(Ljava/lang/String;)V
    .locals 3
    .param p1, "prompt"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1691
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    #@6
    array-length v1, v1

    #@7
    if-nez v1, :cond_1

    #@9
    .line 1692
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, ": logSSC is empty"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    #@20
    .line 1690
    :goto_0
    return-void

    #@21
    .line 1691
    :cond_1
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->next:I

    #@23
    if-nez v1, :cond_2

    #@25
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    #@27
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->next:I

    #@29
    aget-object v1, v1, v2

    #@2b
    if-eqz v1, :cond_0

    #@2d
    .line 1695
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    const-string/jumbo v2, ": logSSC.length="

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    #@3f
    array-length v2, v2

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    const-string/jumbo v2, " next="

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->next:I

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    #@58
    .line 1696
    iget v0, p0, Lcom/android/server/TelephonyRegistry;->next:I

    #@5a
    .line 1697
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    #@5c
    aget-object v1, v1, v0

    #@5e
    if-nez v1, :cond_3

    #@60
    .line 1699
    const/4 v0, 0x0

    #@61
    .line 1702
    :cond_3
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    #@63
    aget-object v1, v1, v0

    #@65
    invoke-virtual {v1}, Lcom/android/server/TelephonyRegistry$LogSSC;->toString()Ljava/lang/String;

    #@68
    move-result-object v1

    #@69
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    #@6c
    .line 1703
    add-int/lit8 v0, v0, 0x1

    #@6e
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    #@70
    array-length v1, v1

    #@71
    if-lt v0, v1, :cond_4

    #@73
    .line 1704
    const/4 v0, 0x0

    #@74
    .line 1706
    :cond_4
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->next:I

    #@76
    if-ne v0, v1, :cond_3

    #@78
    .line 1707
    new-instance v1, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v1

    #@81
    const-string/jumbo v2, ": ----------------"

    #@84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v1

    #@88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v1

    #@8c
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    #@8f
    goto :goto_0
.end method

.method private validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .locals 5
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "events"    # I

    #@0
    .prologue
    .line 1628
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 1629
    .local v0, "callingIdentity":J
    const/4 v3, 0x0

    #@5
    .line 1631
    .local v3, "valid":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@8
    move-result v2

    #@9
    .line 1632
    .local v2, "foregroundUser":I
    iget v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUserId:I

    #@b
    if-ne v4, v2, :cond_0

    #@d
    invoke-virtual {p1, p2}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v3

    #@11
    .line 1639
    .end local v3    # "valid":Z
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@14
    .line 1641
    return v3

    #@15
    .line 1632
    .restart local v3    # "valid":Z
    :cond_0
    const/4 v3, 0x0

    #@16
    goto :goto_0

    #@17
    .line 1638
    .end local v2    # "foregroundUser":I
    :catchall_0
    move-exception v4

    #@18
    .line 1639
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 1638
    throw v4
.end method

.method private validatePhoneId(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    #@0
    .prologue
    .line 1645
    if-ltz p1, :cond_0

    #@2
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    #@4
    if-ge p1, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    .line 1647
    .local v0, "valid":Z
    :goto_0
    return v0

    #@8
    .line 1645
    .end local v0    # "valid":Z
    :cond_0
    const/4 v0, 0x0

    #@9
    .restart local v0    # "valid":Z
    goto :goto_0
.end method


# virtual methods
.method public addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .locals 10
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    #@0
    .prologue
    .line 357
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v2

    #@4
    .line 365
    .local v2, "callerUserId":I
    :try_start_0
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    #@6
    .line 366
    const-string/jumbo v8, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    #@9
    .line 367
    const-string/jumbo v9, "addOnSubscriptionsChangedListener"

    #@c
    .line 365
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 382
    :cond_0
    iget-object v8, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@11
    monitor-enter v8

    #@12
    .line 385
    :try_start_1
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v1

    #@16
    .line 386
    .local v1, "b":Landroid/os/IBinder;
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@1b
    move-result v0

    #@1c
    .line 387
    .local v0, "N":I
    const/4 v5, 0x0

    #@1d
    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_2

    #@1f
    .line 388
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v6

    #@25
    check-cast v6, Lcom/android/server/TelephonyRegistry$Record;

    #@27
    .line 389
    .local v6, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget-object v7, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@29
    if-ne v1, v7, :cond_1

    #@2b
    .line 399
    :goto_1
    iput-object p2, v6, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    #@2d
    .line 400
    iput-object p1, v6, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    #@2f
    .line 401
    iput v2, v6, Lcom/android/server/TelephonyRegistry$Record;->callerUserId:I

    #@31
    .line 402
    const/4 v7, 0x0

    #@32
    iput v7, v6, Lcom/android/server/TelephonyRegistry$Record;->events:I

    #@34
    .line 403
    const/4 v7, 0x1

    #@35
    iput-boolean v7, v6, Lcom/android/server/TelephonyRegistry$Record;->canReadPhoneState:Z

    #@37
    .line 408
    iget-boolean v7, p0, Lcom/android/server/TelephonyRegistry;->hasNotifySubscriptionInfoChangedOccurred:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    if-eqz v7, :cond_3

    #@3b
    .line 411
    :try_start_2
    iget-object v7, v6, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    #@3d
    invoke-interface {v7}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@40
    :goto_2
    monitor-exit v8

    #@41
    .line 356
    return-void

    #@42
    .line 369
    .end local v0    # "N":I
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v5    # "i":I
    .end local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catch_0
    move-exception v4

    #@43
    .line 370
    .local v4, "e":Ljava/lang/SecurityException;
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    #@45
    .line 371
    const-string/jumbo v8, "android.permission.READ_PHONE_STATE"

    #@48
    .line 372
    const-string/jumbo v9, "addOnSubscriptionsChangedListener"

    #@4b
    .line 370
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@4e
    .line 374
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    #@50
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@53
    move-result v8

    #@54
    const/16 v9, 0x33

    #@56
    invoke-virtual {v7, v9, v8, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@59
    move-result v7

    #@5a
    if-eqz v7, :cond_0

    #@5c
    .line 376
    return-void

    #@5d
    .line 387
    .end local v4    # "e":Ljava/lang/SecurityException;
    .restart local v0    # "N":I
    .restart local v1    # "b":Landroid/os/IBinder;
    .restart local v5    # "i":I
    .restart local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@5f
    goto :goto_0

    #@60
    .line 393
    .end local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_2
    :try_start_3
    new-instance v6, Lcom/android/server/TelephonyRegistry$Record;

    #@62
    const/4 v7, 0x0

    #@63
    invoke-direct {v6, v7}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$Record;)V

    #@66
    .line 394
    .restart local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    iput-object v1, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@68
    .line 395
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@6a
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6d
    goto :goto_1

    #@6e
    .line 382
    .end local v0    # "N":I
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v5    # "i":I
    .end local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v7

    #@6f
    monitor-exit v8

    #@70
    throw v7

    #@71
    .line 413
    .restart local v0    # "N":I
    .restart local v1    # "b":Landroid/os/IBinder;
    .restart local v5    # "i":I
    .restart local v6    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catch_1
    move-exception v3

    #@72
    .line 415
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    iget-object v7, v6, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@74
    invoke-direct {p0, v7}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    #@77
    goto :goto_2

    #@78
    .line 418
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string/jumbo v7, "listen oscl: hasNotifySubscriptionInfoChangedOccurred==false no callback"

    #@7b
    invoke-static {v7}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@7e
    goto :goto_2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1345
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v5, "android.permission.DUMP"

    #@5
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 1347
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v5, "Permission Denial: can\'t dump telephony.registry from from pid="

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    .line 1348
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v5

    #@1b
    .line 1347
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    .line 1348
    const-string/jumbo v5, ", uid="

    #@22
    .line 1347
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    .line 1348
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v5

    #@2a
    .line 1347
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35
    .line 1349
    return-void

    #@36
    .line 1351
    :cond_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@38
    monitor-enter v5

    #@39
    .line 1352
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@3b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@3e
    move-result v3

    #@3f
    .line 1353
    .local v3, "recordCount":I
    const-string/jumbo v4, "last known state:"

    #@42
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@45
    .line 1354
    const/4 v0, 0x0

    #@46
    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    #@4d
    move-result v4

    #@4e
    if-ge v0, v4, :cond_1

    #@50
    .line 1355
    new-instance v4, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v6, "  Phone Id="

    #@58
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@67
    .line 1356
    new-instance v4, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v6, "  mCallState="

    #@6f
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v4

    #@73
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    #@75
    aget v6, v6, v0

    #@77
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v4

    #@7f
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@82
    .line 1357
    new-instance v4, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v6, "  mCallIncomingNumber="

    #@8a
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v4

    #@8e
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    #@90
    aget-object v6, v6, v0

    #@92
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v4

    #@96
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v4

    #@9a
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9d
    .line 1358
    new-instance v4, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v6, "  mServiceState="

    #@a5
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v4

    #@a9
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    #@ab
    aget-object v6, v6, v0

    #@ad
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v4

    #@b1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v4

    #@b5
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b8
    .line 1359
    new-instance v4, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v6, "  mSignalStrength="

    #@c0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v4

    #@c4
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    #@c6
    aget-object v6, v6, v0

    #@c8
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v4

    #@cc
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v4

    #@d0
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d3
    .line 1360
    new-instance v4, Ljava/lang/StringBuilder;

    #@d5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d8
    const-string/jumbo v6, "  mMessageWaiting="

    #@db
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v4

    #@df
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    #@e1
    aget-boolean v6, v6, v0

    #@e3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v4

    #@e7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v4

    #@eb
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ee
    .line 1361
    new-instance v4, Ljava/lang/StringBuilder;

    #@f0
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f3
    const-string/jumbo v6, "  mCallForwarding="

    #@f6
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v4

    #@fa
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    #@fc
    aget-boolean v6, v6, v0

    #@fe
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@101
    move-result-object v4

    #@102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@105
    move-result-object v4

    #@106
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@109
    .line 1362
    new-instance v4, Ljava/lang/StringBuilder;

    #@10b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10e
    const-string/jumbo v6, "  mDataActivity="

    #@111
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v4

    #@115
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    #@117
    aget v6, v6, v0

    #@119
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v4

    #@11d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@120
    move-result-object v4

    #@121
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@124
    .line 1363
    new-instance v4, Ljava/lang/StringBuilder;

    #@126
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@129
    const-string/jumbo v6, "  mDataConnectionState="

    #@12c
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v4

    #@130
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    #@132
    aget v6, v6, v0

    #@134
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@137
    move-result-object v4

    #@138
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13b
    move-result-object v4

    #@13c
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13f
    .line 1364
    new-instance v4, Ljava/lang/StringBuilder;

    #@141
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@144
    const-string/jumbo v6, "  mDataConnectionPossible="

    #@147
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v4

    #@14b
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:[Z

    #@14d
    aget-boolean v6, v6, v0

    #@14f
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@152
    move-result-object v4

    #@153
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@156
    move-result-object v4

    #@157
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15a
    .line 1365
    new-instance v4, Ljava/lang/StringBuilder;

    #@15c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@15f
    const-string/jumbo v6, "  mDataConnectionReason="

    #@162
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v4

    #@166
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:[Ljava/lang/String;

    #@168
    aget-object v6, v6, v0

    #@16a
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v4

    #@16e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@171
    move-result-object v4

    #@172
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@175
    .line 1366
    new-instance v4, Ljava/lang/StringBuilder;

    #@177
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17a
    const-string/jumbo v6, "  mDataConnectionApn="

    #@17d
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@180
    move-result-object v4

    #@181
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:[Ljava/lang/String;

    #@183
    aget-object v6, v6, v0

    #@185
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@188
    move-result-object v4

    #@189
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18c
    move-result-object v4

    #@18d
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@190
    .line 1367
    new-instance v4, Ljava/lang/StringBuilder;

    #@192
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@195
    const-string/jumbo v6, "  mDataConnectionLinkProperties="

    #@198
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19b
    move-result-object v4

    #@19c
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:[Landroid/net/LinkProperties;

    #@19e
    aget-object v6, v6, v0

    #@1a0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a3
    move-result-object v4

    #@1a4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a7
    move-result-object v4

    #@1a8
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ab
    .line 1368
    new-instance v4, Ljava/lang/StringBuilder;

    #@1ad
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1b0
    const-string/jumbo v6, "  mDataConnectionNetworkCapabilities="

    #@1b3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b6
    move-result-object v4

    #@1b7
    .line 1369
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkCapabilities:[Landroid/net/NetworkCapabilities;

    #@1b9
    aget-object v6, v6, v0

    #@1bb
    .line 1368
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1be
    move-result-object v4

    #@1bf
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c2
    move-result-object v4

    #@1c3
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c6
    .line 1370
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1cb
    const-string/jumbo v6, "  mCellLocation="

    #@1ce
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d1
    move-result-object v4

    #@1d2
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    #@1d4
    aget-object v6, v6, v0

    #@1d6
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d9
    move-result-object v4

    #@1da
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1dd
    move-result-object v4

    #@1de
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e1
    .line 1371
    new-instance v4, Ljava/lang/StringBuilder;

    #@1e3
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1e6
    const-string/jumbo v6, "  mCellInfo="

    #@1e9
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ec
    move-result-object v4

    #@1ed
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    #@1ef
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f2
    move-result-object v6

    #@1f3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f6
    move-result-object v4

    #@1f7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fa
    move-result-object v4

    #@1fb
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1fe
    .line 1354
    add-int/lit8 v0, v0, 0x1

    #@200
    goto/16 :goto_0

    #@202
    .line 1373
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@204
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@207
    const-string/jumbo v6, "  mDcRtInfo="

    #@20a
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20d
    move-result-object v4

    #@20e
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

    #@210
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@213
    move-result-object v4

    #@214
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@217
    move-result-object v4

    #@218
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@21b
    .line 1374
    new-instance v4, Ljava/lang/StringBuilder;

    #@21d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@220
    const-string/jumbo v6, "registrations: count="

    #@223
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@226
    move-result-object v4

    #@227
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22a
    move-result-object v4

    #@22b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22e
    move-result-object v4

    #@22f
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@232
    .line 1375
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@234
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@237
    move-result-object v2

    #@238
    .local v2, "r$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@23b
    move-result v4

    #@23c
    if-eqz v4, :cond_2

    #@23e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@241
    move-result-object v1

    #@242
    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    #@244
    .line 1376
    .local v1, "r":Lcom/android/server/TelephonyRegistry$Record;
    new-instance v4, Ljava/lang/StringBuilder;

    #@246
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@249
    const-string/jumbo v6, "  "

    #@24c
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24f
    move-result-object v4

    #@250
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@253
    move-result-object v4

    #@254
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@257
    move-result-object v4

    #@258
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25b
    goto :goto_1

    #@25c
    .line 1351
    .end local v0    # "i":I
    .end local v1    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v2    # "r$iterator":Ljava/util/Iterator;
    .end local v3    # "recordCount":I
    :catchall_0
    move-exception v4

    #@25d
    monitor-exit v5

    #@25e
    throw v4

    #@25f
    .restart local v0    # "i":I
    .restart local v2    # "r$iterator":Ljava/util/Iterator;
    .restart local v3    # "recordCount":I
    :cond_2
    monitor-exit v5

    #@260
    .line 1344
    return-void
.end method

.method idMatch(III)Z
    .locals 3
    .param p1, "rSubId"    # I
    .param p2, "subId"    # I
    .param p3, "phoneId"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1713
    if-gez p2, :cond_1

    #@4
    .line 1715
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    #@6
    if-ne v2, p3, :cond_0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    move v0, v1

    #@a
    goto :goto_0

    #@b
    .line 1717
    :cond_1
    const v2, 0x7fffffff

    #@e
    if-ne p1, v2, :cond_3

    #@10
    .line 1718
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    #@12
    if-ne p2, v2, :cond_2

    #@14
    :goto_1
    return v0

    #@15
    :cond_2
    move v0, v1

    #@16
    goto :goto_1

    #@17
    .line 1720
    :cond_3
    if-ne p1, p2, :cond_4

    #@19
    :goto_2
    return v0

    #@1a
    :cond_4
    move v0, v1

    #@1b
    goto :goto_2
.end method

.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .locals 6
    .param p1, "pkgForDebug"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p3, "events"    # I
    .param p4, "notifyNow"    # Z

    #@0
    .prologue
    .line 459
    const v1, 0x7fffffff

    #@3
    move-object v0, p0

    #@4
    move-object v2, p1

    #@5
    move-object v3, p2

    #@6
    move v4, p3

    #@7
    move v5, p4

    #@8
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->listenForSubscriber(ILjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    #@b
    .line 458
    return-void
.end method

.method public listenForSubscriber(ILjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .locals 6
    .param p1, "subId"    # I
    .param p2, "pkgForDebug"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p4, "events"    # I
    .param p5, "notifyNow"    # Z

    #@0
    .prologue
    move-object v0, p0

    #@1
    move-object v1, p2

    #@2
    move-object v2, p3

    #@3
    move v3, p4

    #@4
    move v4, p5

    #@5
    move v5, p1

    #@6
    .line 466
    invoke-direct/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V

    #@9
    .line 465
    return-void
.end method

.method public notifyCallForwardingChanged(Z)V
    .locals 1
    .param p1, "cfi"    # Z

    #@0
    .prologue
    .line 978
    const v0, 0x7fffffff

    #@3
    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCallForwardingChangedForSubscriber(IZ)V

    #@6
    .line 977
    return-void
.end method

.method public notifyCallForwardingChangedForSubscriber(IZ)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "cfi"    # Z

    #@0
    .prologue
    .line 982
    const-string/jumbo v4, "notifyCallForwardingChanged()"

    #@3
    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    #@6
    move-result v4

    #@7
    if-nez v4, :cond_0

    #@9
    .line 983
    return-void

    #@a
    .line 989
    :cond_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@c
    monitor-enter v5

    #@d
    .line 990
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    #@10
    move-result v1

    #@11
    .line 991
    .local v1, "phoneId":I
    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_2

    #@17
    .line 992
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    #@19
    aput-boolean p2, v4, v1

    #@1b
    .line 993
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@1d
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v3

    #@21
    .local v3, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_2

    #@27
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    #@2d
    .line 995
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x8

    #@2f
    .line 994
    invoke-virtual {v2, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_1

    #@35
    .line 996
    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    #@37
    invoke-virtual {p0, v4, p1, v1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    move-result v4

    #@3b
    .line 994
    if-eqz v4, :cond_1

    #@3d
    .line 998
    :try_start_1
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@3f
    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    goto :goto_0

    #@43
    .line 999
    :catch_0
    move-exception v0

    #@44
    .line 1000
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@46
    iget-object v6, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@48
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4b
    goto :goto_0

    #@4c
    .line 989
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "phoneId":I
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@4d
    monitor-exit v5

    #@4e
    throw v4

    #@4f
    .line 1005
    .restart local v1    # "phoneId":I
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@52
    monitor-exit v5

    #@53
    .line 981
    return-void
.end method

.method public notifyCallState(ILjava/lang/String;)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    #@0
    .prologue
    .line 704
    const-string/jumbo v4, "notifyCallState()"

    #@3
    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    #@6
    move-result v4

    #@7
    if-nez v4, :cond_0

    #@9
    .line 705
    return-void

    #@a
    .line 712
    :cond_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@c
    monitor-enter v5

    #@d
    .line 713
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@f
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v3

    #@13
    .local v3, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_3

    #@19
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    #@1f
    .line 714
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x20

    #@21
    invoke-virtual {v2, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_1

    #@27
    .line 715
    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    const v6, 0x7fffffff

    #@2c
    if-ne v4, v6, :cond_1

    #@2e
    .line 717
    :try_start_1
    iget-boolean v4, v2, Lcom/android/server/TelephonyRegistry$Record;->canReadPhoneState:Z

    #@30
    if-eqz v4, :cond_2

    #@32
    move-object v1, p2

    #@33
    .line 718
    .local v1, "incomingNumberOrEmpty":Ljava/lang/String;
    :goto_1
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@35
    invoke-interface {v4, p1, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 719
    .end local v1    # "incomingNumberOrEmpty":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@3a
    .line 720
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@3c
    iget-object v6, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@3e
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@41
    goto :goto_0

    #@42
    .line 712
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@43
    monitor-exit v5

    #@44
    throw v4

    #@45
    .line 717
    .restart local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v3    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    const-string/jumbo v1, ""
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@48
    .restart local v1    # "incomingNumberOrEmpty":Ljava/lang/String;
    goto :goto_1

    #@49
    .line 724
    .end local v1    # "incomingNumberOrEmpty":Ljava/lang/String;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_3
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4c
    monitor-exit v5

    #@4d
    .line 727
    const/4 v4, -0x1

    #@4e
    .line 726
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;I)V

    #@51
    .line 703
    return-void
.end method

.method public notifyCallStateForSubscriber(IILjava/lang/String;)V
    .locals 8
    .param p1, "subId"    # I
    .param p2, "state"    # I
    .param p3, "incomingNumber"    # Ljava/lang/String;

    #@0
    .prologue
    .line 731
    const-string/jumbo v5, "notifyCallState()"

    #@3
    invoke-direct {p0, v5}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    #@6
    move-result v5

    #@7
    if-nez v5, :cond_0

    #@9
    .line 732
    return-void

    #@a
    .line 738
    :cond_0
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@c
    monitor-enter v6

    #@d
    .line 739
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    #@10
    move-result v2

    #@11
    .line 740
    .local v2, "phoneId":I
    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_2

    #@17
    .line 741
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    #@19
    aput p2, v5, v2

    #@1b
    .line 742
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    #@1d
    aput-object p3, v5, v2

    #@1f
    .line 743
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@21
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v4

    #@25
    .local v4, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_2

    #@2b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v3

    #@2f
    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    #@31
    .line 744
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v5, 0x20

    #@33
    invoke-virtual {v3, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    #@36
    move-result v5

    #@37
    if-eqz v5, :cond_1

    #@39
    .line 745
    iget v5, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    #@3b
    if-ne v5, p1, :cond_1

    #@3d
    .line 746
    iget v5, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    const v7, 0x7fffffff

    #@42
    if-eq v5, v7, :cond_1

    #@44
    .line 748
    :try_start_1
    invoke-direct {p0, v3, v2}, Lcom/android/server/TelephonyRegistry;->getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    .line 749
    .local v1, "incomingNumberOrEmpty":Ljava/lang/String;
    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@4a
    invoke-interface {v5, p2, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    goto :goto_0

    #@4e
    .line 750
    .end local v1    # "incomingNumberOrEmpty":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@4f
    .line 751
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@51
    iget-object v7, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@53
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@56
    goto :goto_0

    #@57
    .line 738
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v2    # "phoneId":I
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@58
    monitor-exit v6

    #@59
    throw v5

    #@5a
    .line 756
    .restart local v2    # "phoneId":I
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5d
    monitor-exit v6

    #@5e
    .line 758
    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;I)V

    #@61
    .line 730
    return-void
.end method

.method public notifyCarrierNetworkChange(Z)V
    .locals 6
    .param p1, "active"    # Z

    #@0
    .prologue
    .line 867
    const-string/jumbo v3, "notifyCarrierNetworkChange()"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->enforceNotifyPermissionOrCarrierPrivilege(Ljava/lang/String;)V

    #@6
    .line 873
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@8
    monitor-enter v4

    #@9
    .line 874
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:Z

    #@b
    .line 875
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@d
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v2

    #@11
    .local v2, "r$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_1

    #@17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    #@1d
    .line 877
    .local v1, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v3, 0x10000

    #@1f
    .line 876
    invoke-virtual {v1, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    .line 879
    :try_start_1
    iget-object v3, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@27
    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierNetworkChange(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    goto :goto_0

    #@2b
    .line 880
    :catch_0
    move-exception v0

    #@2c
    .line 881
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@2e
    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@30
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@33
    goto :goto_0

    #@34
    .line 873
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v2    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@35
    monitor-exit v4

    #@36
    throw v3

    #@37
    .line 885
    .restart local v2    # "r$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3a
    monitor-exit v4

    #@3b
    .line 866
    return-void
.end method

.method public notifyCellInfo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 890
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const v0, 0x7fffffff

    #@3
    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCellInfoForSubscriber(ILjava/util/List;)V

    #@6
    .line 889
    return-void
.end method

.method public notifyCellInfoForSubscriber(ILjava/util/List;)V
    .locals 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 894
    .local p2, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const-string/jumbo v4, "notifyCellInfo()"

    #@3
    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    #@6
    move-result v4

    #@7
    if-nez v4, :cond_0

    #@9
    .line 895
    return-void

    #@a
    .line 902
    :cond_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@c
    monitor-enter v5

    #@d
    .line 903
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    #@10
    move-result v1

    #@11
    .line 904
    .local v1, "phoneId":I
    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_2

    #@17
    .line 905
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v4, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 906
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@1e
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v3

    #@22
    .local v3, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_2

    #@28
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v2

    #@2c
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    #@2e
    .line 907
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x400

    #@30
    invoke-direct {p0, v2, v4}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    #@33
    move-result v4

    #@34
    if-eqz v4, :cond_1

    #@36
    .line 908
    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    #@38
    invoke-virtual {p0, v4, p1, v1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    move-result v4

    #@3c
    .line 907
    if-eqz v4, :cond_1

    #@3e
    .line 913
    :try_start_1
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@40
    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    goto :goto_0

    #@44
    .line 914
    :catch_0
    move-exception v0

    #@45
    .line 915
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@47
    iget-object v6, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@49
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    goto :goto_0

    #@4d
    .line 902
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "phoneId":I
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@4e
    monitor-exit v5

    #@4f
    throw v4

    #@50
    .line 920
    .restart local v1    # "phoneId":I
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@53
    monitor-exit v5

    #@54
    .line 893
    return-void
.end method

.method public notifyCellLocation(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "cellLocation"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1167
    const v0, 0x7fffffff

    #@3
    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V

    #@6
    .line 1166
    return-void
.end method

.method public notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "cellLocation"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1171
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v5, "notifyCellLocationForSubscriber: subId="

    #@8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    .line 1172
    const-string/jumbo v5, " cellLocation="

    #@13
    .line 1171
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    #@22
    .line 1173
    const-string/jumbo v4, "notifyCellLocation()"

    #@25
    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    #@28
    move-result v4

    #@29
    if-nez v4, :cond_0

    #@2b
    .line 1174
    return-void

    #@2c
    .line 1180
    :cond_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@2e
    monitor-enter v5

    #@2f
    .line 1181
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    #@32
    move-result v1

    #@33
    .line 1182
    .local v1, "phoneId":I
    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    #@36
    move-result v4

    #@37
    if-eqz v4, :cond_2

    #@39
    .line 1183
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    #@3b
    aput-object p2, v4, v1

    #@3d
    .line 1184
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@3f
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@42
    move-result-object v3

    #@43
    .local v3, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@46
    move-result v4

    #@47
    if-eqz v4, :cond_2

    #@49
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4c
    move-result-object v2

    #@4d
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    #@4f
    .line 1185
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x10

    #@51
    invoke-direct {p0, v2, v4}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    #@54
    move-result v4

    #@55
    if-eqz v4, :cond_1

    #@57
    .line 1186
    iget v4, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    #@59
    invoke-virtual {p0, v4, p1, v1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5c
    move-result v4

    #@5d
    .line 1185
    if-eqz v4, :cond_1

    #@5f
    .line 1192
    :try_start_1
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@61
    new-instance v6, Landroid/os/Bundle;

    #@63
    invoke-direct {v6, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@66
    invoke-interface {v4, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@69
    goto :goto_0

    #@6a
    .line 1193
    :catch_0
    move-exception v0

    #@6b
    .line 1194
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@6d
    iget-object v6, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@6f
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@72
    goto :goto_0

    #@73
    .line 1180
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "phoneId":I
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@74
    monitor-exit v5

    #@75
    throw v4

    #@76
    .line 1199
    .restart local v1    # "phoneId":I
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@79
    monitor-exit v5

    #@7a
    .line 1170
    return-void
.end method

.method public notifyDataActivity(I)V
    .locals 1
    .param p1, "state"    # I

    #@0
    .prologue
    .line 1010
    const v0, 0x7fffffff

    #@3
    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyDataActivityForSubscriber(II)V

    #@6
    .line 1009
    return-void
.end method

.method public notifyDataActivityForSubscriber(II)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "state"    # I

    #@0
    .prologue
    .line 1014
    const-string/jumbo v4, "notifyDataActivity()"

    #@3
    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    #@6
    move-result v4

    #@7
    if-nez v4, :cond_0

    #@9
    .line 1015
    return-void

    #@a
    .line 1017
    :cond_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@c
    monitor-enter v5

    #@d
    .line 1018
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    #@10
    move-result v1

    #@11
    .line 1019
    .local v1, "phoneId":I
    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_2

    #@17
    .line 1020
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    #@19
    aput p2, v4, v1

    #@1b
    .line 1021
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@1d
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v3

    #@21
    .local v3, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_2

    #@27
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    #@2d
    .line 1022
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x80

    #@2f
    invoke-virtual {v2, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_1

    #@35
    .line 1024
    :try_start_1
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@37
    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    goto :goto_0

    #@3b
    .line 1025
    :catch_0
    move-exception v0

    #@3c
    .line 1026
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@3e
    iget-object v6, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@40
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@43
    goto :goto_0

    #@44
    .line 1017
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "phoneId":I
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@45
    monitor-exit v5

    #@46
    throw v4

    #@47
    .line 1031
    .restart local v1    # "phoneId":I
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4a
    monitor-exit v5

    #@4b
    .line 1013
    return-void
.end method

.method public notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V
    .locals 11
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p8, "networkType"    # I
    .param p9, "roaming"    # Z

    #@0
    .prologue
    .line 1038
    const v1, 0x7fffffff

    #@3
    move-object v0, p0

    #@4
    move v2, p1

    #@5
    move v3, p2

    #@6
    move-object v4, p3

    #@7
    move-object v5, p4

    #@8
    move-object/from16 v6, p5

    #@a
    move-object/from16 v7, p6

    #@c
    move-object/from16 v8, p7

    #@e
    move/from16 v9, p8

    #@10
    move/from16 v10, p9

    #@12
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/TelephonyRegistry;->notifyDataConnectionForSubscriber(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V

    #@15
    .line 1037
    return-void
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1132
    const v0, 0x7fffffff

    #@3
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/TelephonyRegistry;->notifyDataConnectionFailedForSubscriber(ILjava/lang/String;Ljava/lang/String;)V

    #@6
    .line 1131
    return-void
.end method

.method public notifyDataConnectionFailedForSubscriber(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "subId"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1138
    const-string/jumbo v0, "notifyDataConnectionFailed()"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1139
    return-void

    #@a
    .line 1145
    :cond_0
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@c
    monitor-enter v11

    #@d
    .line 1146
    :try_start_0
    new-instance v0, Landroid/telephony/PreciseDataConnectionState;

    #@f
    .line 1148
    const-string/jumbo v4, ""

    #@12
    const-string/jumbo v7, ""

    #@15
    .line 1147
    const/4 v1, -0x1

    #@16
    const/4 v2, 0x0

    #@17
    .line 1148
    const/4 v6, 0x0

    #@18
    move-object v3, p3

    #@19
    move-object v5, p2

    #@1a
    .line 1146
    invoke-direct/range {v0 .. v7}, Landroid/telephony/PreciseDataConnectionState;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    #@1d
    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    #@1f
    .line 1149
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v10

    #@25
    .local v10, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_2

    #@2b
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v9

    #@2f
    check-cast v9, Lcom/android/server/TelephonyRegistry$Record;

    #@31
    .line 1151
    .local v9, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v0, 0x1000

    #@33
    .line 1150
    invoke-virtual {v9, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_1

    #@39
    .line 1153
    :try_start_1
    iget-object v0, v9, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@3b
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    #@3d
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    goto :goto_0

    #@41
    .line 1154
    :catch_0
    move-exception v8

    #@42
    .line 1155
    .local v8, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@44
    iget-object v1, v9, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@49
    goto :goto_0

    #@4a
    .line 1145
    .end local v8    # "ex":Landroid/os/RemoteException;
    .end local v9    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v10    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    #@4b
    monitor-exit v11

    #@4c
    throw v0

    #@4d
    .line 1159
    .restart local v10    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@50
    monitor-exit v11

    #@51
    .line 1161
    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V

    #@54
    .line 1163
    const-string/jumbo v4, ""

    #@57
    const-string/jumbo v7, ""

    #@5a
    .line 1162
    const/4 v1, -0x1

    #@5b
    .line 1163
    const/4 v2, 0x0

    #@5c
    const/4 v6, 0x0

    #@5d
    move-object v0, p0

    #@5e
    move-object v3, p3

    #@5f
    move-object v5, p2

    #@60
    .line 1162
    invoke-direct/range {v0 .. v7}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    #@63
    .line 1137
    return-void
.end method

.method public notifyDataConnectionForSubscriber(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V
    .locals 17
    .param p1, "subId"    # I
    .param p2, "state"    # I
    .param p3, "isDataConnectivityPossible"    # Z
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "apn"    # Ljava/lang/String;
    .param p6, "apnType"    # Ljava/lang/String;
    .param p7, "linkProperties"    # Landroid/net/LinkProperties;
    .param p8, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p9, "networkType"    # I
    .param p10, "roaming"    # Z

    #@0
    .prologue
    .line 1047
    const-string/jumbo v2, "notifyDataConnection()"

    #@3
    move-object/from16 v0, p0

    #@5
    invoke-direct {v0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_0

    #@b
    .line 1048
    return-void

    #@c
    .line 1057
    :cond_0
    move-object/from16 v0, p0

    #@e
    iget-object v10, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@10
    monitor-enter v10

    #@11
    .line 1058
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    #@14
    move-result v14

    #@15
    .line 1059
    .local v14, "phoneId":I
    move-object/from16 v0, p0

    #@17
    invoke-direct {v0, v14}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_8

    #@1d
    .line 1060
    const/4 v13, 0x0

    #@1e
    .line 1061
    .local v13, "modified":Z
    const/4 v2, 0x2

    #@1f
    move/from16 v0, p2

    #@21
    if-ne v0, v2, :cond_4

    #@23
    .line 1062
    move-object/from16 v0, p0

    #@25
    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    #@27
    move-object/from16 v0, p6

    #@29
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@2c
    move-result v2

    #@2d
    if-nez v2, :cond_1

    #@2f
    .line 1063
    move-object/from16 v0, p0

    #@31
    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    #@33
    move-object/from16 v0, p6

    #@35
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@38
    .line 1064
    move-object/from16 v0, p0

    #@3a
    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    #@3c
    aget v2, v2, v14

    #@3e
    move/from16 v0, p2

    #@40
    if-eq v2, v0, :cond_1

    #@42
    .line 1065
    move-object/from16 v0, p0

    #@44
    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    #@46
    aput p2, v2, v14

    #@48
    .line 1066
    const/4 v13, 0x1

    #@49
    .line 1080
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    #@4b
    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:[Z

    #@4d
    aput-boolean p3, v2, v14

    #@4f
    .line 1081
    move-object/from16 v0, p0

    #@51
    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:[Ljava/lang/String;

    #@53
    aput-object p4, v2, v14

    #@55
    .line 1082
    move-object/from16 v0, p0

    #@57
    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:[Landroid/net/LinkProperties;

    #@59
    aput-object p7, v2, v14

    #@5b
    .line 1083
    move-object/from16 v0, p0

    #@5d
    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkCapabilities:[Landroid/net/NetworkCapabilities;

    #@5f
    aput-object p8, v2, v14

    #@61
    .line 1084
    move-object/from16 v0, p0

    #@63
    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    #@65
    aget v2, v2, v14

    #@67
    move/from16 v0, p9

    #@69
    if-eq v2, v0, :cond_2

    #@6b
    .line 1085
    move-object/from16 v0, p0

    #@6d
    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    #@6f
    aput p9, v2, v14

    #@71
    .line 1087
    const/4 v13, 0x1

    #@72
    .line 1089
    :cond_2
    if-eqz v13, :cond_6

    #@74
    .line 1094
    move-object/from16 v0, p0

    #@76
    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@78
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7b
    move-result-object v16

    #@7c
    .local v16, "r$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@7f
    move-result v2

    #@80
    if-eqz v2, :cond_5

    #@82
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@85
    move-result-object v15

    #@86
    check-cast v15, Lcom/android/server/TelephonyRegistry$Record;

    #@88
    .line 1096
    .local v15, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v2, 0x40

    #@8a
    .line 1095
    invoke-virtual {v15, v2}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    #@8d
    move-result v2

    #@8e
    if-eqz v2, :cond_3

    #@90
    .line 1097
    iget v2, v15, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    #@92
    move-object/from16 v0, p0

    #@94
    move/from16 v1, p1

    #@96
    invoke-virtual {v0, v2, v1, v14}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@99
    move-result v2

    #@9a
    .line 1095
    if-eqz v2, :cond_3

    #@9c
    .line 1099
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v3, "Notify data connection state changed on sub: "

    #@a4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v2

    #@a8
    move/from16 v0, p1

    #@aa
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v2

    #@ae
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v2

    #@b2
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    #@b5
    .line 1101
    iget-object v2, v15, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@b7
    move-object/from16 v0, p0

    #@b9
    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    #@bb
    aget v3, v3, v14

    #@bd
    .line 1102
    move-object/from16 v0, p0

    #@bf
    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    #@c1
    aget v4, v4, v14

    #@c3
    .line 1101
    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c6
    goto :goto_1

    #@c7
    .line 1103
    :catch_0
    move-exception v12

    #@c8
    .line 1104
    .local v12, "ex":Landroid/os/RemoteException;
    :try_start_2
    move-object/from16 v0, p0

    #@ca
    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@cc
    iget-object v3, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@ce
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@d1
    goto :goto_1

    #@d2
    .line 1057
    .end local v12    # "ex":Landroid/os/RemoteException;
    .end local v13    # "modified":Z
    .end local v14    # "phoneId":I
    .end local v15    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v16    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@d3
    monitor-exit v10

    #@d4
    throw v2

    #@d5
    .line 1070
    .restart local v13    # "modified":Z
    .restart local v14    # "phoneId":I
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    #@d7
    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    #@d9
    move-object/from16 v0, p6

    #@db
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@de
    move-result v2

    #@df
    if-eqz v2, :cond_1

    #@e1
    .line 1071
    move-object/from16 v0, p0

    #@e3
    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:Ljava/util/ArrayList;

    #@e5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@e8
    move-result v2

    #@e9
    if-eqz v2, :cond_1

    #@eb
    .line 1072
    move-object/from16 v0, p0

    #@ed
    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    #@ef
    aput p2, v2, v14

    #@f1
    .line 1073
    const/4 v13, 0x1

    #@f2
    goto/16 :goto_0

    #@f4
    .line 1108
    .restart local v16    # "r$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    #@f7
    .line 1110
    .end local v16    # "r$iterator":Ljava/util/Iterator;
    :cond_6
    new-instance v2, Landroid/telephony/PreciseDataConnectionState;

    #@f9
    .line 1111
    const-string/jumbo v9, ""

    #@fc
    move/from16 v3, p2

    #@fe
    move/from16 v4, p9

    #@100
    move-object/from16 v5, p6

    #@102
    move-object/from16 v6, p5

    #@104
    move-object/from16 v7, p4

    #@106
    move-object/from16 v8, p7

    #@108
    .line 1110
    invoke-direct/range {v2 .. v9}, Landroid/telephony/PreciseDataConnectionState;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    #@10b
    move-object/from16 v0, p0

    #@10d
    iput-object v2, v0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    #@10f
    .line 1112
    move-object/from16 v0, p0

    #@111
    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@113
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@116
    move-result-object v16

    #@117
    .restart local v16    # "r$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@11a
    move-result v2

    #@11b
    if-eqz v2, :cond_8

    #@11d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@120
    move-result-object v15

    #@121
    check-cast v15, Lcom/android/server/TelephonyRegistry$Record;

    #@123
    .line 1114
    .restart local v15    # "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v2, 0x1000

    #@125
    .line 1113
    invoke-virtual {v15, v2}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@128
    move-result v2

    #@129
    if-eqz v2, :cond_7

    #@12b
    .line 1116
    :try_start_4
    iget-object v2, v15, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@12d
    move-object/from16 v0, p0

    #@12f
    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    #@131
    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@134
    goto :goto_2

    #@135
    .line 1117
    :catch_1
    move-exception v12

    #@136
    .line 1118
    .restart local v12    # "ex":Landroid/os/RemoteException;
    :try_start_5
    move-object/from16 v0, p0

    #@138
    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@13a
    iget-object v3, v15, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@13c
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13f
    goto :goto_2

    #@140
    .line 1123
    .end local v12    # "ex":Landroid/os/RemoteException;
    .end local v13    # "modified":Z
    .end local v15    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v16    # "r$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@143
    monitor-exit v10

    #@144
    move-object/from16 v2, p0

    #@146
    move/from16 v3, p2

    #@148
    move/from16 v4, p3

    #@14a
    move-object/from16 v5, p4

    #@14c
    move-object/from16 v6, p5

    #@14e
    move-object/from16 v7, p6

    #@150
    move-object/from16 v8, p7

    #@152
    move-object/from16 v9, p8

    #@154
    move/from16 v10, p10

    #@156
    move/from16 v11, p1

    #@158
    .line 1125
    invoke-direct/range {v2 .. v11}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ZI)V

    #@15b
    .line 1128
    const-string/jumbo v9, ""

    #@15e
    move-object/from16 v2, p0

    #@160
    move/from16 v3, p2

    #@162
    move/from16 v4, p9

    #@164
    move-object/from16 v5, p6

    #@166
    move-object/from16 v6, p5

    #@168
    move-object/from16 v7, p4

    #@16a
    move-object/from16 v8, p7

    #@16c
    .line 1127
    invoke-direct/range {v2 .. v9}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    #@16f
    .line 1046
    return-void
.end method

.method public notifyDataConnectionRealTimeInfo(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 6
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    #@0
    .prologue
    .line 925
    const-string/jumbo v3, "notifyDataConnectionRealTimeInfo()"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    #@6
    move-result v3

    #@7
    if-nez v3, :cond_0

    #@9
    .line 926
    return-void

    #@a
    .line 929
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@c
    monitor-enter v4

    #@d
    .line 930
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

    #@f
    .line 931
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@11
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v2

    #@15
    .local v2, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_2

    #@1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    #@21
    .line 933
    .local v1, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x2000

    #@23
    .line 932
    invoke-direct {p0, v1, v3}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_1

    #@29
    .line 939
    :try_start_1
    iget-object v3, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@2b
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

    #@2d
    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    goto :goto_0

    #@31
    .line 940
    :catch_0
    move-exception v0

    #@32
    .line 941
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@34
    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@36
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@39
    goto :goto_0

    #@3a
    .line 929
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v2    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@3b
    monitor-exit v4

    #@3c
    throw v3

    #@3d
    .line 945
    .restart local v2    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@40
    monitor-exit v4

    #@41
    .line 924
    return-void
.end method

.method public notifyDisconnectCause(II)V
    .locals 10
    .param p1, "disconnectCause"    # I
    .param p2, "preciseDisconnectCause"    # I

    #@0
    .prologue
    .line 1252
    const-string/jumbo v0, "notifyDisconnectCause()"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1253
    return-void

    #@a
    .line 1255
    :cond_0
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@c
    monitor-enter v9

    #@d
    .line 1256
    :try_start_0
    new-instance v0, Landroid/telephony/PreciseCallState;

    #@f
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:I

    #@11
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:I

    #@13
    .line 1257
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:I

    #@15
    move v4, p1

    #@16
    move v5, p2

    #@17
    .line 1256
    invoke-direct/range {v0 .. v5}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    #@1a
    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    #@1c
    .line 1258
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@1e
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v8

    #@22
    .local v8, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_2

    #@28
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v7

    #@2c
    check-cast v7, Lcom/android/server/TelephonyRegistry$Record;

    #@2e
    .line 1259
    .local v7, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v0, 0x800

    #@30
    invoke-virtual {v7, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    move-result v0

    #@34
    if-eqz v0, :cond_1

    #@36
    .line 1261
    :try_start_1
    iget-object v0, v7, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@38
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    #@3a
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    goto :goto_0

    #@3e
    .line 1262
    :catch_0
    move-exception v6

    #@3f
    .line 1263
    .local v6, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@41
    iget-object v1, v7, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@46
    goto :goto_0

    #@47
    .line 1255
    .end local v6    # "ex":Landroid/os/RemoteException;
    .end local v7    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v8    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    #@48
    monitor-exit v9

    #@49
    throw v0

    #@4a
    .line 1267
    .restart local v8    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4d
    monitor-exit v9

    #@4e
    .line 1269
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:I

    #@50
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:I

    #@52
    .line 1270
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:I

    #@54
    move-object v0, p0

    #@55
    move v4, p1

    #@56
    move v5, p2

    #@57
    .line 1269
    invoke-direct/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseCallStateChanged(IIIII)V

    #@5a
    .line 1251
    return-void
.end method

.method public notifyMessageWaitingChangedForPhoneId(IIZ)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "mwi"    # Z

    #@0
    .prologue
    .line 951
    const-string/jumbo v3, "notifyMessageWaitingChanged()"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    #@6
    move-result v3

    #@7
    if-nez v3, :cond_0

    #@9
    .line 952
    return-void

    #@a
    .line 958
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@c
    monitor-enter v4

    #@d
    .line 959
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_2

    #@13
    .line 960
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    #@15
    aput-boolean p3, v3, p1

    #@17
    .line 961
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@19
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v2

    #@1d
    .local v2, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_2

    #@23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    #@29
    .line 963
    .local v1, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/4 v3, 0x4

    #@2a
    .line 962
    invoke-virtual {v1, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_1

    #@30
    .line 964
    iget v3, v1, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    #@32
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    move-result v3

    #@36
    .line 962
    if-eqz v3, :cond_1

    #@38
    .line 966
    :try_start_1
    iget-object v3, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@3a
    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    goto :goto_0

    #@3e
    .line 967
    :catch_0
    move-exception v0

    #@3f
    .line 968
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@41
    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@43
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@46
    goto :goto_0

    #@47
    .line 958
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v2    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@48
    monitor-exit v4

    #@49
    throw v3

    #@4a
    .line 973
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4d
    monitor-exit v4

    #@4e
    .line 950
    return-void
.end method

.method public notifyOemHookRawEventForSubscriber(I[B)V
    .locals 6
    .param p1, "subId"    # I
    .param p2, "rawData"    # [B

    #@0
    .prologue
    .line 1319
    const-string/jumbo v3, "notifyOemHookRawEventForSubscriber"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    #@6
    move-result v3

    #@7
    if-nez v3, :cond_0

    #@9
    .line 1320
    return-void

    #@a
    .line 1323
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@c
    monitor-enter v4

    #@d
    .line 1324
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@f
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v2

    #@13
    .local v2, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_3

    #@19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    #@1f
    .line 1329
    .local v1, "r":Lcom/android/server/TelephonyRegistry$Record;
    const v3, 0x8000

    #@22
    .line 1328
    invoke-virtual {v1, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_1

    #@28
    .line 1330
    iget v3, v1, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    #@2a
    if-eq v3, p1, :cond_2

    #@2c
    .line 1331
    iget v3, v1, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    const v5, 0x7fffffff

    #@31
    if-ne v3, v5, :cond_1

    #@33
    .line 1333
    :cond_2
    :try_start_1
    iget-object v3, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@35
    invoke-interface {v3, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onOemHookRawEvent([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .line 1334
    :catch_0
    move-exception v0

    #@3a
    .line 1335
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@3c
    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@3e
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@41
    goto :goto_0

    #@42
    .line 1323
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v2    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@43
    monitor-exit v4

    #@44
    throw v3

    #@45
    .line 1339
    .restart local v2    # "r$iterator":Ljava/util/Iterator;
    :cond_3
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@48
    monitor-exit v4

    #@49
    .line 1318
    return-void
.end method

.method public notifyOtaspChanged(I)V
    .locals 6
    .param p1, "otaspMode"    # I

    #@0
    .prologue
    .line 1204
    const-string/jumbo v3, "notifyOtaspChanged()"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    #@6
    move-result v3

    #@7
    if-nez v3, :cond_0

    #@9
    .line 1205
    return-void

    #@a
    .line 1207
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@c
    monitor-enter v4

    #@d
    .line 1208
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    #@f
    .line 1209
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@11
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v2

    #@15
    .local v2, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_2

    #@1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    #@21
    .line 1210
    .local v1, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x200

    #@23
    invoke-virtual {v1, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_1

    #@29
    .line 1212
    :try_start_1
    iget-object v3, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@2b
    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 1213
    :catch_0
    move-exception v0

    #@30
    .line 1214
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@32
    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@34
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 1207
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v2    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@39
    monitor-exit v4

    #@3a
    throw v3

    #@3b
    .line 1218
    .restart local v2    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3e
    monitor-exit v4

    #@3f
    .line 1203
    return-void
.end method

.method public notifyPreciseCallState(III)V
    .locals 11
    .param p1, "ringingCallState"    # I
    .param p2, "foregroundCallState"    # I
    .param p3, "backgroundCallState"    # I

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    .line 1224
    const-string/jumbo v0, "notifyPreciseCallState()"

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 1225
    return-void

    #@b
    .line 1227
    :cond_0
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@d
    monitor-enter v9

    #@e
    .line 1228
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:I

    #@10
    .line 1229
    iput p2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:I

    #@12
    .line 1230
    iput p3, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:I

    #@14
    .line 1231
    new-instance v0, Landroid/telephony/PreciseCallState;

    #@16
    .line 1233
    const/4 v4, -0x1

    #@17
    .line 1234
    const/4 v5, -0x1

    #@18
    move v1, p1

    #@19
    move v2, p2

    #@1a
    move v3, p3

    #@1b
    .line 1231
    invoke-direct/range {v0 .. v5}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    #@1e
    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    #@20
    .line 1235
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@22
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v8

    #@26
    .local v8, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_2

    #@2c
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v7

    #@30
    check-cast v7, Lcom/android/server/TelephonyRegistry$Record;

    #@32
    .line 1236
    .local v7, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v0, 0x800

    #@34
    invoke-virtual {v7, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_1

    #@3a
    .line 1238
    :try_start_1
    iget-object v0, v7, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@3c
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    #@3e
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    goto :goto_0

    #@42
    .line 1239
    :catch_0
    move-exception v6

    #@43
    .line 1240
    .local v6, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@45
    iget-object v1, v7, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4a
    goto :goto_0

    #@4b
    .line 1227
    .end local v6    # "ex":Landroid/os/RemoteException;
    .end local v7    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v8    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    #@4c
    monitor-exit v9

    #@4d
    throw v0

    #@4e
    .line 1244
    .restart local v8    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@51
    monitor-exit v9

    #@52
    move-object v0, p0

    #@53
    move v1, p1

    #@54
    move v2, p2

    #@55
    move v3, p3

    #@56
    move v4, v10

    #@57
    move v5, v10

    #@58
    .line 1246
    invoke-direct/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseCallStateChanged(IIIII)V

    #@5b
    .line 1223
    return-void
.end method

.method public notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "failCause"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1275
    const-string/jumbo v0, "notifyPreciseDataConnectionFailed()"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1276
    return-void

    #@a
    .line 1278
    :cond_0
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@c
    monitor-enter v11

    #@d
    .line 1279
    :try_start_0
    new-instance v0, Landroid/telephony/PreciseDataConnectionState;

    #@f
    .line 1280
    const/4 v1, -0x1

    #@10
    const/4 v2, 0x0

    #@11
    .line 1281
    const/4 v6, 0x0

    #@12
    move-object v3, p2

    #@13
    move-object v4, p3

    #@14
    move-object v5, p1

    #@15
    move-object/from16 v7, p4

    #@17
    .line 1279
    invoke-direct/range {v0 .. v7}, Landroid/telephony/PreciseDataConnectionState;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    #@1a
    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    #@1c
    .line 1282
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@1e
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v10

    #@22
    .local v10, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_2

    #@28
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v9

    #@2c
    check-cast v9, Lcom/android/server/TelephonyRegistry$Record;

    #@2e
    .line 1284
    .local v9, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v0, 0x1000

    #@30
    .line 1283
    invoke-virtual {v9, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    move-result v0

    #@34
    if-eqz v0, :cond_1

    #@36
    .line 1286
    :try_start_1
    iget-object v0, v9, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@38
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    #@3a
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    goto :goto_0

    #@3e
    .line 1287
    :catch_0
    move-exception v8

    #@3f
    .line 1288
    .local v8, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@41
    iget-object v1, v9, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@46
    goto :goto_0

    #@47
    .line 1278
    .end local v8    # "ex":Landroid/os/RemoteException;
    .end local v9    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v10    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    #@48
    monitor-exit v11

    #@49
    throw v0

    #@4a
    .line 1292
    .restart local v10    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4d
    monitor-exit v11

    #@4e
    .line 1294
    const/4 v1, -0x1

    #@4f
    .line 1295
    const/4 v2, 0x0

    #@50
    const/4 v6, 0x0

    #@51
    move-object v0, p0

    #@52
    move-object v3, p2

    #@53
    move-object v4, p3

    #@54
    move-object v5, p1

    #@55
    move-object/from16 v7, p4

    #@57
    .line 1294
    invoke-direct/range {v0 .. v7}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    #@5a
    .line 1274
    return-void
.end method

.method public notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "state"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    .line 762
    const-string/jumbo v3, "notifyServiceState()"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    #@6
    move-result v3

    #@7
    if-nez v3, :cond_0

    #@9
    .line 763
    return-void

    #@a
    .line 766
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@c
    monitor-enter v4

    #@d
    .line 771
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_2

    #@13
    .line 772
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    #@15
    aput-object p3, v3, p1

    #@17
    .line 773
    const-string/jumbo v3, "notifyServiceStateForSubscriber"

    #@1a
    invoke-direct {p0, v3, p2, p1, p3}, Lcom/android/server/TelephonyRegistry;->logServiceStateChanged(Ljava/lang/String;IILandroid/telephony/ServiceState;)V

    #@1d
    .line 776
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@1f
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@22
    move-result-object v2

    #@23
    .local v2, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_3

    #@29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v1

    #@2d
    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    #@2f
    .line 781
    .local v1, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/4 v3, 0x1

    #@30
    invoke-virtual {v1, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_1

    #@36
    .line 782
    iget v3, v1, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    #@38
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    move-result v3

    #@3c
    .line 781
    if-eqz v3, :cond_1

    #@3e
    .line 789
    :try_start_1
    iget-object v3, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@40
    new-instance v5, Landroid/telephony/ServiceState;

    #@42
    invoke-direct {v5, p3}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    #@45
    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    goto :goto_0

    #@49
    .line 790
    :catch_0
    move-exception v0

    #@4a
    .line 791
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@4c
    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@4e
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    goto :goto_0

    #@52
    .line 766
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v2    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@53
    monitor-exit v4

    #@54
    throw v3

    #@55
    .line 796
    :cond_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v5, "notifyServiceStateForSubscriber: INVALID phoneId="

    #@5d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v3

    #@61
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v3

    #@65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v3

    #@69
    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    #@6c
    .line 798
    :cond_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6f
    monitor-exit v4

    #@70
    .line 800
    invoke-direct {p0, p3, p2}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V

    #@73
    .line 761
    return-void
.end method

.method public notifySignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    #@0
    .prologue
    .line 804
    const v0, 0x7fffffff

    #@3
    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifySignalStrengthForSubscriber(ILandroid/telephony/SignalStrength;)V

    #@6
    .line 803
    return-void
.end method

.method public notifySignalStrengthForSubscriber(ILandroid/telephony/SignalStrength;)V
    .locals 9
    .param p1, "subId"    # I
    .param p2, "signalStrength"    # Landroid/telephony/SignalStrength;

    #@0
    .prologue
    .line 809
    const-string/jumbo v6, "notifySignalStrength()"

    #@3
    invoke-direct {p0, v6}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    #@6
    move-result v6

    #@7
    if-nez v6, :cond_0

    #@9
    .line 810
    return-void

    #@a
    .line 817
    :cond_0
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@c
    monitor-enter v7

    #@d
    .line 818
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    #@10
    move-result v2

    #@11
    .line 819
    .local v2, "phoneId":I
    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    #@14
    move-result v6

    #@15
    if-eqz v6, :cond_4

    #@17
    .line 821
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    #@19
    aput-object p2, v6, v2

    #@1b
    .line 822
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@1d
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v4

    #@21
    .local v4, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v6

    #@25
    if-eqz v6, :cond_5

    #@27
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v3

    #@2b
    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    #@2d
    .line 828
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v6, 0x100

    #@2f
    .line 827
    invoke-virtual {v3, v6}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_2

    #@35
    .line 829
    iget v6, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    #@37
    invoke-virtual {p0, v6, p1, v2}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    move-result v6

    #@3b
    .line 827
    if-eqz v6, :cond_2

    #@3d
    .line 836
    :try_start_1
    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@3f
    new-instance v8, Landroid/telephony/SignalStrength;

    #@41
    invoke-direct {v8, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    #@44
    invoke-interface {v6, v8}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    .line 841
    :cond_2
    :goto_1
    const/4 v6, 0x2

    #@48
    :try_start_2
    invoke-virtual {v3, v6}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    #@4b
    move-result v6

    #@4c
    if-eqz v6, :cond_1

    #@4e
    .line 842
    iget v6, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    #@50
    invoke-virtual {p0, v6, p1, v2}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@53
    move-result v6

    #@54
    .line 841
    if-eqz v6, :cond_1

    #@56
    .line 844
    :try_start_3
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    #@59
    move-result v1

    #@5a
    .line 845
    .local v1, "gsmSignalStrength":I
    const/16 v6, 0x63

    #@5c
    if-ne v1, v6, :cond_3

    #@5e
    const/4 v5, -0x1

    #@5f
    .line 851
    .local v5, "ss":I
    :goto_2
    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@61
    invoke-interface {v6, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@64
    goto :goto_0

    #@65
    .line 852
    .end local v1    # "gsmSignalStrength":I
    .end local v5    # "ss":I
    :catch_0
    move-exception v0

    #@66
    .line 853
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_4
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@68
    iget-object v8, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@6a
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@6d
    goto :goto_0

    #@6e
    .line 817
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v2    # "phoneId":I
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    #@6f
    monitor-exit v7

    #@70
    throw v6

    #@71
    .line 837
    .restart local v2    # "phoneId":I
    .restart local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .restart local v4    # "r$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v0

    #@72
    .line 838
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_5
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@74
    iget-object v8, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@76
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@79
    goto :goto_1

    #@7a
    .line 845
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "gsmSignalStrength":I
    :cond_3
    move v5, v1

    #@7b
    .restart local v5    # "ss":I
    goto :goto_2

    #@7c
    .line 858
    .end local v1    # "gsmSignalStrength":I
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "r$iterator":Ljava/util/Iterator;
    .end local v5    # "ss":I
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v8, "notifySignalStrengthForSubscriber: invalid phoneId="

    #@84
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v6

    #@88
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v6

    #@8c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v6

    #@90
    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    #@93
    .line 860
    :cond_5
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@96
    monitor-exit v7

    #@97
    .line 862
    invoke-direct {p0, p2, p1}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V

    #@9a
    .line 808
    return-void
.end method

.method public notifySubscriptionInfoChanged()V
    .locals 6

    #@0
    .prologue
    .line 433
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@2
    monitor-enter v4

    #@3
    .line 434
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/TelephonyRegistry;->hasNotifySubscriptionInfoChangedOccurred:Z

    #@5
    if-nez v3, :cond_0

    #@7
    .line 435
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v5, "notifySubscriptionInfoChanged: first invocation mRecords.size="

    #@f
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    .line 436
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v5

    #@19
    .line 435
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    #@24
    .line 438
    :cond_0
    const/4 v3, 0x1

    #@25
    iput-boolean v3, p0, Lcom/android/server/TelephonyRegistry;->hasNotifySubscriptionInfoChangedOccurred:Z

    #@27
    .line 439
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@2c
    .line 440
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@2e
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v2

    #@32
    .local v2, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_2

    #@38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v1

    #@3c
    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    #@3e
    .line 441
    .local v1, "r":Lcom/android/server/TelephonyRegistry$Record;
    invoke-virtual {v1}, Lcom/android/server/TelephonyRegistry$Record;->matchOnSubscriptionsChangedListener()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    move-result v3

    #@42
    if-eqz v3, :cond_1

    #@44
    .line 444
    :try_start_1
    iget-object v3, v1, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    #@46
    invoke-interface {v3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    goto :goto_0

    #@4a
    .line 446
    :catch_0
    move-exception v0

    #@4b
    .line 448
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@4d
    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@4f
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@52
    goto :goto_0

    #@53
    .line 433
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v2    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@54
    monitor-exit v4

    #@55
    throw v3

    #@56
    .line 452
    .restart local v2    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@59
    monitor-exit v4

    #@5a
    .line 431
    return-void
.end method

.method public notifyVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    .locals 7
    .param p1, "lteState"    # Landroid/telephony/VoLteServiceState;

    #@0
    .prologue
    .line 1299
    const-string/jumbo v3, "notifyVoLteServiceStateChanged()"

    #@3
    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    #@6
    move-result v3

    #@7
    if-nez v3, :cond_0

    #@9
    .line 1300
    return-void

    #@a
    .line 1302
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@c
    monitor-enter v4

    #@d
    .line 1303
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mVoLteServiceState:Landroid/telephony/VoLteServiceState;

    #@f
    .line 1304
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    #@11
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v2

    #@15
    .local v2, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_2

    #@1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    #@21
    .line 1305
    .local v1, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x4000

    #@23
    invoke-virtual {v1, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_1

    #@29
    .line 1307
    :try_start_1
    iget-object v3, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@2b
    .line 1308
    new-instance v5, Landroid/telephony/VoLteServiceState;

    #@2d
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mVoLteServiceState:Landroid/telephony/VoLteServiceState;

    #@2f
    invoke-direct {v5, v6}, Landroid/telephony/VoLteServiceState;-><init>(Landroid/telephony/VoLteServiceState;)V

    #@32
    .line 1307
    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 1309
    :catch_0
    move-exception v0

    #@37
    .line 1310
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    #@39
    iget-object v5, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@3b
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 1302
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v2    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@40
    monitor-exit v4

    #@41
    throw v3

    #@42
    .line 1314
    .restart local v2    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@45
    monitor-exit v4

    #@46
    .line 1298
    return-void
.end method

.method public removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .locals 1
    .param p1, "pkgForDebug"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    #@0
    .prologue
    .line 427
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    #@7
    .line 425
    return-void
.end method

.method public systemRunning()V
    .locals 3

    #@0
    .prologue
    .line 346
    new-instance v0, Landroid/content/IntentFilter;

    #@2
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@5
    .line 347
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    #@8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@b
    .line 348
    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    #@e
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@11
    .line 349
    const-string/jumbo v1, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    #@14
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@17
    .line 350
    const-string/jumbo v1, "systemRunning register for intents"

    #@1a
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    #@1d
    .line 351
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    #@1f
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@21
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@24
    .line 344
    return-void
.end method
