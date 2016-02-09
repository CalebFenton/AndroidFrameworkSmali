.class public final Lcom/android/internal/telephony/dataconnection/DataConnection;
.super Lcom/android/internal/util/StateMachine;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;
    }
.end annotation


# static fields
.field static final BASE:I = 0x40000

.field private static final CMD_TO_STRING_COUNT:I = 0x11

.field private static final DBG:Z = true

.field private static final DEFAULT_DATA_RETRY_CONFIG:Ljava/lang/String; = "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

.field static final EVENT_BW_REFRESH_RESPONSE:I = 0x4000e

.field static final EVENT_CONNECT:I = 0x40000

.field static final EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED:I = 0x4000b

.field static final EVENT_DATA_CONNECTION_ROAM_OFF:I = 0x4000d

.field static final EVENT_DATA_CONNECTION_ROAM_ON:I = 0x4000c

.field static final EVENT_DATA_CONNECTION_VOICE_CALL_ENDED:I = 0x40010

.field static final EVENT_DATA_CONNECTION_VOICE_CALL_STARTED:I = 0x4000f

.field static final EVENT_DATA_STATE_CHANGED:I = 0x40007

.field static final EVENT_DEACTIVATE_DONE:I = 0x40003

.field static final EVENT_DISCONNECT:I = 0x40004

.field static final EVENT_DISCONNECT_ALL:I = 0x40006

.field static final EVENT_GET_LAST_FAIL_DONE:I = 0x40002

.field static final EVENT_LOST_CONNECTION:I = 0x40009

.field static final EVENT_RETRY_CONNECTION:I = 0x4000a

.field static final EVENT_RIL_CONNECTED:I = 0x40005

.field static final EVENT_SETUP_DATA_CONNECTION_DONE:I = 0x40001

.field static final EVENT_TEAR_DOWN_NOW:I = 0x40008

.field private static final NETWORK_TYPE:Ljava/lang/String; = "MOBILE"

.field private static final NULL_IP:Ljava/lang/String; = "0.0.0.0"

.field private static final SECONDARY_DATA_RETRY_CONFIG:Ljava/lang/String; = "max_retries=3, 5000, 5000, 5000"

.field private static final TCP_BUFFER_SIZES_1XRTT:Ljava/lang/String; = "16384,32768,131072,4096,16384,102400"

.field private static final TCP_BUFFER_SIZES_EDGE:Ljava/lang/String; = "4093,26280,70800,4096,16384,70800"

.field private static final TCP_BUFFER_SIZES_EHRPD:Ljava/lang/String; = "131072,262144,1048576,4096,16384,524288"

.field private static final TCP_BUFFER_SIZES_EVDO:Ljava/lang/String; = "4094,87380,262144,4096,16384,262144"

.field private static final TCP_BUFFER_SIZES_GPRS:Ljava/lang/String; = "4092,8760,48000,4096,8760,48000"

.field private static final TCP_BUFFER_SIZES_HSDPA:Ljava/lang/String; = "61167,367002,1101005,8738,52429,262114"

.field private static final TCP_BUFFER_SIZES_HSPA:Ljava/lang/String; = "40778,244668,734003,16777,100663,301990"

.field private static final TCP_BUFFER_SIZES_HSPAP:Ljava/lang/String; = "122334,734003,2202010,32040,192239,576717"

.field private static final TCP_BUFFER_SIZES_LTE:Ljava/lang/String; = "524288,1048576,2097152,262144,524288,1048576"

.field private static final TCP_BUFFER_SIZES_UMTS:Ljava/lang/String; = "58254,349525,1048576,58254,349525,1048576"

.field private static final VDBG:Z = true

.field private static mInstanceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sCmdToString:[Ljava/lang/String;


# instance fields
.field private mAc:Lcom/android/internal/util/AsyncChannel;

.field private mActivatingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

.field private mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

.field mApnContexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            ">;"
        }
    .end annotation
.end field

.field private mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field mCid:I

.field private mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

.field private mCreateTime:J

.field private mDataRegState:I

.field private mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

.field private mDcFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field private mDcRetryAlarmController:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

.field private mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

.field private mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

.field private mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

.field private mDisconnectParams:Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

.field private mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

.field private mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

.field private mId:I

.field private mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

.field private mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field private mLastFailTime:J

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkAgent:Landroid/net/NetworkAgent;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field protected mPcscfAddr:[Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field mReconnectIntent:Landroid/app/PendingIntent;

.field mRetryManager:Lcom/android/internal/telephony/RetryManager;

.field private mRetryingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

.field private mRilRat:I

.field mTag:I

.field private mUserData:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActivatingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectParams:Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mId:I

    #@2
    return v0
.end method

.method static synthetic -get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@2
    return-object v0
.end method

.method static synthetic -get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/LinkProperties;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    #@2
    return-object v0
.end method

.method static synthetic -get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@2
    return-object v0
.end method

.method static synthetic -get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get18(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    return-object v0
.end method

.method static synthetic -get19(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    #@2
    return-object v0
.end method

.method static synthetic -get20(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I

    #@2
    return v0
.end method

.method static synthetic -get6(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryAlarmController:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@2
    return-object p1
.end method

.method static synthetic -set10(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@2
    return-object p1
.end method

.method static synthetic -set11(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    #@2
    return-object p1
.end method

.method static synthetic -set12(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@2
    return-object p1
.end method

.method static synthetic -set13(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/PhoneBase;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    return-object p1
.end method

.method static synthetic -set14(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    #@2
    return p1
.end method

.method static synthetic -set15(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUserData:Ljava/lang/Object;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I

    #@2
    return p1
.end method

.method static synthetic -set4(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcController;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

    #@2
    return-object p1
.end method

.method static synthetic -set5(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@2
    return-object p1
.end method

.method static synthetic -set6(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryAlarmController:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    #@2
    return-object p1
.end method

.method static synthetic -set7(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@2
    return-object p1
.end method

.method static synthetic -set8(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2
    return-object p1
.end method

.method static synthetic -set9(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectParams:Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkCapabilities;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->makeNetworkCapabilities()Landroid/net/NetworkCapabilities;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Z
    .locals 1
    .param p1, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->initConnection(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllOfConnected(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllOfDisconnectDcRetrying(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;Z)V
    .locals 0
    .param p1, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .param p2, "cause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .param p3, "sendAll"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V
    .locals 0
    .param p1, "dp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .param p2, "sendAll"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V
    .locals 0
    .param p1, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->onConnect(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0

    #@0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->quit()V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->tearDownData(Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V
    .locals 0
    .param p1, "rilRat"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateTcpBufferSizes(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateNetworkInfoSuspendState()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/AsyncResult;)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap4(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p0, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->msgToString(Landroid/os/Message;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->clearSettings()V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->deferMessage(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->dumpToLog()V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->logAndAddLogRec(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    .locals 0
    .param p1, "cause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 108
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@3
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@6
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInstanceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    #@8
    .line 221
    const/16 v0, 0x11

    #@a
    new-array v0, v0, [Ljava/lang/String;

    #@c
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@e
    .line 223
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@10
    const-string/jumbo v1, "EVENT_CONNECT"

    #@13
    aput-object v1, v0, v2

    #@15
    .line 224
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@17
    .line 225
    const-string/jumbo v1, "EVENT_SETUP_DATA_CONNECTION_DONE"

    #@1a
    .line 224
    const/4 v2, 0x1

    #@1b
    aput-object v1, v0, v2

    #@1d
    .line 226
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@1f
    const-string/jumbo v1, "EVENT_GET_LAST_FAIL_DONE"

    #@22
    const/4 v2, 0x2

    #@23
    aput-object v1, v0, v2

    #@25
    .line 227
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@27
    const-string/jumbo v1, "EVENT_DEACTIVATE_DONE"

    #@2a
    const/4 v2, 0x3

    #@2b
    aput-object v1, v0, v2

    #@2d
    .line 228
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@2f
    const-string/jumbo v1, "EVENT_DISCONNECT"

    #@32
    const/4 v2, 0x4

    #@33
    aput-object v1, v0, v2

    #@35
    .line 229
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@37
    const-string/jumbo v1, "EVENT_RIL_CONNECTED"

    #@3a
    const/4 v2, 0x5

    #@3b
    aput-object v1, v0, v2

    #@3d
    .line 230
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@3f
    const-string/jumbo v1, "EVENT_DISCONNECT_ALL"

    #@42
    const/4 v2, 0x6

    #@43
    aput-object v1, v0, v2

    #@45
    .line 231
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@47
    const-string/jumbo v1, "EVENT_DATA_STATE_CHANGED"

    #@4a
    const/4 v2, 0x7

    #@4b
    aput-object v1, v0, v2

    #@4d
    .line 232
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@4f
    const-string/jumbo v1, "EVENT_TEAR_DOWN_NOW"

    #@52
    const/16 v2, 0x8

    #@54
    aput-object v1, v0, v2

    #@56
    .line 233
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@58
    const-string/jumbo v1, "EVENT_LOST_CONNECTION"

    #@5b
    const/16 v2, 0x9

    #@5d
    aput-object v1, v0, v2

    #@5f
    .line 234
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@61
    const-string/jumbo v1, "EVENT_RETRY_CONNECTION"

    #@64
    const/16 v2, 0xa

    #@66
    aput-object v1, v0, v2

    #@68
    .line 235
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@6a
    .line 236
    const-string/jumbo v1, "EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED"

    #@6d
    .line 235
    const/16 v2, 0xb

    #@6f
    aput-object v1, v0, v2

    #@71
    .line 237
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@73
    const-string/jumbo v1, "EVENT_DATA_CONNECTION_ROAM_ON"

    #@76
    const/16 v2, 0xc

    #@78
    aput-object v1, v0, v2

    #@7a
    .line 238
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@7c
    const-string/jumbo v1, "EVENT_DATA_CONNECTION_ROAM_OFF"

    #@7f
    const/16 v2, 0xd

    #@81
    aput-object v1, v0, v2

    #@83
    .line 239
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@85
    const-string/jumbo v1, "EVENT_BW_REFRESH_RESPONSE"

    #@88
    const/16 v2, 0xe

    #@8a
    aput-object v1, v0, v2

    #@8c
    .line 240
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@8e
    .line 241
    const-string/jumbo v1, "EVENT_DATA_CONNECTION_VOICE_CALL_STARTED"

    #@91
    .line 240
    const/16 v2, 0xf

    #@93
    aput-object v1, v0, v2

    #@95
    .line 242
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@97
    .line 243
    const-string/jumbo v1, "EVENT_DATA_CONNECTION_VOICE_CALL_ENDED"

    #@9a
    .line 242
    const/16 v2, 0x10

    #@9c
    aput-object v1, v0, v2

    #@9e
    .line 87
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;ILcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)V
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .param p5, "failBringUpAll"    # Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;
    .param p6, "dcc"    # Lcom/android/internal/telephony/dataconnection/DcController;

    #@0
    .prologue
    const v4, 0x7fffffff

    #@3
    const/4 v6, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 421
    invoke-virtual {p6}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    #@8
    move-result-object v2

    #@9
    invoke-direct {p0, p2, v2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    #@c
    .line 115
    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@e
    .line 179
    new-instance v2, Landroid/net/LinkProperties;

    #@10
    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    #@13
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    #@15
    .line 185
    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    #@17
    .line 186
    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I

    #@19
    .line 193
    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@1b
    .line 194
    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mReconnectIntent:Landroid/app/PendingIntent;

    #@1d
    .line 195
    new-instance v2, Lcom/android/internal/telephony/RetryManager;

    #@1f
    invoke-direct {v2}, Lcom/android/internal/telephony/RetryManager;-><init>()V

    #@22
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@24
    .line 1296
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    #@26
    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;)V

    #@29
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    #@2b
    .line 1412
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@2d
    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;)V

    #@30
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@32
    .line 1579
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

    #@34
    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;)V

    #@37
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

    #@39
    .line 1760
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    #@3b
    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;)V

    #@3e
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActivatingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    #@40
    .line 1956
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    #@42
    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;)V

    #@45
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    #@47
    .line 2006
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    #@49
    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;)V

    #@4c
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    #@4e
    .line 2052
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    #@50
    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;)V

    #@53
    .line 2051
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    #@55
    .line 422
    const/16 v2, 0x12c

    #@57
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setLogRecSize(I)V

    #@5a
    .line 423
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setLogOnlyTransitions(Z)V

    #@5d
    .line 424
    const-string/jumbo v2, "DataConnection constructor E"

    #@60
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@63
    .line 426
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@65
    .line 427
    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@67
    .line 428
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@69
    .line 429
    iput-object p6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

    #@6b
    .line 430
    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mId:I

    #@6d
    .line 431
    const/4 v2, -0x1

    #@6e
    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    #@70
    .line 432
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    #@72
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@74
    invoke-direct {v2, v3, p0}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    #@77
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryAlarmController:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    #@79
    .line 433
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@7b
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@7e
    move-result-object v1

    #@7f
    .line 434
    .local v1, "ss":Landroid/telephony/ServiceState;
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@82
    move-result v2

    #@83
    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    #@85
    .line 435
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@87
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@8a
    move-result-object v2

    #@8b
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@8e
    move-result v2

    #@8f
    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I

    #@91
    .line 436
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    #@94
    move-result v0

    #@95
    .line 437
    .local v0, "networkType":I
    new-instance v2, Landroid/net/NetworkInfo;

    #@97
    .line 438
    const-string/jumbo v3, "MOBILE"

    #@9a
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    #@9d
    move-result-object v4

    #@9e
    .line 437
    const/4 v5, 0x0

    #@9f
    invoke-direct {v2, v5, v0, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    #@a2
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@a4
    .line 439
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@a6
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@a9
    move-result v3

    #@aa
    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    #@ad
    .line 440
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@af
    invoke-virtual {v2, v6}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    #@b2
    .line 442
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    #@b4
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;)V

    #@b7
    .line 443
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@b9
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    #@bb
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@be
    .line 444
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActivatingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    #@c0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    #@c2
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@c5
    .line 445
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

    #@c7
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    #@c9
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@cc
    .line 446
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    #@ce
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    #@d0
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@d3
    .line 447
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    #@d5
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    #@d7
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@da
    .line 448
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    #@dc
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    #@de
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@e1
    .line 449
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@e3
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setInitialState(Lcom/android/internal/util/State;)V

    #@e6
    .line 451
    new-instance v2, Ljava/util/ArrayList;

    #@e8
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@eb
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@ed
    .line 452
    const-string/jumbo v2, "DataConnection constructor X"

    #@f0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@f3
    .line 420
    return-void
.end method

.method private checkSetMtu(Lcom/android/internal/telephony/dataconnection/ApnSetting;Landroid/net/LinkProperties;)V
    .locals 3
    .param p1, "apn"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 394
    if-nez p2, :cond_0

    #@2
    return-void

    #@3
    .line 396
    :cond_0
    if-eqz p1, :cond_1

    #@5
    if-nez p2, :cond_2

    #@7
    :cond_1
    return-void

    #@8
    .line 398
    :cond_2
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getMtu()I

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_3

    #@e
    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "MTU set by call response to: "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getMtu()I

    #@1d
    move-result v2

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@29
    .line 400
    return-void

    #@2a
    .line 403
    :cond_3
    if-eqz p1, :cond_4

    #@2c
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    #@2e
    if-eqz v1, :cond_4

    #@30
    .line 404
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    #@32
    invoke-virtual {p2, v1}, Landroid/net/LinkProperties;->setMtu(I)V

    #@35
    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v2, "MTU set by APN to: "

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    iget v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@4e
    .line 406
    return-void

    #@4f
    .line 409
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@51
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@58
    move-result-object v1

    #@59
    .line 410
    const v2, 0x10e0087

    #@5c
    .line 409
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@5f
    move-result v0

    #@60
    .line 411
    .local v0, "mtu":I
    if-eqz v0, :cond_5

    #@62
    .line 412
    invoke-virtual {p2, v0}, Landroid/net/LinkProperties;->setMtu(I)V

    #@65
    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v2, "MTU set by config resource to: "

    #@6d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v1

    #@79
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@7c
    .line 393
    :cond_5
    return-void
.end method

.method private clearSettings()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 748
    const-string/jumbo v0, "clearSettings"

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@9
    .line 750
    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    #@b
    .line 751
    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    #@d
    .line 752
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@f
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@11
    .line 753
    const/4 v0, -0x1

    #@12
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    #@14
    .line 755
    const/4 v0, 0x5

    #@15
    new-array v0, v0, [Ljava/lang/String;

    #@17
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPcscfAddr:[Ljava/lang/String;

    #@19
    .line 757
    new-instance v0, Landroid/net/LinkProperties;

    #@1b
    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    #@1e
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    #@20
    .line 758
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@22
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@25
    .line 759
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@27
    .line 760
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@29
    .line 747
    return-void
.end method

.method static cmdToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "cmd"    # I

    #@0
    .prologue
    const/high16 v3, 0x40000

    #@2
    .line 248
    sub-int/2addr p0, v3

    #@3
    .line 249
    if-ltz p0, :cond_1

    #@5
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@7
    array-length v1, v1

    #@8
    if-ge p0, v1, :cond_1

    #@a
    .line 250
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@c
    aget-object v0, v1, p0

    #@e
    .line 254
    .local v0, "value":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    #@10
    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "0x"

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    add-int v2, p0, v3

    #@1e
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    .line 257
    :cond_0
    return-object v0

    #@2b
    .line 252
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    add-int v1, p0, v3

    #@2d
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->cmdToString(I)Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method private configureRetry(Z)V
    .locals 6
    .param p1, "forDefault"    # Z

    #@0
    .prologue
    const/16 v5, 0x7d0

    #@2
    const/16 v4, 0x3e8

    #@4
    const/4 v3, 0x5

    #@5
    .line 484
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getRetryConfig(Z)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 486
    .local v0, "retryConfig":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@b
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    .line 487
    if-eqz p1, :cond_1

    #@13
    .line 488
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@15
    const-string/jumbo v2, "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    #@18
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    #@1b
    move-result v1

    #@1c
    if-nez v1, :cond_0

    #@1e
    .line 490
    const-string/jumbo v1, "configureRetry: Could not configure using DEFAULT_DATA_RETRY_CONFIG=default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    #@21
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    #@24
    .line 492
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@26
    invoke-virtual {v1, v3, v5, v4}, Lcom/android/internal/telephony/RetryManager;->configure(III)Z

    #@29
    .line 504
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v2, "configureRetry: forDefault="

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    const-string/jumbo v2, " mRetryManager="

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@4d
    .line 483
    return-void

    #@4e
    .line 495
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@50
    const-string/jumbo v2, "max_retries=3, 5000, 5000, 5000"

    #@53
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    #@56
    move-result v1

    #@57
    if-nez v1, :cond_0

    #@59
    .line 497
    const-string/jumbo v1, "configureRetry: Could note configure using SECONDARY_DATA_RETRY_CONFIG=max_retries=3, 5000, 5000, 5000"

    #@5c
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    #@5f
    .line 499
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@61
    invoke-virtual {v1, v3, v5, v4}, Lcom/android/internal/telephony/RetryManager;->configure(III)Z

    #@64
    goto :goto_0
.end method

.method private dumpToLog()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2240
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$1;

    #@3
    new-instance v1, Ljava/io/StringWriter;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    #@9
    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection$1;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/io/Writer;)V

    #@c
    invoke-virtual {p0, v3, v0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@f
    .line 2239
    return-void
.end method

.method private getRetryConfig(Z)Ljava/lang/String;
    .locals 3
    .param p1, "forDefault"    # Z

    #@0
    .prologue
    .line 456
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getNetworkType()I

    #@9
    move-result v1

    #@a
    .line 458
    .local v1, "nt":I
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 459
    const-string/jumbo v2, "test.data_retry_config"

    #@11
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 460
    .local v0, "config":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@18
    move-result v2

    #@19
    if-nez v2, :cond_0

    #@1b
    .line 461
    return-object v0

    #@1c
    .line 465
    .end local v0    # "config":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x4

    #@1d
    if-eq v1, v2, :cond_1

    #@1f
    .line 466
    const/4 v2, 0x7

    #@20
    if-ne v1, v2, :cond_2

    #@22
    .line 472
    :cond_1
    const-string/jumbo v2, "ro.cdma.data_retry_config"

    #@25
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    return-object v2

    #@2a
    .line 467
    :cond_2
    const/4 v2, 0x5

    #@2b
    if-eq v1, v2, :cond_1

    #@2d
    .line 468
    const/4 v2, 0x6

    #@2e
    if-eq v1, v2, :cond_1

    #@30
    .line 469
    const/16 v2, 0xc

    #@32
    if-eq v1, v2, :cond_1

    #@34
    .line 470
    const/16 v2, 0xe

    #@36
    if-eq v1, v2, :cond_1

    #@38
    .line 475
    if-eqz p1, :cond_3

    #@3a
    .line 476
    const-string/jumbo v2, "ro.gsm.data_retry_config"

    #@3d
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    return-object v2

    #@42
    .line 478
    :cond_3
    const-string/jumbo v2, "ro.gsm.2nd_data_retry_config"

    #@45
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    return-object v2
.end method

.method private initConnection(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Z
    .locals 4
    .param p1, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1024
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@3
    .line 1025
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 1028
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@d
    .line 1030
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@f
    if-eqz v1, :cond_2

    #@11
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@13
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 1037
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@1f
    add-int/lit8 v1, v1, 0x1

    #@21
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@23
    .line 1038
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@25
    .line 1039
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@27
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@29
    iput v2, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    #@2b
    .line 1041
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@2d
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@30
    move-result v1

    #@31
    if-nez v1, :cond_1

    #@33
    .line 1042
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@35
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@38
    .line 1044
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@3a
    const-string/jumbo v2, "default"

    #@3d
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    #@40
    move-result v1

    #@41
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->configureRetry(Z)V

    #@44
    .line 1045
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@46
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RetryManager;->setRetryCount(I)V

    #@49
    .line 1046
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@4b
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@4d
    iget v2, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mInitialMaxRetry:I

    #@4f
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RetryManager;->setCurMaxRetryCount(I)V

    #@52
    .line 1047
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@54
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RetryManager;->setRetryForever(Z)V

    #@57
    .line 1050
    new-instance v1, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v2, "initConnection:  RefCount="

    #@5f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    .line 1051
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@65
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@68
    move-result v2

    #@69
    .line 1050
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    .line 1052
    const-string/jumbo v2, " mApnList="

    #@70
    .line 1050
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v1

    #@74
    .line 1052
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@76
    .line 1050
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v1

    #@7a
    .line 1053
    const-string/jumbo v2, " mConnectionParams="

    #@7d
    .line 1050
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v1

    #@81
    .line 1053
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@83
    .line 1050
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v1

    #@8b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@8e
    .line 1055
    const/4 v1, 0x1

    #@8f
    return v1

    #@90
    .line 1032
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const-string/jumbo v2, "initConnection: incompatible apnSetting in ConnectionParams cp="

    #@98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v1

    #@9c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v1

    #@a0
    .line 1033
    const-string/jumbo v2, " dc="

    #@a3
    .line 1032
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v1

    #@a7
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v1

    #@ab
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v1

    #@af
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@b2
    .line 1035
    return v3
.end method

.method private isDnsOk([Ljava/lang/String;)Z
    .locals 5
    .param p1, "domainNameServers"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 812
    const-string/jumbo v0, "0.0.0.0"

    #@5
    aget-object v1, p1, v4

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    const-string/jumbo v0, "0.0.0.0"

    #@10
    aget-object v1, p1, v3

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 813
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@1a
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->isDnsCheckDisabled()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 828
    :cond_0
    return v3

    #@21
    .line 819
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@23
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@25
    aget-object v0, v0, v4

    #@27
    const-string/jumbo v1, "mms"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_2

    #@30
    .line 820
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@32
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    #@34
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isIpAddress(Ljava/lang/String;)Z

    #@37
    move-result v0

    #@38
    if-nez v0, :cond_0

    #@3a
    .line 822
    :cond_2
    const-string/jumbo v0, "isDnsOk: return false apn.types[0]=%s APN_TYPE_MMS=%s isIpAddress(%s)=%s"

    #@3d
    .line 821
    const/4 v1, 0x4

    #@3e
    new-array v1, v1, [Ljava/lang/Object;

    #@40
    .line 823
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@42
    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@44
    aget-object v2, v2, v4

    #@46
    aput-object v2, v1, v4

    #@48
    const-string/jumbo v2, "mms"

    #@4b
    aput-object v2, v1, v3

    #@4d
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@4f
    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    #@51
    const/4 v3, 0x2

    #@52
    aput-object v2, v1, v3

    #@54
    .line 824
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@56
    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    #@58
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isIpAddress(Ljava/lang/String;)Z

    #@5b
    move-result v2

    #@5c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5f
    move-result-object v2

    #@60
    const/4 v3, 0x3

    #@61
    aput-object v2, v1, v3

    #@63
    .line 821
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@66
    move-result-object v0

    #@67
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@6a
    .line 825
    return v4
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 997
    if-nez p1, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 999
    :cond_0
    sget-object v0, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    #@6
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method static makeDataConnection(Lcom/android/internal/telephony/PhoneBase;ILcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DataConnection;
    .locals 7
    .param p0, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p1, "id"    # I
    .param p2, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .param p3, "failBringUpAll"    # Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;
    .param p4, "dcc"    # Lcom/android/internal/telephony/dataconnection/DcController;

    #@0
    .prologue
    .line 270
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2
    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "DC-"

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInstanceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    #@10
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@13
    move-result v2

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    move-object v1, p0

    #@1d
    move v3, p1

    #@1e
    move-object v4, p2

    #@1f
    move-object v5, p3

    #@20
    move-object v6, p4

    #@21
    .line 270
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;ILcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)V

    #@24
    .line 272
    .local v0, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->start()V

    #@27
    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v2, "Made "

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@42
    .line 274
    return-object v0
.end method

.method private makeNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .locals 14

    #@0
    .prologue
    const/4 v13, 0x5

    #@1
    const/4 v12, 0x4

    #@2
    const/4 v11, 0x3

    #@3
    const/4 v10, 0x1

    #@4
    const/4 v6, 0x0

    #@5
    .line 912
    new-instance v1, Landroid/net/NetworkCapabilities;

    #@7
    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    #@a
    .line 913
    .local v1, "result":Landroid/net/NetworkCapabilities;
    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    #@d
    .line 915
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@f
    if-eqz v5, :cond_b

    #@11
    .line 916
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@13
    iget-object v7, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@15
    array-length v8, v7

    #@16
    move v5, v6

    #@17
    :goto_0
    if-ge v5, v8, :cond_a

    #@19
    aget-object v3, v7, v5

    #@1b
    .line 917
    .local v3, "type":Ljava/lang/String;
    const-string/jumbo v9, "*"

    #@1e
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v9

    #@22
    if-eqz v9, :cond_1

    #@24
    .line 919
    const/16 v9, 0xc

    #@26
    invoke-virtual {v1, v9}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@29
    .line 920
    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@2c
    .line 921
    invoke-virtual {v1, v10}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@2f
    .line 922
    invoke-virtual {v1, v11}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@32
    .line 923
    invoke-virtual {v1, v12}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@35
    .line 924
    invoke-virtual {v1, v13}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@38
    .line 925
    const/4 v9, 0x7

    #@39
    invoke-virtual {v1, v9}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@3c
    .line 916
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 917
    :cond_1
    const-string/jumbo v9, "default"

    #@42
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v9

    #@46
    if-eqz v9, :cond_2

    #@48
    .line 929
    const/16 v9, 0xc

    #@4a
    invoke-virtual {v1, v9}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@4d
    goto :goto_1

    #@4e
    .line 917
    :cond_2
    const-string/jumbo v9, "mms"

    #@51
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v9

    #@55
    if-eqz v9, :cond_3

    #@57
    .line 933
    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@5a
    goto :goto_1

    #@5b
    .line 917
    :cond_3
    const-string/jumbo v9, "supl"

    #@5e
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v9

    #@62
    if-eqz v9, :cond_4

    #@64
    .line 937
    invoke-virtual {v1, v10}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@67
    goto :goto_1

    #@68
    .line 917
    :cond_4
    const-string/jumbo v9, "dun"

    #@6b
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result v9

    #@6f
    if-eqz v9, :cond_6

    #@71
    .line 941
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@73
    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@76
    move-result-object v2

    #@77
    .line 942
    .local v2, "securedDunApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v2, :cond_5

    #@79
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@7b
    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v9

    #@7f
    if-eqz v9, :cond_0

    #@81
    .line 943
    :cond_5
    const/4 v9, 0x2

    #@82
    invoke-virtual {v1, v9}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@85
    goto :goto_1

    #@86
    .line 917
    .end local v2    # "securedDunApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_6
    const-string/jumbo v9, "fota"

    #@89
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8c
    move-result v9

    #@8d
    if-eqz v9, :cond_7

    #@8f
    .line 948
    invoke-virtual {v1, v11}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@92
    goto :goto_1

    #@93
    .line 917
    :cond_7
    const-string/jumbo v9, "ims"

    #@96
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@99
    move-result v9

    #@9a
    if-eqz v9, :cond_8

    #@9c
    .line 952
    invoke-virtual {v1, v12}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@9f
    goto :goto_1

    #@a0
    .line 917
    :cond_8
    const-string/jumbo v9, "cbs"

    #@a3
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a6
    move-result v9

    #@a7
    if-eqz v9, :cond_9

    #@a9
    .line 956
    invoke-virtual {v1, v13}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@ac
    goto :goto_1

    #@ad
    .line 917
    :cond_9
    const-string/jumbo v9, "ia"

    #@b0
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b3
    move-result v9

    #@b4
    if-eqz v9, :cond_0

    #@b6
    .line 960
    const/4 v9, 0x7

    #@b7
    invoke-virtual {v1, v9}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@ba
    goto :goto_1

    #@bb
    .line 966
    .end local v3    # "type":Ljava/lang/String;
    :cond_a
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->maybeMarkCapabilitiesRestricted()V

    #@be
    .line 968
    :cond_b
    const/16 v4, 0xe

    #@c0
    .line 969
    .local v4, "up":I
    const/16 v0, 0xe

    #@c2
    .line 970
    .local v0, "down":I
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    #@c4
    packed-switch v5, :pswitch_data_0

    #@c7
    .line 988
    :goto_2
    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)V

    #@ca
    .line 989
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)V

    #@cd
    .line 991
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@cf
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    #@d2
    move-result v5

    #@d3
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@d6
    move-result-object v5

    #@d7
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)V

    #@da
    .line 993
    return-object v1

    #@db
    .line 971
    :pswitch_0
    const/16 v4, 0x50

    #@dd
    const/16 v0, 0x50

    #@df
    goto :goto_2

    #@e0
    .line 972
    :pswitch_1
    const/16 v4, 0x3b

    #@e2
    const/16 v0, 0xec

    #@e4
    goto :goto_2

    #@e5
    .line 973
    :pswitch_2
    const/16 v4, 0x180

    #@e7
    const/16 v0, 0x180

    #@e9
    goto :goto_2

    #@ea
    .line 975
    :pswitch_3
    const/16 v4, 0xe

    #@ec
    const/16 v0, 0xe

    #@ee
    goto :goto_2

    #@ef
    .line 976
    :pswitch_4
    const/16 v4, 0x99

    #@f1
    const/16 v0, 0x999

    #@f3
    goto :goto_2

    #@f4
    .line 977
    :pswitch_5
    const/16 v4, 0x733

    #@f6
    const/16 v0, 0xc66

    #@f8
    goto :goto_2

    #@f9
    .line 978
    :pswitch_6
    const/16 v4, 0x64

    #@fb
    const/16 v0, 0x64

    #@fd
    goto :goto_2

    #@fe
    .line 979
    :pswitch_7
    const/16 v4, 0x800

    #@100
    const/16 v0, 0x3800

    #@102
    goto :goto_2

    #@103
    .line 980
    :pswitch_8
    const/16 v4, 0x170a

    #@105
    const/16 v0, 0x3800

    #@107
    goto :goto_2

    #@108
    .line 981
    :pswitch_9
    const/16 v4, 0x170a

    #@10a
    const/16 v0, 0x3800

    #@10c
    goto :goto_2

    #@10d
    .line 982
    :pswitch_a
    const/16 v4, 0x733

    #@10f
    const/16 v0, 0x1399

    #@111
    goto :goto_2

    #@112
    .line 983
    :pswitch_b
    const v4, 0xc800

    #@115
    const v0, 0x19000

    #@118
    goto :goto_2

    #@119
    .line 984
    :pswitch_c
    const/16 v4, 0x99

    #@11b
    const/16 v0, 0x9d4

    #@11d
    goto :goto_2

    #@11e
    .line 985
    :pswitch_d
    const/16 v4, 0x2c00

    #@120
    const v0, 0xa800

    #@123
    goto :goto_2

    #@124
    .line 970
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method private static msgToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 6
    .param p0, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2107
    if-nez p0, :cond_0

    #@2
    .line 2108
    const-string/jumbo v1, "null"

    #@5
    .line 2143
    .local v1, "retVal":Ljava/lang/String;
    :goto_0
    return-object v1

    #@6
    .line 2110
    .end local v1    # "retVal":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    .line 2112
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "{what="

    #@e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 2113
    iget v2, p0, Landroid/os/Message;->what:I

    #@13
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->cmdToString(I)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 2115
    const-string/jumbo v2, " when="

    #@1d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 2116
    invoke-virtual {p0}, Landroid/os/Message;->getWhen()J

    #@23
    move-result-wide v2

    #@24
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@27
    move-result-wide v4

    #@28
    sub-long/2addr v2, v4

    #@29
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@2c
    .line 2118
    iget v2, p0, Landroid/os/Message;->arg1:I

    #@2e
    if-eqz v2, :cond_1

    #@30
    .line 2119
    const-string/jumbo v2, " arg1="

    #@33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 2120
    iget v2, p0, Landroid/os/Message;->arg1:I

    #@38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    .line 2123
    :cond_1
    iget v2, p0, Landroid/os/Message;->arg2:I

    #@3d
    if-eqz v2, :cond_2

    #@3f
    .line 2124
    const-string/jumbo v2, " arg2="

    #@42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 2125
    iget v2, p0, Landroid/os/Message;->arg2:I

    #@47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    .line 2128
    :cond_2
    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4c
    if-eqz v2, :cond_3

    #@4e
    .line 2129
    const-string/jumbo v2, " obj="

    #@51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 2130
    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    .line 2133
    :cond_3
    const-string/jumbo v2, " target="

    #@5c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    .line 2134
    invoke-virtual {p0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    #@62
    move-result-object v2

    #@63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@66
    .line 2136
    const-string/jumbo v2, " replyTo="

    #@69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    .line 2137
    iget-object v2, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@6e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@71
    .line 2139
    const-string/jumbo v2, "}"

    #@74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    .line 2141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v1

    #@7b
    .restart local v1    # "retVal":Ljava/lang/String;
    goto :goto_0
.end method

.method private notifyAllDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    .locals 3
    .param p1, "cause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@0
    .prologue
    .line 634
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    const v2, 0x4200f

    #@8
    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    #@b
    .line 633
    return-void
.end method

.method private notifyAllOfConnected(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 627
    const/4 v0, 0x0

    #@1
    const v1, 0x42000

    #@4
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    #@7
    .line 626
    return-void
.end method

.method private notifyAllOfDisconnectDcRetrying(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 631
    const/4 v0, 0x0

    #@1
    const v1, 0x42022

    #@4
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    #@7
    .line 630
    return-void
.end method

.method private notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V
    .locals 6
    .param p1, "alreadySent"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "event"    # I
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 615
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@2
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@4
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@7
    move-result-object v4

    #@8
    .line 616
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@a
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@d
    move-result-object v5

    #@e
    .line 615
    invoke-virtual {v3, v4, p3, v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 617
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@13
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v1

    #@17
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_2

    #@1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@23
    .line 618
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eq v0, p1, :cond_0

    #@25
    .line 619
    if-eqz p3, :cond_1

    #@27
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@2a
    .line 620
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@2c
    invoke-virtual {v3, p2, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2f
    move-result-object v2

    #@30
    .line 621
    .local v2, "msg":Landroid/os/Message;
    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@33
    .line 622
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@36
    goto :goto_0

    #@37
    .line 614
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;Z)V
    .locals 6
    .param p1, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .param p2, "cause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .param p3, "sendAll"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 646
    const/4 v0, 0x0

    #@2
    .line 648
    .local v0, "alreadySent":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz p1, :cond_1

    #@4
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mOnCompletedMsg:Landroid/os/Message;

    #@6
    if-eqz v4, :cond_1

    #@8
    .line 650
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mOnCompletedMsg:Landroid/os/Message;

    #@a
    .line 651
    .local v1, "connectionCompletedMsg":Landroid/os/Message;
    iput-object v5, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mOnCompletedMsg:Landroid/os/Message;

    #@c
    .line 652
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e
    instance-of v4, v4, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@10
    if-eqz v4, :cond_0

    #@12
    .line 653
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14
    .end local v0    # "alreadySent":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@16
    .line 656
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@19
    move-result-wide v2

    #@1a
    .line 657
    .local v2, "timeStamp":J
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    #@1c
    iput v4, v1, Landroid/os/Message;->arg1:I

    #@1e
    .line 659
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@20
    if-ne p2, v4, :cond_3

    #@22
    .line 660
    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    #@24
    .line 661
    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@27
    .line 672
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v5, "notifyConnectCompleted at "

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    const-string/jumbo v5, " cause="

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    .line 673
    const-string/jumbo v5, " connectionCompletedMsg="

    #@45
    .line 672
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    .line 673
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->msgToString(Landroid/os/Message;)Ljava/lang/String;

    #@4c
    move-result-object v5

    #@4d
    .line 672
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@58
    .line 676
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@5b
    .line 678
    .end local v1    # "connectionCompletedMsg":Landroid/os/Message;
    .end local v2    # "timeStamp":J
    :cond_1
    if-eqz p3, :cond_2

    #@5d
    .line 680
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    #@60
    move-result-object v4

    #@61
    .line 679
    const v5, 0x42023

    #@64
    invoke-direct {p0, v0, v5, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    #@67
    .line 645
    :cond_2
    return-void

    #@68
    .line 663
    .restart local v1    # "connectionCompletedMsg":Landroid/os/Message;
    .restart local v2    # "timeStamp":J
    :cond_3
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@6a
    .line 664
    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    #@6c
    .line 667
    if-nez p2, :cond_4

    #@6e
    sget-object p2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@70
    .line 669
    :cond_4
    new-instance v4, Ljava/lang/Throwable;

    #@72
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    #@75
    move-result-object v5

    #@76
    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    #@79
    .line 668
    invoke-static {v1, p2, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@7c
    goto :goto_0
.end method

.method private notifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V
    .locals 7
    .param p1, "dp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .param p2, "sendAll"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 690
    const-string/jumbo v3, "NotifyDisconnectCompleted"

    #@4
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@7
    .line 692
    const/4 v0, 0x0

    #@8
    .line 693
    .local v0, "alreadySent":Lcom/android/internal/telephony/dataconnection/ApnContext;
    const/4 v2, 0x0

    #@9
    .line 695
    .local v2, "reason":Ljava/lang/String;
    if-eqz p1, :cond_1

    #@b
    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mOnCompletedMsg:Landroid/os/Message;

    #@d
    if-eqz v3, :cond_1

    #@f
    .line 697
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mOnCompletedMsg:Landroid/os/Message;

    #@11
    .line 698
    .local v1, "msg":Landroid/os/Message;
    iput-object v4, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mOnCompletedMsg:Landroid/os/Message;

    #@13
    .line 699
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@15
    instance-of v3, v3, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 700
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1b
    .end local v0    # "alreadySent":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@1d
    .line 702
    :cond_0
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    #@1f
    .line 704
    .local v2, "reason":Ljava/lang/String;
    const-string/jumbo v4, "msg=%s msg.obj=%s"

    #@22
    const/4 v3, 0x2

    #@23
    new-array v5, v3, [Ljava/lang/Object;

    #@25
    invoke-virtual {v1}, Landroid/os/Message;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    const/4 v6, 0x0

    #@2a
    aput-object v3, v5, v6

    #@2c
    .line 705
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2e
    instance-of v3, v3, Ljava/lang/String;

    #@30
    if-eqz v3, :cond_4

    #@32
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@34
    check-cast v3, Ljava/lang/String;

    #@36
    :goto_0
    const/4 v6, 0x1

    #@37
    aput-object v3, v5, v6

    #@39
    .line 704
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@40
    .line 707
    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@43
    .line 708
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@46
    .line 710
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "reason":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_3

    #@48
    .line 711
    if-nez v2, :cond_2

    #@4a
    .line 712
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@4c
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    .line 714
    :cond_2
    const v3, 0x4200f

    #@53
    invoke-direct {p0, v0, v3, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    #@56
    .line 716
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v4, "NotifyDisconnectCompleted DisconnectParams="

    #@5e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v3

    #@6a
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@6d
    .line 689
    return-void

    #@6e
    .line 705
    .restart local v1    # "msg":Landroid/os/Message;
    .restart local v2    # "reason":Ljava/lang/String;
    :cond_4
    const-string/jumbo v3, "<no-reason>"

    #@71
    goto :goto_0
.end method

.method private onConnect(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V
    .locals 14
    .param p1, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@0
    .prologue
    const-wide/16 v12, -0x1

    #@2
    const/4 v4, 0x0

    #@3
    const v3, 0x40001

    #@6
    const/4 v2, 0x0

    #@7
    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v1, "onConnect: carrier=\'"

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@15
    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 517
    const-string/jumbo v1, "\' APN=\'"

    #@1e
    .line 516
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 517
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@24
    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@26
    .line 516
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 518
    const-string/jumbo v1, "\' proxy=\'"

    #@2d
    .line 516
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    .line 518
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@33
    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@35
    .line 516
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 518
    const-string/jumbo v1, "\' port=\'"

    #@3c
    .line 516
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 518
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@42
    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    #@44
    .line 516
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    .line 518
    const-string/jumbo v1, "\'"

    #@4b
    .line 516
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@56
    .line 519
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@58
    if-eqz v0, :cond_0

    #@5a
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@5c
    const-string/jumbo v1, "DataConnection.onConnect"

    #@5f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@62
    .line 522
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@64
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    #@67
    move-result-object v0

    #@68
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mCounter:I

    #@6a
    if-lez v0, :cond_1

    #@6c
    .line 523
    new-instance v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@6e
    invoke-direct {v10}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;-><init>()V

    #@71
    .line 524
    .local v10, "response":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@73
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@75
    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRilVersion()I

    #@78
    move-result v0

    #@79
    iput v0, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    #@7b
    .line 525
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@7d
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    #@80
    move-result-object v0

    #@81
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@83
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    #@86
    move-result v0

    #@87
    iput v0, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    #@89
    .line 526
    iput v2, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    #@8b
    .line 527
    iput v2, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    #@8d
    .line 528
    const-string/jumbo v0, ""

    #@90
    iput-object v0, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    #@92
    .line 529
    const-string/jumbo v0, ""

    #@95
    iput-object v0, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    #@97
    .line 530
    new-array v0, v2, [Ljava/lang/String;

    #@99
    iput-object v0, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    #@9b
    .line 531
    new-array v0, v2, [Ljava/lang/String;

    #@9d
    iput-object v0, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    #@9f
    .line 532
    new-array v0, v2, [Ljava/lang/String;

    #@a1
    iput-object v0, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    #@a3
    .line 534
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@a5
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    #@a8
    move-result-object v0

    #@a9
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mSuggestedRetryTime:I

    #@ab
    .line 533
    iput v0, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    #@ad
    .line 535
    new-array v0, v2, [Ljava/lang/String;

    #@af
    iput-object v0, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    #@b1
    .line 536
    iput v2, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->mtu:I

    #@b3
    .line 538
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b6
    move-result-object v8

    #@b7
    .line 539
    .local v8, "msg":Landroid/os/Message;
    invoke-static {v8, v10, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@ba
    .line 540
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(Landroid/os/Message;)V

    #@bd
    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    const-string/jumbo v1, "onConnect: FailBringUpAll="

    #@c5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v0

    #@c9
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@cb
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    #@ce
    move-result-object v1

    #@cf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v0

    #@d3
    .line 543
    const-string/jumbo v1, " send error response="

    #@d6
    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v0

    #@da
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v0

    #@de
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v0

    #@e2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@e5
    .line 545
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@e7
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    #@ea
    move-result-object v0

    #@eb
    iget v1, v0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mCounter:I

    #@ed
    add-int/lit8 v1, v1, -0x1

    #@ef
    iput v1, v0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mCounter:I

    #@f1
    .line 546
    return-void

    #@f2
    .line 549
    .end local v8    # "msg":Landroid/os/Message;
    .end local v10    # "response":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :cond_1
    iput-wide v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    #@f4
    .line 550
    iput-wide v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    #@f6
    .line 551
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@f8
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@fa
    .line 554
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@fd
    move-result-object v8

    #@fe
    .line 555
    .restart local v8    # "msg":Landroid/os/Message;
    iput-object p1, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@100
    .line 557
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@102
    iget v9, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    #@104
    .line 558
    .local v9, "authType":I
    const/4 v0, -0x1

    #@105
    if-ne v9, v0, :cond_2

    #@107
    .line 559
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@109
    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    #@10b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@10e
    move-result v0

    #@10f
    if-eqz v0, :cond_3

    #@111
    const/4 v9, 0x0

    #@112
    .line 564
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@114
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@117
    move-result-object v0

    #@118
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    #@11b
    move-result v0

    #@11c
    if-eqz v0, :cond_4

    #@11e
    .line 565
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@120
    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    #@122
    .line 570
    .local v7, "protocol":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@124
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@126
    .line 571
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    #@128
    add-int/lit8 v1, v1, 0x2

    #@12a
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@12d
    move-result-object v1

    #@12e
    .line 572
    iget v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mProfileId:I

    #@130
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@133
    move-result-object v2

    #@134
    .line 573
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@136
    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@138
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@13a
    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    #@13c
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@13e
    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    #@140
    .line 574
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@143
    move-result-object v6

    #@144
    .line 570
    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@147
    .line 515
    return-void

    #@148
    .line 560
    .end local v7    # "protocol":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x3

    #@149
    goto :goto_0

    #@14a
    .line 567
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@14c
    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    #@14e
    .restart local v7    # "protocol":Ljava/lang/String;
    goto :goto_1
.end method

.method private onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 770
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@2
    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@4
    .line 771
    .local v1, "response":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@6
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@8
    .line 774
    .local v0, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    #@a
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@c
    if-eq v3, v4, :cond_0

    #@e
    .line 776
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "onSetupConnectionCompleted stale cp.tag="

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    iget v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    const-string/jumbo v4, ", mtag="

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@34
    .line 778
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@36
    .line 808
    .local v2, "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :goto_0
    return-object v2

    #@37
    .line 779
    .end local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :cond_0
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@39
    if-eqz v3, :cond_4

    #@3b
    .line 781
    new-instance v3, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v4, "onSetupConnectionCompleted failed, ar.exception="

    #@43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    .line 782
    const-string/jumbo v4, " response="

    #@50
    .line 781
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v3

    #@58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@5f
    .line 785
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@61
    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    #@63
    if-eqz v3, :cond_1

    #@65
    .line 786
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@67
    check-cast v3, Lcom/android/internal/telephony/CommandException;

    #@69
    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    #@6c
    move-result-object v3

    #@6d
    .line 787
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    #@6f
    .line 786
    if-ne v3, v4, :cond_1

    #@71
    .line 788
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_BadCommand:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@73
    .line 789
    .restart local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@75
    iput-object v3, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@77
    goto :goto_0

    #@78
    .line 790
    .end local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :cond_1
    if-eqz v1, :cond_2

    #@7a
    iget v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    #@7c
    const/4 v4, 0x4

    #@7d
    if-ge v3, v4, :cond_3

    #@7f
    .line 791
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_GetLastErrorFromRil:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@81
    .restart local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    goto :goto_0

    #@82
    .line 793
    .end local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@84
    .line 794
    .restart local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    iget v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    #@86
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@89
    move-result-object v3

    #@8a
    iput-object v3, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@8c
    goto :goto_0

    #@8d
    .line 796
    .end local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :cond_4
    iget v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    #@8f
    if-eqz v3, :cond_5

    #@91
    .line 797
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@93
    .line 798
    .restart local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    iget v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    #@95
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@98
    move-result-object v3

    #@99
    iput-object v3, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@9b
    goto :goto_0

    #@9c
    .line 800
    .end local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v4, "onSetupConnectionCompleted received DataCallResponse: "

    #@a4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v3

    #@a8
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v3

    #@ac
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v3

    #@b0
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@b3
    .line 801
    iget v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    #@b5
    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    #@b7
    .line 803
    iget-object v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    #@b9
    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPcscfAddr:[Ljava/lang/String;

    #@bb
    .line 805
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateLinkProperty(Lcom/android/internal/telephony/dataconnection/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;

    #@be
    move-result-object v3

    #@bf
    iget-object v2, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@c1
    .restart local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    goto/16 :goto_0
.end method

.method private setLinkProperties(Lcom/android/internal/telephony/dataconnection/DataCallResponse;Landroid/net/LinkProperties;)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    .locals 5
    .param p1, "response"    # Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 1005
    const/4 v1, 0x0

    #@1
    .line 1006
    .local v1, "okToUseSystemPropertyDns":Z
    new-instance v3, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v4, "net."

    #@9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v3

    #@d
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    const-string/jumbo v4, "."

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 1007
    .local v2, "propertyPrefix":Ljava/lang/String;
    const/4 v3, 0x2

    #@1f
    new-array v0, v3, [Ljava/lang/String;

    #@21
    .line 1008
    .local v0, "dnsServers":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    const-string/jumbo v4, "dns1"

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    const/4 v4, 0x0

    #@3a
    aput-object v3, v0, v4

    #@3c
    .line 1009
    new-instance v3, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    const-string/jumbo v4, "dns2"

    #@48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    const/4 v4, 0x1

    #@55
    aput-object v3, v0, v4

    #@57
    .line 1010
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isDnsOk([Ljava/lang/String;)Z

    #@5a
    move-result v1

    #@5b
    .line 1013
    .local v1, "okToUseSystemPropertyDns":Z
    invoke-virtual {p1, p2, v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->setLinkProperties(Landroid/net/LinkProperties;Z)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@5e
    move-result-object v3

    #@5f
    return-object v3
.end method

.method static slog(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2147
    const-string/jumbo v0, "DC"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 2146
    return-void
.end method

.method private tearDownData(Ljava/lang/Object;)V
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const v9, 0x40003

    #@3
    const/4 v8, 0x0

    #@4
    const/4 v7, 0x0

    #@5
    .line 586
    const/4 v2, 0x0

    #@6
    .line 587
    .local v2, "discReason":I
    const/4 v0, 0x0

    #@7
    .line 588
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz p1, :cond_0

    #@9
    instance-of v5, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    #@b
    if-eqz v5, :cond_0

    #@d
    move-object v3, p1

    #@e
    .line 589
    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    #@10
    .line 590
    .local v3, "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    iget-object v0, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@12
    .line 591
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v5, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    #@14
    const-string/jumbo v6, "radioTurnedOff"

    #@17
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_3

    #@1d
    .line 592
    const/4 v2, 0x1

    #@1e
    .line 597
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v3    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@20
    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@22
    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@25
    move-result-object v5

    #@26
    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    #@29
    move-result v5

    #@2a
    if-nez v5, :cond_1

    #@2c
    .line 598
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2e
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@35
    move-result v5

    #@36
    .line 599
    const/16 v6, 0x12

    #@38
    .line 598
    if-ne v5, v6, :cond_4

    #@3a
    .line 600
    :cond_1
    const-string/jumbo v4, "tearDownData radio is on, call deactivateDataCall"

    #@3d
    .line 601
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@40
    .line 602
    if-eqz v0, :cond_2

    #@42
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@45
    .line 603
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@47
    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@49
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    #@4b
    .line 604
    iget v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@4d
    invoke-virtual {p0, v9, v7, v8, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@50
    move-result-object v7

    #@51
    .line 603
    invoke-interface {v5, v6, v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(IILandroid/os/Message;)V

    #@54
    .line 585
    :goto_1
    return-void

    #@55
    .line 593
    .end local v4    # "str":Ljava/lang/String;
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .restart local v3    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    :cond_3
    iget-object v5, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    #@57
    const-string/jumbo v6, "pdpReset"

    #@5a
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@5d
    move-result v5

    #@5e
    if-eqz v5, :cond_0

    #@60
    .line 594
    const/4 v2, 0x2

    #@61
    goto :goto_0

    #@62
    .line 606
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v3    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    :cond_4
    const-string/jumbo v4, "tearDownData radio is off sendMessage EVENT_DEACTIVATE_DONE immediately"

    #@65
    .line 607
    .restart local v4    # "str":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@68
    .line 608
    if-eqz v0, :cond_5

    #@6a
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@6d
    .line 609
    :cond_5
    new-instance v1, Landroid/os/AsyncResult;

    #@6f
    invoke-direct {v1, p1, v7, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@72
    .line 610
    .local v1, "ar":Landroid/os/AsyncResult;
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@74
    invoke-virtual {p0, v9, v5, v8, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@77
    move-result-object v5

    #@78
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(Landroid/os/Message;)V

    #@7b
    goto :goto_1
.end method

.method private updateNetworkInfoSuspendState()Z
    .locals 8

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    .line 1271
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@5
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@8
    move-result-object v1

    #@9
    .line 1274
    .local v1, "oldState":Landroid/net/NetworkInfo$DetailedState;
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@b
    if-nez v5, :cond_0

    #@d
    .line 1275
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    #@10
    move-result-object v5

    #@11
    const-string/jumbo v6, "Setting suspend state without a NetworkAgent"

    #@14
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 1279
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@19
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@1c
    move-result-object v2

    #@1d
    .line 1280
    .local v2, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_1

    #@23
    .line 1281
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@25
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    #@27
    invoke-virtual {v5, v6, v7, v7}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@2a
    .line 1293
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@2c
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@2f
    move-result-object v5

    #@30
    if-eq v1, v5, :cond_4

    #@32
    :goto_1
    return v3

    #@33
    .line 1284
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    #@36
    move-result v5

    #@37
    if-nez v5, :cond_3

    #@39
    .line 1285
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@3b
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@3e
    move-result-object v0

    #@3f
    .line 1286
    .local v0, "ct":Lcom/android/internal/telephony/CallTracker;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@42
    move-result-object v5

    #@43
    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@45
    if-eq v5, v6, :cond_3

    #@47
    .line 1287
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@49
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    #@4b
    invoke-virtual {v5, v6, v7, v7}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@4e
    .line 1288
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    #@50
    if-eq v1, v5, :cond_2

    #@52
    :goto_2
    return v3

    #@53
    :cond_2
    move v3, v4

    #@54
    goto :goto_2

    #@55
    .line 1291
    .end local v0    # "ct":Lcom/android/internal/telephony/CallTracker;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@57
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@59
    invoke-virtual {v5, v6, v7, v7}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@5c
    goto :goto_0

    #@5d
    :cond_4
    move v3, v4

    #@5e
    .line 1293
    goto :goto_1
.end method

.method private updateTcpBufferSizes(I)V
    .locals 7
    .param p1, "rilRat"    # I

    #@0
    .prologue
    .line 844
    const/4 v3, 0x0

    #@1
    .line 845
    .local v3, "sizes":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    #@4
    move-result-object v5

    #@5
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@7
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 848
    .local v2, "ratName":Ljava/lang/String;
    const/4 v5, 0x7

    #@c
    if-eq p1, v5, :cond_0

    #@e
    .line 849
    const/16 v5, 0x8

    #@10
    if-ne p1, v5, :cond_4

    #@12
    .line 851
    :cond_0
    :goto_0
    const-string/jumbo v2, "evdo"

    #@15
    .line 855
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@17
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1e
    move-result-object v5

    #@1f
    .line 856
    const v6, 0x107002f

    #@22
    .line 855
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 857
    .local v0, "configOverride":[Ljava/lang/String;
    const/4 v1, 0x0

    #@27
    .local v1, "i":I
    :goto_1
    array-length v5, v0

    #@28
    if-ge v1, v5, :cond_2

    #@2a
    .line 858
    aget-object v5, v0, v1

    #@2c
    const-string/jumbo v6, ":"

    #@2f
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    .line 859
    .local v4, "split":[Ljava/lang/String;
    const/4 v5, 0x0

    #@34
    aget-object v5, v4, v5

    #@36
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v5

    #@3a
    if-eqz v5, :cond_5

    #@3c
    array-length v5, v4

    #@3d
    const/4 v6, 0x2

    #@3e
    if-ne v5, v6, :cond_5

    #@40
    .line 860
    const/4 v5, 0x1

    #@41
    aget-object v3, v4, v5

    #@43
    .line 865
    .end local v3    # "sizes":Ljava/lang/String;
    .end local v4    # "split":[Ljava/lang/String;
    :cond_2
    if-nez v3, :cond_3

    #@45
    .line 869
    packed-switch p1, :pswitch_data_0

    #@48
    .line 908
    :cond_3
    :goto_2
    :pswitch_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    #@4a
    invoke-virtual {v5, v3}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    #@4d
    .line 843
    return-void

    #@4e
    .line 850
    .end local v0    # "configOverride":[Ljava/lang/String;
    .end local v1    # "i":I
    .restart local v3    # "sizes":Ljava/lang/String;
    :cond_4
    const/16 v5, 0xc

    #@50
    if-ne p1, v5, :cond_1

    #@52
    goto :goto_0

    #@53
    .line 857
    .restart local v0    # "configOverride":[Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v4    # "split":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    #@55
    goto :goto_1

    #@56
    .line 871
    .end local v3    # "sizes":Ljava/lang/String;
    .end local v4    # "split":[Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v3, "4092,8760,48000,4096,8760,48000"

    #@59
    .local v3, "sizes":Ljava/lang/String;
    goto :goto_2

    #@5a
    .line 874
    .end local v3    # "sizes":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v3, "4093,26280,70800,4096,16384,70800"

    #@5d
    .restart local v3    # "sizes":Ljava/lang/String;
    goto :goto_2

    #@5e
    .line 877
    .end local v3    # "sizes":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v3, "58254,349525,1048576,58254,349525,1048576"

    #@61
    .restart local v3    # "sizes":Ljava/lang/String;
    goto :goto_2

    #@62
    .line 880
    .end local v3    # "sizes":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v3, "16384,32768,131072,4096,16384,102400"

    #@65
    .restart local v3    # "sizes":Ljava/lang/String;
    goto :goto_2

    #@66
    .line 885
    .end local v3    # "sizes":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v3, "4094,87380,262144,4096,16384,262144"

    #@69
    .restart local v3    # "sizes":Ljava/lang/String;
    goto :goto_2

    #@6a
    .line 888
    .end local v3    # "sizes":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v3, "131072,262144,1048576,4096,16384,524288"

    #@6d
    .restart local v3    # "sizes":Ljava/lang/String;
    goto :goto_2

    #@6e
    .line 891
    .end local v3    # "sizes":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v3, "61167,367002,1101005,8738,52429,262114"

    #@71
    .restart local v3    # "sizes":Ljava/lang/String;
    goto :goto_2

    #@72
    .line 895
    .end local v3    # "sizes":Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v3, "40778,244668,734003,16777,100663,301990"

    #@75
    .restart local v3    # "sizes":Ljava/lang/String;
    goto :goto_2

    #@76
    .line 898
    .end local v3    # "sizes":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v3, "524288,1048576,2097152,262144,524288,1048576"

    #@79
    .restart local v3    # "sizes":Ljava/lang/String;
    goto :goto_2

    #@7a
    .line 901
    .end local v3    # "sizes":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v3, "122334,734003,2202010,32040,192239,576717"

    #@7d
    .restart local v3    # "sizes":Ljava/lang/String;
    goto :goto_2

    #@7e
    .line 869
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method dispose()V
    .locals 1

    #@0
    .prologue
    .line 278
    const-string/jumbo v0, "dispose: call quiteNow()"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@6
    .line 279
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->quitNow()V

    #@9
    .line 277
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2261
    const-string/jumbo v0, "DataConnection "

    #@3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    .line 2262
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@9
    .line 2263
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v1, " mApnContexts.size="

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@17
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@1a
    move-result v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@26
    .line 2264
    new-instance v0, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v1, " mApnContexts="

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3f
    .line 2265
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@42
    .line 2266
    new-instance v0, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v1, " mDataConnectionTracker="

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5b
    .line 2267
    new-instance v0, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v1, " mApnSetting="

    #@63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v0

    #@71
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@74
    .line 2268
    new-instance v0, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v1, " mTag="

    #@7c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v0

    #@80
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@85
    move-result-object v0

    #@86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v0

    #@8a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8d
    .line 2269
    new-instance v0, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string/jumbo v1, " mCid="

    #@95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v0

    #@99
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    #@9b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v0

    #@9f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v0

    #@a3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a6
    .line 2270
    new-instance v0, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string/jumbo v1, " mRetryManager="

    #@ae
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v0

    #@b2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@b4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v0

    #@b8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v0

    #@bc
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bf
    .line 2271
    new-instance v0, Ljava/lang/StringBuilder;

    #@c1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c4
    const-string/jumbo v1, " mConnectionParams="

    #@c7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v0

    #@cb
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@cd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v0

    #@d1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d4
    move-result-object v0

    #@d5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d8
    .line 2272
    new-instance v0, Ljava/lang/StringBuilder;

    #@da
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@dd
    const-string/jumbo v1, " mDisconnectParams="

    #@e0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v0

    #@e4
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectParams:Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    #@e6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v0

    #@ea
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ed
    move-result-object v0

    #@ee
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f1
    .line 2273
    new-instance v0, Ljava/lang/StringBuilder;

    #@f3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f6
    const-string/jumbo v1, " mDcFailCause="

    #@f9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v0

    #@fd
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@ff
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v0

    #@103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@106
    move-result-object v0

    #@107
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10a
    .line 2274
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@10d
    .line 2275
    new-instance v0, Ljava/lang/StringBuilder;

    #@10f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@112
    const-string/jumbo v1, " mPhone="

    #@115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v0

    #@119
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@11b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v0

    #@11f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@122
    move-result-object v0

    #@123
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@126
    .line 2276
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@129
    .line 2277
    new-instance v0, Ljava/lang/StringBuilder;

    #@12b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@12e
    const-string/jumbo v1, " mLinkProperties="

    #@131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v0

    #@135
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    #@137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v0

    #@13b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13e
    move-result-object v0

    #@13f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@142
    .line 2278
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@145
    .line 2279
    new-instance v0, Ljava/lang/StringBuilder;

    #@147
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14a
    const-string/jumbo v1, " mDataRegState="

    #@14d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    move-result-object v0

    #@151
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I

    #@153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@156
    move-result-object v0

    #@157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15a
    move-result-object v0

    #@15b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15e
    .line 2280
    new-instance v0, Ljava/lang/StringBuilder;

    #@160
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@163
    const-string/jumbo v1, " mRilRat="

    #@166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v0

    #@16a
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    #@16c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v0

    #@170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@173
    move-result-object v0

    #@174
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@177
    .line 2281
    new-instance v0, Ljava/lang/StringBuilder;

    #@179
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@17c
    const-string/jumbo v1, " mNetworkCapabilities="

    #@17f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@182
    move-result-object v0

    #@183
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->makeNetworkCapabilities()Landroid/net/NetworkCapabilities;

    #@186
    move-result-object v1

    #@187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18a
    move-result-object v0

    #@18b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18e
    move-result-object v0

    #@18f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@192
    .line 2282
    new-instance v0, Ljava/lang/StringBuilder;

    #@194
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@197
    const-string/jumbo v1, " mCreateTime="

    #@19a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19d
    move-result-object v0

    #@19e
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    #@1a0
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    #@1a3
    move-result-object v1

    #@1a4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v0

    #@1a8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ab
    move-result-object v0

    #@1ac
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1af
    .line 2283
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1b4
    const-string/jumbo v1, " mLastFailTime="

    #@1b7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ba
    move-result-object v0

    #@1bb
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    #@1bd
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    #@1c0
    move-result-object v1

    #@1c1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c4
    move-result-object v0

    #@1c5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c8
    move-result-object v0

    #@1c9
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1cc
    .line 2284
    new-instance v0, Ljava/lang/StringBuilder;

    #@1ce
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1d1
    const-string/jumbo v1, " mLastFailCause="

    #@1d4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d7
    move-result-object v0

    #@1d8
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1da
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1dd
    move-result-object v0

    #@1de
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e1
    move-result-object v0

    #@1e2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e5
    .line 2285
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@1e8
    .line 2286
    new-instance v0, Ljava/lang/StringBuilder;

    #@1ea
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1ed
    const-string/jumbo v1, " mUserData="

    #@1f0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f3
    move-result-object v0

    #@1f4
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUserData:Ljava/lang/Object;

    #@1f6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f9
    move-result-object v0

    #@1fa
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fd
    move-result-object v0

    #@1fe
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@201
    .line 2287
    new-instance v0, Ljava/lang/StringBuilder;

    #@203
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@206
    const-string/jumbo v1, " mInstanceNumber="

    #@209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20c
    move-result-object v0

    #@20d
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInstanceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    #@20f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@212
    move-result-object v0

    #@213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@216
    move-result-object v0

    #@217
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@21a
    .line 2288
    new-instance v0, Ljava/lang/StringBuilder;

    #@21c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@21f
    const-string/jumbo v1, " mAc="

    #@222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@225
    move-result-object v0

    #@226
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    #@228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22b
    move-result-object v0

    #@22c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22f
    move-result-object v0

    #@230
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@233
    .line 2289
    new-instance v0, Ljava/lang/StringBuilder;

    #@235
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@238
    const-string/jumbo v1, " mDcRetryAlarmController="

    #@23b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23e
    move-result-object v0

    #@23f
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryAlarmController:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    #@241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@244
    move-result-object v0

    #@245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@248
    move-result-object v0

    #@249
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@24c
    .line 2290
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@24f
    .line 2260
    return-void
.end method

.method getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 1

    #@0
    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@2
    return-object v0
.end method

.method getCid()I
    .locals 1

    #@0
    .prologue
    .line 297
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    #@2
    return v0
.end method

.method getCopyLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    #@0
    .prologue
    .line 289
    new-instance v0, Landroid/net/LinkProperties;

    #@2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    #@4
    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    #@7
    return-object v0
.end method

.method getCopyNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .locals 1

    #@0
    .prologue
    .line 285
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->makeNetworkCapabilities()Landroid/net/NetworkCapabilities;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDataConnectionId()I
    .locals 1

    #@0
    .prologue
    .line 735
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mId:I

    #@2
    return v0
.end method

.method getIsInactive()Z
    .locals 2

    #@0
    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    #@0
    .prologue
    .line 2102
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->cmdToString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public isIpv4Connected()Z
    .locals 6

    #@0
    .prologue
    .line 319
    const/4 v4, 0x0

    #@1
    .line 320
    .local v4, "ret":Z
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    #@3
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    #@6
    move-result-object v2

    #@7
    .line 322
    .local v2, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "addr$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/net/InetAddress;

    #@17
    .line 323
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v5, v0, Ljava/net/Inet4Address;

    #@19
    if-eqz v5, :cond_0

    #@1b
    move-object v3, v0

    #@1c
    .line 324
    check-cast v3, Ljava/net/Inet4Address;

    #@1e
    .line 325
    .local v3, "i4addr":Ljava/net/Inet4Address;
    invoke-virtual {v3}, Ljava/net/Inet4Address;->isAnyLocalAddress()Z

    #@21
    move-result v5

    #@22
    if-nez v5, :cond_0

    #@24
    invoke-virtual {v3}, Ljava/net/Inet4Address;->isLinkLocalAddress()Z

    #@27
    move-result v5

    #@28
    if-nez v5, :cond_0

    #@2a
    .line 326
    invoke-virtual {v3}, Ljava/net/Inet4Address;->isLoopbackAddress()Z

    #@2d
    move-result v5

    #@2e
    if-nez v5, :cond_0

    #@30
    invoke-virtual {v3}, Ljava/net/Inet4Address;->isMulticastAddress()Z

    #@33
    move-result v5

    #@34
    if-nez v5, :cond_0

    #@36
    .line 327
    const/4 v4, 0x1

    #@37
    .line 332
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v3    # "i4addr":Ljava/net/Inet4Address;
    :cond_1
    return v4
.end method

.method public isIpv6Connected()Z
    .locals 6

    #@0
    .prologue
    .line 336
    const/4 v4, 0x0

    #@1
    .line 337
    .local v4, "ret":Z
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    #@3
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    #@6
    move-result-object v2

    #@7
    .line 339
    .local v2, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "addr$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/net/InetAddress;

    #@17
    .line 340
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v5, v0, Ljava/net/Inet6Address;

    #@19
    if-eqz v5, :cond_0

    #@1b
    move-object v3, v0

    #@1c
    .line 341
    check-cast v3, Ljava/net/Inet6Address;

    #@1e
    .line 342
    .local v3, "i6addr":Ljava/net/Inet6Address;
    invoke-virtual {v3}, Ljava/net/Inet6Address;->isAnyLocalAddress()Z

    #@21
    move-result v5

    #@22
    if-nez v5, :cond_0

    #@24
    invoke-virtual {v3}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    #@27
    move-result v5

    #@28
    if-nez v5, :cond_0

    #@2a
    .line 343
    invoke-virtual {v3}, Ljava/net/Inet6Address;->isLoopbackAddress()Z

    #@2d
    move-result v5

    #@2e
    if-nez v5, :cond_0

    #@30
    invoke-virtual {v3}, Ljava/net/Inet6Address;->isMulticastAddress()Z

    #@33
    move-result v5

    #@34
    if-nez v5, :cond_0

    #@36
    .line 344
    const/4 v4, 0x1

    #@37
    .line 349
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v3    # "i6addr":Ljava/net/Inet6Address;
    :cond_1
    return v4
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2157
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    .line 2156
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2167
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    .line 2166
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2207
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    .line 2206
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 2218
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7
    .line 2217
    return-void
.end method

.method protected logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2187
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    .line 2186
    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2177
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    .line 2176
    return-void
.end method

.method protected logw(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2197
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    .line 2196
    return-void
.end method

.method setLinkPropertiesHttpProxy(Landroid/net/ProxyInfo;)V
    .locals 1
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    #@2
    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    #@5
    .line 304
    return-void
.end method

.method tearDownNow()V
    .locals 1

    #@0
    .prologue
    .line 2093
    const-string/jumbo v0, "tearDownNow()"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@6
    .line 2094
    const v0, 0x40008

    #@9
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(I)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(Landroid/os/Message;)V

    #@10
    .line 2092
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2236
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->toStringSimple()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, " mApnContexts="

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    const-string/jumbo v1, "}"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    return-object v0
.end method

.method public toStringSimple()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 2223
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, ": State="

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    #@17
    move-result-object v1

    #@18
    invoke-interface {v1}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    .line 2224
    const-string/jumbo v1, " mApnSetting="

    #@23
    .line 2223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 2224
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@29
    .line 2223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    .line 2224
    const-string/jumbo v1, " RefCount="

    #@30
    .line 2223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 2224
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    #@36
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@39
    move-result v1

    #@3a
    .line 2223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    .line 2225
    const-string/jumbo v1, " mCid="

    #@41
    .line 2223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 2225
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    #@47
    .line 2223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    .line 2225
    const-string/jumbo v1, " mCreateTime="

    #@4e
    .line 2223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    .line 2225
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    #@54
    .line 2223
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    .line 2226
    const-string/jumbo v1, " mLastastFailTime="

    #@5b
    .line 2223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    .line 2226
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    #@61
    .line 2223
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@64
    move-result-object v0

    #@65
    .line 2227
    const-string/jumbo v1, " mLastFailCause="

    #@68
    .line 2223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v0

    #@6c
    .line 2227
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@6e
    .line 2223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v0

    #@72
    .line 2228
    const-string/jumbo v1, " mTag="

    #@75
    .line 2223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v0

    #@79
    .line 2228
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@7b
    .line 2223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v0

    #@7f
    .line 2229
    const-string/jumbo v1, " mRetryManager="

    #@82
    .line 2223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v0

    #@86
    .line 2229
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    #@88
    .line 2223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v0

    #@8c
    .line 2230
    const-string/jumbo v1, " mLinkProperties="

    #@8f
    .line 2223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v0

    #@93
    .line 2230
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    #@95
    .line 2223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v0

    #@99
    .line 2231
    const-string/jumbo v1, " linkCapabilities="

    #@9c
    .line 2223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v0

    #@a0
    .line 2231
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->makeNetworkCapabilities()Landroid/net/NetworkCapabilities;

    #@a3
    move-result-object v1

    #@a4
    .line 2223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v0

    #@a8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v0

    #@ac
    return-object v0
.end method

.method updateLinkProperty(Lcom/android/internal/telephony/dataconnection/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    .locals 3
    .param p1, "newState"    # Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@0
    .prologue
    .line 353
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;

    #@2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    #@4
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;-><init>(Landroid/net/LinkProperties;)V

    #@7
    .line 355
    .local v0, "result":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    if-nez p1, :cond_0

    #@9
    return-object v0

    #@a
    .line 358
    :cond_0
    new-instance v1, Landroid/net/LinkProperties;

    #@c
    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    #@f
    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@11
    .line 361
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@13
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setLinkProperties(Lcom/android/internal/telephony/dataconnection/DataCallResponse;Landroid/net/LinkProperties;)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@16
    move-result-object v1

    #@17
    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@19
    .line 362
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@1b
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@1d
    if-eq v1, v2, :cond_1

    #@1f
    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v2, "updateLinkProperty failed : "

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@38
    .line 364
    return-object v0

    #@39
    .line 367
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@3b
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    #@3d
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    #@44
    .line 369
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@46
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@48
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->checkSetMtu(Lcom/android/internal/telephony/dataconnection/ApnSetting;Landroid/net/LinkProperties;)V

    #@4b
    .line 371
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@4d
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    #@4f
    .line 373
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    #@51
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateTcpBufferSizes(I)V

    #@54
    .line 375
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    #@56
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@58
    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    #@5b
    move-result v1

    #@5c
    if-eqz v1, :cond_3

    #@5e
    .line 380
    :goto_0
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@60
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    #@62
    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v1

    #@66
    if-nez v1, :cond_2

    #@68
    .line 381
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@6a
    if-eqz v1, :cond_2

    #@6c
    .line 382
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@6e
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    #@70
    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    #@73
    .line 385
    :cond_2
    return-object v0

    #@74
    .line 376
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v2, "updateLinkProperty old LP="

    #@7c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v1

    #@80
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    #@82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v1

    #@86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v1

    #@8a
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@8d
    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string/jumbo v2, "updateLinkProperty new LP="

    #@95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v1

    #@99
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@9b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v1

    #@9f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v1

    #@a3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@a6
    goto :goto_0
.end method
