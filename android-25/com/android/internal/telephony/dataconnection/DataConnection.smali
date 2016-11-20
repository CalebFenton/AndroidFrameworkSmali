.class public Lcom/android/internal/telephony/dataconnection/DataConnection;
.super Lcom/android/internal/util/StateMachine;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    }
.end annotation


# static fields
.field static final BASE:I = 0x40000

.field private static final CMD_TO_STRING_COUNT:I = 0x11

.field private static final DBG:Z = true

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

.field static final EVENT_RIL_CONNECTED:I = 0x40005

.field static final EVENT_SETUP_DATA_CONNECTION_DONE:I = 0x40001

.field static final EVENT_TEAR_DOWN_NOW:I = 0x40008

.field private static final NETWORK_TYPE:Ljava/lang/String; = "MOBILE"

.field private static final NULL_IP:Ljava/lang/String; = "0.0.0.0"

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

.field public mApnContexts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            "Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;",
            ">;"
        }
    .end annotation
.end field

.field private mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field public mCid:I

.field private mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

.field private mCreateTime:J

.field private mDataRegState:I

.field private mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

.field private mDcFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field private mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

.field private mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

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

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mReconnectIntent:Landroid/app/PendingIntent;

.field private mRestrictedNetworkOverride:Z

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

.method static synthetic -get10(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mId:I

    #@2
    return v0
.end method

.method static synthetic -get13(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@2
    return-object v0
.end method

.method static synthetic -get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/LinkProperties;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    #@2
    return-object v0
.end method

.method static synthetic -get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@2
    return-object v0
.end method

.method static synthetic -get16(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2
    return-object v0
.end method

.method static synthetic -get18(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    #@2
    return-object v0
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

.method static synthetic -get8(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectParams:Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

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

.method static synthetic -set10(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    #@2
    return-object p1
.end method

.method static synthetic -set11(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@2
    return-object p1
.end method

.method static synthetic -set12(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2
    return-object p1
.end method

.method static synthetic -set13(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    #@2
    return p1
.end method

.method static synthetic -set14(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)Ljava/lang/Object;
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

.method static synthetic -set6(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@2
    return-object p1
.end method

.method static synthetic -set7(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    return-object p1
.end method

.method static synthetic -set8(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectParams:Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    #@2
    return-object p1
.end method

.method static synthetic -set9(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

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

.method static synthetic -wrap1(Lcom/android/internal/telephony/dataconnection/DataConnection;I)Z
    .locals 1
    .param p1, "what"    # I

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->hasDeferredMessages(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->dumpToLog()V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->logAndAddLogRec(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    .locals 0
    .param p1, "cause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllOfConnected(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;Z)V
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

.method static synthetic -wrap15(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V
    .locals 0
    .param p1, "dp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .param p2, "sendAll"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V
    .locals 0
    .param p1, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->onConnect(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0

    #@0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->quit()V

    #@3
    return-void
.end method

.method static synthetic -wrap18(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setNetworkRestriction()V

    #@3
    return-void
.end method

.method static synthetic -wrap19(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->tearDownData(Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/dataconnection/DataConnection;I)Z
    .locals 1
    .param p1, "what"    # I

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->hasMessages(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap20(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap21(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V
    .locals 0
    .param p1, "rilRat"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateTcpBufferSizes(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Z
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

.method static synthetic -wrap4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateNetworkInfoSuspendState()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap5(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/AsyncResult;)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
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

.method static synthetic -wrap6(Landroid/os/Message;)Ljava/lang/String;
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

.method static synthetic -wrap7(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/AsyncResult;)J
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getSuggestedRetryDelay(Landroid/os/AsyncResult;)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap8(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->clearSettings()V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->deferMessage(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@3
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@6
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInstanceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    #@8
    .line 194
    const/16 v0, 0x11

    #@a
    new-array v0, v0, [Ljava/lang/String;

    #@c
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@e
    .line 196
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@10
    const-string/jumbo v1, "EVENT_CONNECT"

    #@13
    aput-object v1, v0, v2

    #@15
    .line 197
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@17
    .line 198
    const-string/jumbo v1, "EVENT_SETUP_DATA_CONNECTION_DONE"

    #@1a
    .line 197
    const/4 v2, 0x1

    #@1b
    aput-object v1, v0, v2

    #@1d
    .line 199
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@1f
    const-string/jumbo v1, "EVENT_GET_LAST_FAIL_DONE"

    #@22
    const/4 v2, 0x2

    #@23
    aput-object v1, v0, v2

    #@25
    .line 200
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@27
    const-string/jumbo v1, "EVENT_DEACTIVATE_DONE"

    #@2a
    const/4 v2, 0x3

    #@2b
    aput-object v1, v0, v2

    #@2d
    .line 201
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@2f
    const-string/jumbo v1, "EVENT_DISCONNECT"

    #@32
    const/4 v2, 0x4

    #@33
    aput-object v1, v0, v2

    #@35
    .line 202
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@37
    const-string/jumbo v1, "EVENT_RIL_CONNECTED"

    #@3a
    const/4 v2, 0x5

    #@3b
    aput-object v1, v0, v2

    #@3d
    .line 203
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@3f
    const-string/jumbo v1, "EVENT_DISCONNECT_ALL"

    #@42
    const/4 v2, 0x6

    #@43
    aput-object v1, v0, v2

    #@45
    .line 204
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@47
    const-string/jumbo v1, "EVENT_DATA_STATE_CHANGED"

    #@4a
    const/4 v2, 0x7

    #@4b
    aput-object v1, v0, v2

    #@4d
    .line 205
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@4f
    const-string/jumbo v1, "EVENT_TEAR_DOWN_NOW"

    #@52
    const/16 v2, 0x8

    #@54
    aput-object v1, v0, v2

    #@56
    .line 206
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@58
    const-string/jumbo v1, "EVENT_LOST_CONNECTION"

    #@5b
    const/16 v2, 0x9

    #@5d
    aput-object v1, v0, v2

    #@5f
    .line 207
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@61
    .line 208
    const-string/jumbo v1, "EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED"

    #@64
    .line 207
    const/16 v2, 0xb

    #@66
    aput-object v1, v0, v2

    #@68
    .line 209
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@6a
    const-string/jumbo v1, "EVENT_DATA_CONNECTION_ROAM_ON"

    #@6d
    const/16 v2, 0xc

    #@6f
    aput-object v1, v0, v2

    #@71
    .line 210
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@73
    const-string/jumbo v1, "EVENT_DATA_CONNECTION_ROAM_OFF"

    #@76
    const/16 v2, 0xd

    #@78
    aput-object v1, v0, v2

    #@7a
    .line 211
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@7c
    const-string/jumbo v1, "EVENT_BW_REFRESH_RESPONSE"

    #@7f
    const/16 v2, 0xe

    #@81
    aput-object v1, v0, v2

    #@83
    .line 212
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@85
    .line 213
    const-string/jumbo v1, "EVENT_DATA_CONNECTION_VOICE_CALL_STARTED"

    #@88
    .line 212
    const/16 v2, 0xf

    #@8a
    aput-object v1, v0, v2

    #@8c
    .line 214
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@8e
    .line 215
    const-string/jumbo v1, "EVENT_DATA_CONNECTION_VOICE_CALL_ENDED"

    #@91
    .line 214
    const/16 v2, 0x10

    #@93
    aput-object v1, v0, v2

    #@95
    .line 77
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;ILcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)V
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p5, "failBringUpAll"    # Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;
    .param p6, "dcc"    # Lcom/android/internal/telephony/dataconnection/DcController;

    #@0
    .prologue
    const v4, 0x7fffffff

    #@3
    const/4 v6, 0x0

    #@4
    const/4 v5, 0x1

    #@5
    const/4 v3, 0x0

    #@6
    .line 393
    invoke-virtual {p6}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    #@9
    move-result-object v2

    #@a
    invoke-direct {p0, p2, v2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    #@d
    .line 93
    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@f
    .line 155
    new-instance v2, Landroid/net/LinkProperties;

    #@11
    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    #@14
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    #@16
    .line 161
    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    #@18
    .line 162
    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I

    #@1a
    .line 168
    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@1c
    .line 169
    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mReconnectIntent:Landroid/app/PendingIntent;

    #@1e
    .line 862
    iput-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRestrictedNetworkOverride:Z

    #@20
    .line 1287
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    #@22
    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;)V

    #@25
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    #@27
    .line 1403
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@29
    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;)V

    #@2c
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@2e
    .line 1550
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    #@30
    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;)V

    #@33
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActivatingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    #@35
    .line 1767
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    #@37
    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;)V

    #@3a
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    #@3c
    .line 1817
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    #@3e
    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;)V

    #@41
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    #@43
    .line 1863
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    #@45
    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;)V

    #@48
    .line 1862
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    #@4a
    .line 394
    const/16 v2, 0x12c

    #@4c
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setLogRecSize(I)V

    #@4f
    .line 395
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setLogOnlyTransitions(Z)V

    #@52
    .line 396
    const-string/jumbo v2, "DataConnection created"

    #@55
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@58
    .line 398
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    #@5a
    .line 399
    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@5c
    .line 400
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@5e
    .line 401
    iput-object p6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

    #@60
    .line 402
    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mId:I

    #@62
    .line 403
    const/4 v2, -0x1

    #@63
    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    #@65
    .line 404
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    #@67
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@6a
    move-result-object v1

    #@6b
    .line 405
    .local v1, "ss":Landroid/telephony/ServiceState;
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@6e
    move-result v2

    #@6f
    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    #@71
    .line 406
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    #@73
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@7a
    move-result v2

    #@7b
    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I

    #@7d
    .line 407
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    #@80
    move-result v0

    #@81
    .line 408
    .local v0, "networkType":I
    new-instance v2, Landroid/net/NetworkInfo;

    #@83
    .line 409
    const-string/jumbo v3, "MOBILE"

    #@86
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    #@89
    move-result-object v4

    #@8a
    .line 408
    invoke-direct {v2, v6, v0, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    #@8d
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@8f
    .line 410
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@91
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@94
    move-result v3

    #@95
    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    #@98
    .line 411
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@9a
    invoke-virtual {v2, v5}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    #@9d
    .line 414
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@9f
    invoke-virtual {v2, v5}, Landroid/net/NetworkInfo;->setMetered(Z)V

    #@a2
    .line 416
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    #@a4
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;)V

    #@a7
    .line 417
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@a9
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    #@ab
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@ae
    .line 418
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActivatingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    #@b0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    #@b2
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@b5
    .line 419
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    #@b7
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    #@b9
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@bc
    .line 420
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    #@be
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    #@c0
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@c3
    .line 421
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    #@c5
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    #@c7
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@ca
    .line 422
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    #@cc
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setInitialState(Lcom/android/internal/util/State;)V

    #@cf
    .line 424
    new-instance v2, Ljava/util/HashMap;

    #@d1
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@d4
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@d6
    .line 392
    return-void
.end method

.method private checkSetMtu(Lcom/android/internal/telephony/dataconnection/ApnSetting;Landroid/net/LinkProperties;)V
    .locals 3
    .param p1, "apn"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 366
    if-nez p2, :cond_0

    #@2
    return-void

    #@3
    .line 368
    :cond_0
    if-eqz p1, :cond_1

    #@5
    if-nez p2, :cond_2

    #@7
    :cond_1
    return-void

    #@8
    .line 370
    :cond_2
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getMtu()I

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_3

    #@e
    .line 371
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
    .line 372
    return-void

    #@2a
    .line 375
    :cond_3
    if-eqz p1, :cond_4

    #@2c
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    #@2e
    if-eqz v1, :cond_4

    #@30
    .line 376
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    #@32
    invoke-virtual {p2, v1}, Landroid/net/LinkProperties;->setMtu(I)V

    #@35
    .line 377
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
    .line 378
    return-void

    #@4f
    .line 381
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    #@51
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@58
    move-result-object v1

    #@59
    .line 382
    const v2, 0x10e008f

    #@5c
    .line 381
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@5f
    move-result v0

    #@60
    .line 383
    .local v0, "mtu":I
    if-eqz v0, :cond_5

    #@62
    .line 384
    invoke-virtual {p2, v0}, Landroid/net/LinkProperties;->setMtu(I)V

    #@65
    .line 385
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
    .line 365
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
    .line 669
    const-string/jumbo v0, "clearSettings"

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@9
    .line 671
    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    #@b
    .line 672
    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    #@d
    .line 673
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@f
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@11
    .line 674
    const/4 v0, -0x1

    #@12
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    #@14
    .line 676
    const/4 v0, 0x5

    #@15
    new-array v0, v0, [Ljava/lang/String;

    #@17
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPcscfAddr:[Ljava/lang/String;

    #@19
    .line 678
    new-instance v0, Landroid/net/LinkProperties;

    #@1b
    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    #@1e
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    #@20
    .line 679
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@22
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@25
    .line 680
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@27
    .line 681
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@29
    .line 668
    return-void
.end method

.method static cmdToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "cmd"    # I

    #@0
    .prologue
    const/high16 v3, 0x40000

    #@2
    .line 220
    sub-int/2addr p0, v3

    #@3
    .line 221
    if-ltz p0, :cond_1

    #@5
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@7
    array-length v1, v1

    #@8
    if-ge p0, v1, :cond_1

    #@a
    .line 222
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    #@c
    aget-object v0, v1, p0

    #@e
    .line 226
    .local v0, "value":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    #@10
    .line 227
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
    .line 229
    :cond_0
    return-object v0

    #@2b
    .line 224
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

.method private dumpToLog()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2100
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
    .line 2099
    return-void
.end method

.method private getSuggestedRetryDelay(Landroid/os/AsyncResult;)J
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 1933
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@2
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@4
    .line 1942
    .local v0, "response":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iget v1, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    #@6
    if-gez v1, :cond_0

    #@8
    .line 1943
    const-string/jumbo v1, "No suggested retry delay."

    #@b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@e
    .line 1944
    const-wide/16 v2, -0x2

    #@10
    return-wide v2

    #@11
    .line 1947
    :cond_0
    iget v1, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    #@13
    const v2, 0x7fffffff

    #@16
    if-ne v1, v2, :cond_1

    #@18
    .line 1948
    const-string/jumbo v1, "Modem suggested not retrying."

    #@1b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@1e
    .line 1949
    const-wide/16 v2, -0x1

    #@20
    return-wide v2

    #@21
    .line 1954
    :cond_1
    iget v1, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    #@23
    int-to-long v2, v1

    #@24
    return-wide v2
.end method

.method private initConnection(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Z
    .locals 3
    .param p1, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@0
    .prologue
    .line 1024
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@2
    .line 1025
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1028
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@9
    move-result-object v1

    #@a
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@c
    .line 1030
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@e
    if-eqz v1, :cond_1

    #@10
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@12
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 1037
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@1e
    add-int/lit8 v1, v1, 0x1

    #@20
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@22
    .line 1038
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@24
    .line 1039
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@26
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@28
    iput v2, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    #@2a
    .line 1043
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@2c
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 1046
    new-instance v1, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v2, "initConnection:  RefCount="

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 1047
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@3d
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    #@40
    move-result v2

    #@41
    .line 1046
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    .line 1048
    const-string/jumbo v2, " mApnList="

    #@48
    .line 1046
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    .line 1048
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@4e
    .line 1046
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    .line 1049
    const-string/jumbo v2, " mConnectionParams="

    #@55
    .line 1046
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    .line 1049
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@5b
    .line 1046
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@66
    .line 1051
    const/4 v1, 0x1

    #@67
    return v1

    #@68
    .line 1032
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v2, "initConnection: incompatible apnSetting in ConnectionParams cp="

    #@70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v1

    #@74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    .line 1033
    const-string/jumbo v2, " dc="

    #@7b
    .line 1032
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v1

    #@83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v1

    #@87
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@8a
    .line 1035
    const/4 v1, 0x0

    #@8b
    return v1
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
    .line 733
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
    .line 734
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    #@1a
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 749
    :cond_0
    return v3

    #@21
    .line 740
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
    .line 741
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
    .line 743
    :cond_2
    const-string/jumbo v0, "isDnsOk: return false apn.types[0]=%s APN_TYPE_MMS=%s isIpAddress(%s)=%s"

    #@3d
    .line 742
    const/4 v1, 0x4

    #@3e
    new-array v1, v1, [Ljava/lang/Object;

    #@40
    .line 744
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
    .line 745
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
    .line 742
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@66
    move-result-object v0

    #@67
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@6a
    .line 746
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

.method public static makeDataConnection(Lcom/android/internal/telephony/Phone;ILcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DataConnection;
    .locals 7
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "id"    # I
    .param p2, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p3, "failBringUpAll"    # Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;
    .param p4, "dcc"    # Lcom/android/internal/telephony/dataconnection/DcController;

    #@0
    .prologue
    .line 242
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2
    .line 243
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
    .line 242
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;ILcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)V

    #@24
    .line 244
    .local v0, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->start()V

    #@27
    .line 245
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
    .line 246
    return-object v0
.end method

.method private makeNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .locals 14

    #@0
    .prologue
    const/4 v13, 0x4

    #@1
    const/4 v12, 0x3

    #@2
    const/4 v11, 0x2

    #@3
    const/4 v10, 0x1

    #@4
    const/4 v6, 0x0

    #@5
    .line 889
    new-instance v1, Landroid/net/NetworkCapabilities;

    #@7
    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    #@a
    .line 890
    .local v1, "result":Landroid/net/NetworkCapabilities;
    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    #@d
    .line 892
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@f
    if-eqz v5, :cond_c

    #@11
    .line 893
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@13
    iget-object v7, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    #@15
    array-length v8, v7

    #@16
    move v5, v6

    #@17
    :goto_0
    if-ge v5, v8, :cond_b

    #@19
    aget-object v3, v7, v5

    #@1b
    .line 894
    .local v3, "type":Ljava/lang/String;
    const-string/jumbo v9, "*"

    #@1e
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v9

    #@22
    if-eqz v9, :cond_1

    #@24
    .line 896
    const/16 v9, 0xc

    #@26
    invoke-virtual {v1, v9}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@29
    .line 897
    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@2c
    .line 898
    invoke-virtual {v1, v10}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@2f
    .line 899
    invoke-virtual {v1, v12}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@32
    .line 900
    invoke-virtual {v1, v13}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@35
    .line 901
    const/4 v9, 0x5

    #@36
    invoke-virtual {v1, v9}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@39
    .line 902
    const/4 v9, 0x7

    #@3a
    invoke-virtual {v1, v9}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@3d
    .line 893
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 894
    :cond_1
    const-string/jumbo v9, "default"

    #@43
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v9

    #@47
    if-eqz v9, :cond_2

    #@49
    .line 906
    const/16 v9, 0xc

    #@4b
    invoke-virtual {v1, v9}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@4e
    goto :goto_1

    #@4f
    .line 894
    :cond_2
    const-string/jumbo v9, "mms"

    #@52
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v9

    #@56
    if-eqz v9, :cond_3

    #@58
    .line 910
    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@5b
    goto :goto_1

    #@5c
    .line 894
    :cond_3
    const-string/jumbo v9, "supl"

    #@5f
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@62
    move-result v9

    #@63
    if-eqz v9, :cond_4

    #@65
    .line 914
    invoke-virtual {v1, v10}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@68
    goto :goto_1

    #@69
    .line 894
    :cond_4
    const-string/jumbo v9, "dun"

    #@6c
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f
    move-result v9

    #@70
    if-eqz v9, :cond_6

    #@72
    .line 918
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@74
    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@77
    move-result-object v2

    #@78
    .line 919
    .local v2, "securedDunApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v2, :cond_5

    #@7a
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@7c
    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->equals(Ljava/lang/Object;)Z

    #@7f
    move-result v9

    #@80
    if-eqz v9, :cond_0

    #@82
    .line 920
    :cond_5
    invoke-virtual {v1, v11}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@85
    goto :goto_1

    #@86
    .line 894
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
    .line 925
    invoke-virtual {v1, v12}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@92
    goto :goto_1

    #@93
    .line 894
    :cond_7
    const-string/jumbo v9, "ims"

    #@96
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@99
    move-result v9

    #@9a
    if-eqz v9, :cond_8

    #@9c
    .line 929
    invoke-virtual {v1, v13}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@9f
    goto :goto_1

    #@a0
    .line 894
    :cond_8
    const-string/jumbo v9, "cbs"

    #@a3
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a6
    move-result v9

    #@a7
    if-eqz v9, :cond_9

    #@a9
    .line 933
    const/4 v9, 0x5

    #@aa
    invoke-virtual {v1, v9}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@ad
    goto :goto_1

    #@ae
    .line 894
    :cond_9
    const-string/jumbo v9, "ia"

    #@b1
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b4
    move-result v9

    #@b5
    if-eqz v9, :cond_a

    #@b7
    .line 937
    const/4 v9, 0x7

    #@b8
    invoke-virtual {v1, v9}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@bb
    goto :goto_1

    #@bc
    .line 894
    :cond_a
    const-string/jumbo v9, "emergency"

    #@bf
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c2
    move-result v9

    #@c3
    if-eqz v9, :cond_0

    #@c5
    .line 941
    const/16 v9, 0xa

    #@c7
    invoke-virtual {v1, v9}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@ca
    goto/16 :goto_1

    #@cc
    .line 950
    .end local v3    # "type":Ljava/lang/String;
    :cond_b
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@ce
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    #@d0
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@d3
    move-result-object v7

    #@d4
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    #@d6
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@d9
    move-result v8

    #@da
    .line 951
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    #@dc
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@df
    move-result-object v9

    #@e0
    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@e3
    move-result v9

    #@e4
    .line 950
    invoke-virtual {v5, v7, v8, v9}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->isMetered(Landroid/content/Context;IZ)Z

    #@e7
    move-result v5

    #@e8
    if-nez v5, :cond_e

    #@ea
    .line 952
    const/16 v5, 0xb

    #@ec
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    #@ef
    .line 953
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@f1
    invoke-virtual {v5, v6}, Landroid/net/NetworkInfo;->setMetered(Z)V

    #@f4
    .line 959
    :goto_2
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->maybeMarkCapabilitiesRestricted()V

    #@f7
    .line 961
    :cond_c
    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRestrictedNetworkOverride:Z

    #@f9
    if-eqz v5, :cond_d

    #@fb
    .line 962
    const/16 v5, 0xd

    #@fd
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    #@100
    .line 964
    invoke-virtual {v1, v11}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    #@103
    .line 967
    :cond_d
    const/16 v4, 0xe

    #@105
    .line 968
    .local v4, "up":I
    const/16 v0, 0xe

    #@107
    .line 969
    .local v0, "down":I
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    #@109
    packed-switch v5, :pswitch_data_0

    #@10c
    .line 988
    :goto_3
    :pswitch_0
    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)V

    #@10f
    .line 989
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)V

    #@112
    .line 991
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    #@114
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@117
    move-result v5

    #@118
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@11b
    move-result-object v5

    #@11c
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    #@11f
    .line 993
    return-object v1

    #@120
    .line 955
    .end local v0    # "down":I
    .end local v4    # "up":I
    :cond_e
    const/16 v5, 0xb

    #@122
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    #@125
    .line 956
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@127
    invoke-virtual {v5, v10}, Landroid/net/NetworkInfo;->setMetered(Z)V

    #@12a
    goto :goto_2

    #@12b
    .line 970
    .restart local v0    # "down":I
    .restart local v4    # "up":I
    :pswitch_1
    const/16 v4, 0x50

    #@12d
    const/16 v0, 0x50

    #@12f
    goto :goto_3

    #@130
    .line 971
    :pswitch_2
    const/16 v4, 0x3b

    #@132
    const/16 v0, 0xec

    #@134
    goto :goto_3

    #@135
    .line 972
    :pswitch_3
    const/16 v4, 0x180

    #@137
    const/16 v0, 0x180

    #@139
    goto :goto_3

    #@13a
    .line 974
    :pswitch_4
    const/16 v4, 0xe

    #@13c
    const/16 v0, 0xe

    #@13e
    goto :goto_3

    #@13f
    .line 975
    :pswitch_5
    const/16 v4, 0x99

    #@141
    const/16 v0, 0x999

    #@143
    goto :goto_3

    #@144
    .line 976
    :pswitch_6
    const/16 v4, 0x733

    #@146
    const/16 v0, 0xc66

    #@148
    goto :goto_3

    #@149
    .line 977
    :pswitch_7
    const/16 v4, 0x64

    #@14b
    const/16 v0, 0x64

    #@14d
    goto :goto_3

    #@14e
    .line 978
    :pswitch_8
    const/16 v4, 0x800

    #@150
    const/16 v0, 0x3800

    #@152
    goto :goto_3

    #@153
    .line 979
    :pswitch_9
    const/16 v4, 0x170a

    #@155
    const/16 v0, 0x3800

    #@157
    goto :goto_3

    #@158
    .line 980
    :pswitch_a
    const/16 v4, 0x170a

    #@15a
    const/16 v0, 0x3800

    #@15c
    goto :goto_3

    #@15d
    .line 981
    :pswitch_b
    const/16 v4, 0x733

    #@15f
    const/16 v0, 0x1399

    #@161
    goto :goto_3

    #@162
    .line 982
    :pswitch_c
    const v4, 0xc800

    #@165
    const v0, 0x19000

    #@168
    goto :goto_3

    #@169
    .line 983
    :pswitch_d
    const v4, 0xc800

    #@16c
    const v0, 0x19000

    #@16f
    goto :goto_3

    #@170
    .line 984
    :pswitch_e
    const/16 v4, 0x99

    #@172
    const/16 v0, 0x9d4

    #@174
    goto :goto_3

    #@175
    .line 985
    :pswitch_f
    const/16 v4, 0x2c00

    #@177
    const v0, 0xa800

    #@17a
    goto :goto_3

    #@17b
    .line 969
    nop

    #@17c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_c
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method private static msgToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 6
    .param p0, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1967
    if-nez p0, :cond_0

    #@2
    .line 1968
    const-string/jumbo v1, "null"

    #@5
    .line 2003
    .local v1, "retVal":Ljava/lang/String;
    :goto_0
    return-object v1

    #@6
    .line 1970
    .end local v1    # "retVal":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    .line 1972
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "{what="

    #@e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 1973
    iget v2, p0, Landroid/os/Message;->what:I

    #@13
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->cmdToString(I)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 1975
    const-string/jumbo v2, " when="

    #@1d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 1976
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
    .line 1978
    iget v2, p0, Landroid/os/Message;->arg1:I

    #@2e
    if-eqz v2, :cond_1

    #@30
    .line 1979
    const-string/jumbo v2, " arg1="

    #@33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 1980
    iget v2, p0, Landroid/os/Message;->arg1:I

    #@38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    .line 1983
    :cond_1
    iget v2, p0, Landroid/os/Message;->arg2:I

    #@3d
    if-eqz v2, :cond_2

    #@3f
    .line 1984
    const-string/jumbo v2, " arg2="

    #@42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 1985
    iget v2, p0, Landroid/os/Message;->arg2:I

    #@47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    .line 1988
    :cond_2
    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4c
    if-eqz v2, :cond_3

    #@4e
    .line 1989
    const-string/jumbo v2, " obj="

    #@51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 1990
    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    .line 1993
    :cond_3
    const-string/jumbo v2, " target="

    #@5c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    .line 1994
    invoke-virtual {p0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    #@62
    move-result-object v2

    #@63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@66
    .line 1996
    const-string/jumbo v2, " replyTo="

    #@69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    .line 1997
    iget-object v2, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@6e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@71
    .line 1999
    const-string/jumbo v2, "}"

    #@74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    .line 2001
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
    .line 556
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
    .line 555
    return-void
.end method

.method private notifyAllOfConnected(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 549
    const/4 v0, 0x0

    #@1
    const v1, 0x42000

    #@4
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    #@7
    .line 548
    return-void
.end method

.method private notifyAllOfDisconnectDcRetrying(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 553
    const/4 v0, 0x0

    #@1
    const v1, 0x42022

    #@4
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    #@7
    .line 552
    return-void
.end method

.method private notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V
    .locals 8
    .param p1, "alreadySent"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "event"    # I
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 534
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@2
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@4
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@7
    move-result-object v6

    #@8
    .line 535
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@a
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@d
    move-result-object v7

    #@e
    .line 534
    invoke-virtual {v5, v6, p3, v7}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 536
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@13
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@16
    move-result-object v5

    #@17
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v2

    #@1b
    .local v2, "cp$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v5

    #@1f
    if-eqz v5, :cond_2

    #@21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@27
    .line 537
    .local v1, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget-object v0, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@29
    .line 538
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eq v0, p1, :cond_0

    #@2b
    .line 539
    if-eqz p3, :cond_1

    #@2d
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@30
    .line 541
    :cond_1
    new-instance v4, Landroid/util/Pair;

    #@32
    iget v5, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mConnectionGeneration:I

    #@34
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@37
    move-result-object v5

    #@38
    invoke-direct {v4, v0, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@3b
    .line 542
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@3d
    invoke-virtual {v5, p2, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@40
    move-result-object v3

    #@41
    .line 543
    .local v3, "msg":Landroid/os/Message;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@44
    .line 544
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    #@47
    goto :goto_0

    #@48
    .line 533
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v1    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/Integer;>;"
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
    .line 568
    const/4 v0, 0x0

    #@2
    .line 570
    .local v0, "alreadySent":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz p1, :cond_0

    #@4
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mOnCompletedMsg:Landroid/os/Message;

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 572
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mOnCompletedMsg:Landroid/os/Message;

    #@a
    .line 573
    .local v1, "connectionCompletedMsg":Landroid/os/Message;
    iput-object v5, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mOnCompletedMsg:Landroid/os/Message;

    #@c
    .line 574
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@e
    .line 576
    .local v0, "alreadySent":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@11
    move-result-wide v2

    #@12
    .line 577
    .local v2, "timeStamp":J
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    #@14
    iput v4, v1, Landroid/os/Message;->arg1:I

    #@16
    .line 579
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@18
    if-ne p2, v4, :cond_2

    #@1a
    .line 580
    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    #@1c
    .line 581
    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@1f
    .line 592
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v5, "notifyConnectCompleted at "

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    const-string/jumbo v5, " cause="

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    .line 593
    const-string/jumbo v5, " connectionCompletedMsg="

    #@3d
    .line 592
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    .line 593
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->msgToString(Landroid/os/Message;)Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    .line 592
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@50
    .line 596
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@53
    .line 598
    .end local v0    # "alreadySent":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v1    # "connectionCompletedMsg":Landroid/os/Message;
    .end local v2    # "timeStamp":J
    :cond_0
    if-eqz p3, :cond_1

    #@55
    .line 599
    new-instance v4, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v5, "Send to all. "

    #@5d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    const-string/jumbo v5, " "

    #@68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v4

    #@6c
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    #@6f
    move-result-object v5

    #@70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v4

    #@78
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@7b
    .line 601
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    #@7e
    move-result-object v4

    #@7f
    .line 600
    const v5, 0x42023

    #@82
    invoke-direct {p0, v0, v5, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    #@85
    .line 567
    :cond_1
    return-void

    #@86
    .line 583
    .restart local v0    # "alreadySent":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .restart local v1    # "connectionCompletedMsg":Landroid/os/Message;
    .restart local v2    # "timeStamp":J
    :cond_2
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@88
    .line 584
    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    #@8a
    .line 587
    if-nez p2, :cond_3

    #@8c
    sget-object p2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@8e
    .line 589
    :cond_3
    new-instance v4, Ljava/lang/Throwable;

    #@90
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    #@93
    move-result-object v5

    #@94
    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    #@97
    .line 588
    invoke-static {v1, p2, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@9a
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
    .line 611
    const-string/jumbo v3, "NotifyDisconnectCompleted"

    #@4
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@7
    .line 613
    const/4 v0, 0x0

    #@8
    .line 614
    .local v0, "alreadySent":Lcom/android/internal/telephony/dataconnection/ApnContext;
    const/4 v2, 0x0

    #@9
    .line 616
    .local v2, "reason":Ljava/lang/String;
    if-eqz p1, :cond_1

    #@b
    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mOnCompletedMsg:Landroid/os/Message;

    #@d
    if-eqz v3, :cond_1

    #@f
    .line 618
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mOnCompletedMsg:Landroid/os/Message;

    #@11
    .line 619
    .local v1, "msg":Landroid/os/Message;
    iput-object v4, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mOnCompletedMsg:Landroid/os/Message;

    #@13
    .line 620
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@15
    instance-of v3, v3, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 621
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1b
    .end local v0    # "alreadySent":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@1d
    .line 623
    :cond_0
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    #@1f
    .line 625
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
    .line 626
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
    .line 625
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@40
    .line 628
    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@43
    .line 629
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@46
    .line 631
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "reason":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_3

    #@48
    .line 632
    if-nez v2, :cond_2

    #@4a
    .line 633
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@4c
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    .line 635
    :cond_2
    const v3, 0x4200f

    #@53
    invoke-direct {p0, v0, v3, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    #@56
    .line 637
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
    .line 610
    return-void

    #@6e
    .line 626
    .restart local v1    # "msg":Landroid/os/Message;
    .restart local v2    # "reason":Ljava/lang/String;
    :cond_4
    const-string/jumbo v3, "<no-reason>"

    #@71
    goto :goto_0
.end method

.method private onConnect(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V
    .locals 12
    .param p1, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@0
    .prologue
    const-wide/16 v10, -0x1

    #@2
    const/4 v4, 0x0

    #@3
    const v3, 0x40001

    #@6
    const/4 v2, 0x0

    #@7
    .line 435
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
    .line 436
    const-string/jumbo v1, "\' APN=\'"

    #@1e
    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 436
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@24
    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@26
    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 437
    const-string/jumbo v1, "\' proxy=\'"

    #@2d
    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    .line 437
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@33
    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    #@35
    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 437
    const-string/jumbo v1, "\' port=\'"

    #@3c
    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 437
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@42
    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    #@44
    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    .line 437
    const-string/jumbo v1, "\'"

    #@4b
    .line 435
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
    .line 438
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
    .line 441
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
    .line 442
    new-instance v9, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@6e
    invoke-direct {v9}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;-><init>()V

    #@71
    .line 443
    .local v9, "response":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    #@73
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@75
    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRilVersion()I

    #@78
    move-result v0

    #@79
    iput v0, v9, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    #@7b
    .line 444
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
    iput v0, v9, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    #@89
    .line 445
    iput v2, v9, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    #@8b
    .line 446
    iput v2, v9, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    #@8d
    .line 447
    const-string/jumbo v0, ""

    #@90
    iput-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    #@92
    .line 448
    const-string/jumbo v0, ""

    #@95
    iput-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    #@97
    .line 449
    new-array v0, v2, [Ljava/lang/String;

    #@99
    iput-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    #@9b
    .line 450
    new-array v0, v2, [Ljava/lang/String;

    #@9d
    iput-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    #@9f
    .line 451
    new-array v0, v2, [Ljava/lang/String;

    #@a1
    iput-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    #@a3
    .line 453
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    #@a5
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    #@a8
    move-result-object v0

    #@a9
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mSuggestedRetryTime:I

    #@ab
    .line 452
    iput v0, v9, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    #@ad
    .line 454
    new-array v0, v2, [Ljava/lang/String;

    #@af
    iput-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    #@b1
    .line 455
    iput v2, v9, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->mtu:I

    #@b3
    .line 457
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b6
    move-result-object v8

    #@b7
    .line 458
    .local v8, "msg":Landroid/os/Message;
    invoke-static {v8, v9, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@ba
    .line 459
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(Landroid/os/Message;)V

    #@bd
    .line 461
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
    .line 462
    const-string/jumbo v1, " send error response="

    #@d6
    .line 461
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v0

    #@da
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v0

    #@de
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v0

    #@e2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@e5
    .line 464
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
    .line 465
    return-void

    #@f2
    .line 468
    .end local v8    # "msg":Landroid/os/Message;
    .end local v9    # "response":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :cond_1
    iput-wide v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    #@f4
    .line 469
    iput-wide v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    #@f6
    .line 470
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@f8
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@fa
    .line 473
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@fd
    move-result-object v8

    #@fe
    .line 474
    .restart local v8    # "msg":Landroid/os/Message;
    iput-object p1, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@100
    .line 476
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@102
    iget v6, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    #@104
    .line 477
    .local v6, "authType":I
    const/4 v0, -0x1

    #@105
    if-ne v6, v0, :cond_2

    #@107
    .line 478
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
    const/4 v6, 0x0

    #@112
    .line 483
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    #@114
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@117
    move-result-object v0

    #@118
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    #@11b
    move-result v0

    #@11c
    if-eqz v0, :cond_4

    #@11e
    .line 484
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@120
    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    #@122
    .line 489
    .local v7, "protocol":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    #@124
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@126
    .line 490
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    #@128
    .line 491
    iget v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mProfileId:I

    #@12a
    .line 492
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@12c
    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@12e
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@130
    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    #@132
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@134
    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    #@136
    .line 489
    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    #@139
    .line 434
    return-void

    #@13a
    .line 479
    .end local v7    # "protocol":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x3

    #@13b
    goto :goto_0

    #@13c
    .line 486
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@13e
    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    #@140
    .restart local v7    # "protocol":Ljava/lang/String;
    goto :goto_1
.end method

.method private onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 691
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@2
    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@4
    .line 692
    .local v1, "response":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@6
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    #@8
    .line 695
    .local v0, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    #@a
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@c
    if-eq v3, v4, :cond_0

    #@e
    .line 697
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
    .line 699
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@36
    .line 729
    .local v2, "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :goto_0
    return-object v2

    #@37
    .line 700
    .end local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :cond_0
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@39
    if-eqz v3, :cond_4

    #@3b
    .line 702
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
    .line 703
    const-string/jumbo v4, " response="

    #@50
    .line 702
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
    .line 706
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@61
    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    #@63
    if-eqz v3, :cond_1

    #@65
    .line 707
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@67
    check-cast v3, Lcom/android/internal/telephony/CommandException;

    #@69
    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    #@6c
    move-result-object v3

    #@6d
    .line 708
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    #@6f
    .line 707
    if-ne v3, v4, :cond_1

    #@71
    .line 709
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_BadCommand:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@73
    .line 710
    .restart local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@75
    iput-object v3, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@77
    goto :goto_0

    #@78
    .line 711
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
    .line 712
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_GetLastErrorFromRil:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@81
    .restart local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    goto :goto_0

    #@82
    .line 714
    .end local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@84
    .line 715
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
    .line 717
    .end local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :cond_4
    iget v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    #@8f
    if-eqz v3, :cond_5

    #@91
    .line 718
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@93
    .line 719
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
    .line 721
    .end local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :cond_5
    const-string/jumbo v3, "onSetupConnectionCompleted received successful DataCallResponse"

    #@9f
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@a2
    .line 722
    iget v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    #@a4
    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    #@a6
    .line 724
    iget-object v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    #@a8
    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPcscfAddr:[Ljava/lang/String;

    #@aa
    .line 726
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateLinkProperty(Lcom/android/internal/telephony/dataconnection/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;

    #@ad
    move-result-object v3

    #@ae
    iget-object v2, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@b0
    .restart local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    goto :goto_0
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

.method private setNetworkRestriction()V
    .locals 9

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 867
    iput-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRestrictedNetworkOverride:Z

    #@4
    .line 869
    const/4 v2, 0x1

    #@5
    .line 870
    .local v2, "noRestrictedRequests":Z
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@7
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@a
    move-result-object v5

    #@b
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .end local v2    # "noRestrictedRequests":Z
    .local v1, "apnContext$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v5

    #@13
    if-eqz v5, :cond_0

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@1b
    .line 871
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->hasNoRestrictedRequests(Z)Z

    #@1e
    move-result v5

    #@1f
    and-int/2addr v2, v5

    #@20
    .local v2, "noRestrictedRequests":Z
    goto :goto_0

    #@21
    .line 873
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v2    # "noRestrictedRequests":Z
    :cond_0
    if-eqz v2, :cond_1

    #@23
    .line 874
    return-void

    #@24
    .line 879
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@26
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    #@28
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@2b
    move-result-object v6

    #@2c
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2e
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@31
    move-result v7

    #@32
    .line 880
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    #@34
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@37
    move-result-object v8

    #@38
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@3b
    move-result v8

    #@3c
    .line 879
    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->isMetered(Landroid/content/Context;IZ)Z

    #@3f
    move-result v5

    #@40
    if-nez v5, :cond_2

    #@42
    .line 881
    return-void

    #@43
    .line 885
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@45
    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataEnabled(Z)Z

    #@48
    move-result v5

    #@49
    if-nez v5, :cond_3

    #@4b
    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRestrictedNetworkOverride:Z

    #@4d
    .line 866
    return-void

    #@4e
    :cond_3
    move v3, v4

    #@4f
    .line 885
    goto :goto_1
.end method

.method static slog(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2007
    const-string/jumbo v0, "DC"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 2006
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
    .line 505
    const/4 v2, 0x0

    #@6
    .line 506
    .local v2, "discReason":I
    const/4 v0, 0x0

    #@7
    .line 507
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz p1, :cond_0

    #@9
    instance-of v5, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    #@b
    if-eqz v5, :cond_0

    #@d
    move-object v3, p1

    #@e
    .line 508
    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    #@10
    .line 509
    .local v3, "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    iget-object v0, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    #@12
    .line 510
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
    .line 511
    const/4 v2, 0x1

    #@1e
    .line 516
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v3    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    #@20
    iget-object v5, v5, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

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
    .line 517
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2e
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@35
    move-result v5

    #@36
    .line 518
    const/16 v6, 0x12

    #@38
    .line 517
    if-ne v5, v6, :cond_4

    #@3a
    .line 519
    :cond_1
    const-string/jumbo v4, "tearDownData radio is on, call deactivateDataCall"

    #@3d
    .line 520
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@40
    .line 521
    if-eqz v0, :cond_2

    #@42
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@45
    .line 522
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    #@47
    iget-object v5, v5, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@49
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    #@4b
    .line 523
    iget v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@4d
    invoke-virtual {p0, v9, v7, v8, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@50
    move-result-object v7

    #@51
    .line 522
    invoke-interface {v5, v6, v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(IILandroid/os/Message;)V

    #@54
    .line 504
    :goto_1
    return-void

    #@55
    .line 512
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
    .line 513
    const/4 v2, 0x2

    #@61
    goto :goto_0

    #@62
    .line 525
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v3    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    :cond_4
    const-string/jumbo v4, "tearDownData radio is off sendMessage EVENT_DEACTIVATE_DONE immediately"

    #@65
    .line 526
    .restart local v4    # "str":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@68
    .line 527
    if-eqz v0, :cond_5

    #@6a
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@6d
    .line 528
    :cond_5
    new-instance v1, Landroid/os/AsyncResult;

    #@6f
    invoke-direct {v1, p1, v7, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@72
    .line 529
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
    .locals 9

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    .line 1259
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@5
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@8
    move-result-object v1

    #@9
    .line 1262
    .local v1, "oldState":Landroid/net/NetworkInfo$DetailedState;
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@b
    if-nez v5, :cond_0

    #@d
    .line 1263
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    #@10
    move-result-object v5

    #@11
    const-string/jumbo v6, "Setting suspend state without a NetworkAgent"

    #@14
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 1267
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    #@19
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@1c
    move-result-object v2

    #@1d
    .line 1268
    .local v2, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_1

    #@23
    .line 1269
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@25
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    #@27
    .line 1270
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@29
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@2c
    move-result-object v7

    #@2d
    .line 1269
    invoke-virtual {v5, v6, v8, v7}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@30
    .line 1284
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@32
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@35
    move-result-object v5

    #@36
    if-eq v1, v5, :cond_4

    #@38
    :goto_1
    return v3

    #@39
    .line 1273
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    #@3c
    move-result v5

    #@3d
    if-nez v5, :cond_3

    #@3f
    .line 1274
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    #@41
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    #@44
    move-result-object v0

    #@45
    .line 1275
    .local v0, "ct":Lcom/android/internal/telephony/CallTracker;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@48
    move-result-object v5

    #@49
    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@4b
    if-eq v5, v6, :cond_3

    #@4d
    .line 1276
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@4f
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    #@51
    .line 1277
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@53
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@56
    move-result-object v7

    #@57
    .line 1276
    invoke-virtual {v5, v6, v8, v7}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@5a
    .line 1278
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    #@5c
    if-eq v1, v5, :cond_2

    #@5e
    :goto_2
    return v3

    #@5f
    :cond_2
    move v3, v4

    #@60
    goto :goto_2

    #@61
    .line 1281
    .end local v0    # "ct":Lcom/android/internal/telephony/CallTracker;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@63
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@65
    .line 1282
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@67
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    #@6a
    move-result-object v7

    #@6b
    .line 1281
    invoke-virtual {v5, v6, v8, v7}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    #@6e
    goto :goto_0

    #@6f
    :cond_4
    move v3, v4

    #@70
    .line 1284
    goto :goto_1
.end method

.method private updateTcpBufferSizes(I)V
    .locals 7
    .param p1, "rilRat"    # I

    #@0
    .prologue
    .line 765
    const/4 v3, 0x0

    #@1
    .line 766
    .local v3, "sizes":Ljava/lang/String;
    const/16 v5, 0x13

    #@3
    if-ne p1, v5, :cond_0

    #@5
    .line 769
    const/16 p1, 0xe

    #@7
    .line 771
    :cond_0
    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    #@a
    move-result-object v5

    #@b
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@d
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    .line 774
    .local v2, "ratName":Ljava/lang/String;
    const/4 v5, 0x7

    #@12
    if-eq p1, v5, :cond_1

    #@14
    .line 775
    const/16 v5, 0x8

    #@16
    if-ne p1, v5, :cond_5

    #@18
    .line 777
    :cond_1
    :goto_0
    const-string/jumbo v2, "evdo"

    #@1b
    .line 781
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    #@1d
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@24
    move-result-object v5

    #@25
    .line 782
    const v6, 0x1070033

    #@28
    .line 781
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    .line 783
    .local v0, "configOverride":[Ljava/lang/String;
    const/4 v1, 0x0

    #@2d
    .local v1, "i":I
    :goto_1
    array-length v5, v0

    #@2e
    if-ge v1, v5, :cond_3

    #@30
    .line 784
    aget-object v5, v0, v1

    #@32
    const-string/jumbo v6, ":"

    #@35
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    .line 785
    .local v4, "split":[Ljava/lang/String;
    const/4 v5, 0x0

    #@3a
    aget-object v5, v4, v5

    #@3c
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v5

    #@40
    if-eqz v5, :cond_6

    #@42
    array-length v5, v4

    #@43
    const/4 v6, 0x2

    #@44
    if-ne v5, v6, :cond_6

    #@46
    .line 786
    const/4 v5, 0x1

    #@47
    aget-object v3, v4, v5

    #@49
    .line 791
    .end local v3    # "sizes":Ljava/lang/String;
    .end local v4    # "split":[Ljava/lang/String;
    :cond_3
    if-nez v3, :cond_4

    #@4b
    .line 795
    packed-switch p1, :pswitch_data_0

    #@4e
    .line 835
    :cond_4
    :goto_2
    :pswitch_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    #@50
    invoke-virtual {v5, v3}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    #@53
    .line 764
    return-void

    #@54
    .line 776
    .end local v0    # "configOverride":[Ljava/lang/String;
    .end local v1    # "i":I
    .restart local v3    # "sizes":Ljava/lang/String;
    :cond_5
    const/16 v5, 0xc

    #@56
    if-ne p1, v5, :cond_2

    #@58
    goto :goto_0

    #@59
    .line 783
    .restart local v0    # "configOverride":[Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v4    # "split":[Ljava/lang/String;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    #@5b
    goto :goto_1

    #@5c
    .line 797
    .end local v3    # "sizes":Ljava/lang/String;
    .end local v4    # "split":[Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v3, "4092,8760,48000,4096,8760,48000"

    #@5f
    .local v3, "sizes":Ljava/lang/String;
    goto :goto_2

    #@60
    .line 800
    .end local v3    # "sizes":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v3, "4093,26280,70800,4096,16384,70800"

    #@63
    .restart local v3    # "sizes":Ljava/lang/String;
    goto :goto_2

    #@64
    .line 803
    .end local v3    # "sizes":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v3, "58254,349525,1048576,58254,349525,1048576"

    #@67
    .restart local v3    # "sizes":Ljava/lang/String;
    goto :goto_2

    #@68
    .line 806
    .end local v3    # "sizes":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v3, "16384,32768,131072,4096,16384,102400"

    #@6b
    .restart local v3    # "sizes":Ljava/lang/String;
    goto :goto_2

    #@6c
    .line 811
    .end local v3    # "sizes":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v3, "4094,87380,262144,4096,16384,262144"

    #@6f
    .restart local v3    # "sizes":Ljava/lang/String;
    goto :goto_2

    #@70
    .line 814
    .end local v3    # "sizes":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v3, "131072,262144,1048576,4096,16384,524288"

    #@73
    .restart local v3    # "sizes":Ljava/lang/String;
    goto :goto_2

    #@74
    .line 817
    .end local v3    # "sizes":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v3, "61167,367002,1101005,8738,52429,262114"

    #@77
    .restart local v3    # "sizes":Ljava/lang/String;
    goto :goto_2

    #@78
    .line 821
    .end local v3    # "sizes":Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v3, "40778,244668,734003,16777,100663,301990"

    #@7b
    .restart local v3    # "sizes":Ljava/lang/String;
    goto :goto_2

    #@7c
    .line 825
    .end local v3    # "sizes":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v3, "524288,1048576,2097152,262144,524288,1048576"

    #@7f
    .restart local v3    # "sizes":Ljava/lang/String;
    goto :goto_2

    #@80
    .line 828
    .end local v3    # "sizes":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v3, "122334,734003,2202010,32040,192239,576717"

    #@83
    .restart local v3    # "sizes":Ljava/lang/String;
    goto :goto_2

    #@84
    .line 795
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method dispose()V
    .locals 1

    #@0
    .prologue
    .line 250
    const-string/jumbo v0, "dispose: call quiteNow()"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@6
    .line 251
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->quitNow()V

    #@9
    .line 249
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2121
    const-string/jumbo v0, "DataConnection "

    #@3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    .line 2122
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@9
    .line 2123
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
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@17
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

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
    .line 2124
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
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

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
    .line 2125
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@42
    .line 2126
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
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

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
    .line 2127
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
    .line 2128
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
    .line 2129
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
    .line 2130
    new-instance v0, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string/jumbo v1, " mConnectionParams="

    #@ae
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v0

    #@b2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

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
    .line 2131
    new-instance v0, Ljava/lang/StringBuilder;

    #@c1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c4
    const-string/jumbo v1, " mDisconnectParams="

    #@c7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v0

    #@cb
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectParams:Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

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
    .line 2132
    new-instance v0, Ljava/lang/StringBuilder;

    #@da
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@dd
    const-string/jumbo v1, " mDcFailCause="

    #@e0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v0

    #@e4
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

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
    .line 2133
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@f4
    .line 2134
    new-instance v0, Ljava/lang/StringBuilder;

    #@f6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f9
    const-string/jumbo v1, " mPhone="

    #@fc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v0

    #@100
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    #@102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v0

    #@106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@109
    move-result-object v0

    #@10a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10d
    .line 2135
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@110
    .line 2136
    new-instance v0, Ljava/lang/StringBuilder;

    #@112
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@115
    const-string/jumbo v1, " mLinkProperties="

    #@118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v0

    #@11c
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    #@11e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v0

    #@122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@125
    move-result-object v0

    #@126
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@129
    .line 2137
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@12c
    .line 2138
    new-instance v0, Ljava/lang/StringBuilder;

    #@12e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@131
    const-string/jumbo v1, " mDataRegState="

    #@134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v0

    #@138
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I

    #@13a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v0

    #@13e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@141
    move-result-object v0

    #@142
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@145
    .line 2139
    new-instance v0, Ljava/lang/StringBuilder;

    #@147
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14a
    const-string/jumbo v1, " mRilRat="

    #@14d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    move-result-object v0

    #@151
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

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
    .line 2140
    new-instance v0, Ljava/lang/StringBuilder;

    #@160
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@163
    const-string/jumbo v1, " mNetworkCapabilities="

    #@166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v0

    #@16a
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->makeNetworkCapabilities()Landroid/net/NetworkCapabilities;

    #@16d
    move-result-object v1

    #@16e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v0

    #@172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@175
    move-result-object v0

    #@176
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@179
    .line 2141
    new-instance v0, Ljava/lang/StringBuilder;

    #@17b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@17e
    const-string/jumbo v1, " mCreateTime="

    #@181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@184
    move-result-object v0

    #@185
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    #@187
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    #@18a
    move-result-object v1

    #@18b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v0

    #@18f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@192
    move-result-object v0

    #@193
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@196
    .line 2142
    new-instance v0, Ljava/lang/StringBuilder;

    #@198
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@19b
    const-string/jumbo v1, " mLastFailTime="

    #@19e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v0

    #@1a2
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    #@1a4
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    #@1a7
    move-result-object v1

    #@1a8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ab
    move-result-object v0

    #@1ac
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1af
    move-result-object v0

    #@1b0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b3
    .line 2143
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1b8
    const-string/jumbo v1, " mLastFailCause="

    #@1bb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1be
    move-result-object v0

    #@1bf
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1c1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c4
    move-result-object v0

    #@1c5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c8
    move-result-object v0

    #@1c9
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1cc
    .line 2144
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@1cf
    .line 2145
    new-instance v0, Ljava/lang/StringBuilder;

    #@1d1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1d4
    const-string/jumbo v1, " mUserData="

    #@1d7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1da
    move-result-object v0

    #@1db
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUserData:Ljava/lang/Object;

    #@1dd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e0
    move-result-object v0

    #@1e1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e4
    move-result-object v0

    #@1e5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e8
    .line 2146
    new-instance v0, Ljava/lang/StringBuilder;

    #@1ea
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1ed
    const-string/jumbo v1, " mInstanceNumber="

    #@1f0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f3
    move-result-object v0

    #@1f4
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInstanceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

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
    .line 2147
    new-instance v0, Ljava/lang/StringBuilder;

    #@203
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@206
    const-string/jumbo v1, " mAc="

    #@209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20c
    move-result-object v0

    #@20d
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

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
    .line 2148
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@21d
    .line 2120
    return-void
.end method

.method getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 1

    #@0
    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@2
    return-object v0
.end method

.method getCid()I
    .locals 1

    #@0
    .prologue
    .line 269
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    #@2
    return v0
.end method

.method getCopyLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    #@0
    .prologue
    .line 261
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
    .line 257
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
    .line 656
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mId:I

    #@2
    return v0
.end method

.method getIsInactive()Z
    .locals 2

    #@0
    .prologue
    .line 265
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
    .line 1962
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
    .line 291
    const/4 v4, 0x0

    #@1
    .line 292
    .local v4, "ret":Z
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    #@3
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    #@6
    move-result-object v2

    #@7
    .line 294
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
    .line 295
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v5, v0, Ljava/net/Inet4Address;

    #@19
    if-eqz v5, :cond_0

    #@1b
    move-object v3, v0

    #@1c
    .line 296
    check-cast v3, Ljava/net/Inet4Address;

    #@1e
    .line 297
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
    .line 298
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
    .line 299
    const/4 v4, 0x1

    #@37
    .line 304
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v3    # "i4addr":Ljava/net/Inet4Address;
    :cond_1
    return v4
.end method

.method public isIpv6Connected()Z
    .locals 6

    #@0
    .prologue
    .line 308
    const/4 v4, 0x0

    #@1
    .line 309
    .local v4, "ret":Z
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    #@3
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    #@6
    move-result-object v2

    #@7
    .line 311
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
    .line 312
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v5, v0, Ljava/net/Inet6Address;

    #@19
    if-eqz v5, :cond_0

    #@1b
    move-object v3, v0

    #@1c
    .line 313
    check-cast v3, Ljava/net/Inet6Address;

    #@1e
    .line 314
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
    .line 315
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
    .line 316
    const/4 v4, 0x1

    #@37
    .line 321
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
    .line 2017
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    .line 2016
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2027
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    .line 2026
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2067
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    .line 2066
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 2078
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7
    .line 2077
    return-void
.end method

.method protected logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2047
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    .line 2046
    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2037
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    .line 2036
    return-void
.end method

.method protected logw(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2057
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    .line 2056
    return-void
.end method

.method setLinkPropertiesHttpProxy(Landroid/net/ProxyInfo;)V
    .locals 1
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    #@2
    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    #@5
    .line 276
    return-void
.end method

.method tearDownNow()V
    .locals 1

    #@0
    .prologue
    .line 1920
    const-string/jumbo v0, "tearDownNow()"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    #@6
    .line 1921
    const v0, 0x40008

    #@9
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(I)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(Landroid/os/Message;)V

    #@10
    .line 1919
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2096
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
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

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
    .line 2083
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
    .line 2084
    const-string/jumbo v1, " mApnSetting="

    #@23
    .line 2083
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 2084
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@29
    .line 2083
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    .line 2084
    const-string/jumbo v1, " RefCount="

    #@30
    .line 2083
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 2084
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    #@36
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    #@39
    move-result v1

    #@3a
    .line 2083
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    .line 2085
    const-string/jumbo v1, " mCid="

    #@41
    .line 2083
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 2085
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    #@47
    .line 2083
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    .line 2085
    const-string/jumbo v1, " mCreateTime="

    #@4e
    .line 2083
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    .line 2085
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    #@54
    .line 2083
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    .line 2086
    const-string/jumbo v1, " mLastastFailTime="

    #@5b
    .line 2083
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    .line 2086
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    #@61
    .line 2083
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@64
    move-result-object v0

    #@65
    .line 2087
    const-string/jumbo v1, " mLastFailCause="

    #@68
    .line 2083
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v0

    #@6c
    .line 2087
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@6e
    .line 2083
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v0

    #@72
    .line 2088
    const-string/jumbo v1, " mTag="

    #@75
    .line 2083
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v0

    #@79
    .line 2088
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    #@7b
    .line 2083
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v0

    #@7f
    .line 2089
    const-string/jumbo v1, " mLinkProperties="

    #@82
    .line 2083
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v0

    #@86
    .line 2089
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    #@88
    .line 2083
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v0

    #@8c
    .line 2090
    const-string/jumbo v1, " linkCapabilities="

    #@8f
    .line 2083
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v0

    #@93
    .line 2090
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->makeNetworkCapabilities()Landroid/net/NetworkCapabilities;

    #@96
    move-result-object v1

    #@97
    .line 2083
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v0

    #@9b
    .line 2091
    const-string/jumbo v1, " mRestrictedNetworkOverride="

    #@9e
    .line 2083
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v0

    #@a2
    .line 2091
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRestrictedNetworkOverride:Z

    #@a4
    .line 2083
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v0

    #@a8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v0

    #@ac
    return-object v0
.end method

.method public updateLinkProperty(Lcom/android/internal/telephony/dataconnection/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    .locals 3
    .param p1, "newState"    # Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@0
    .prologue
    .line 325
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;

    #@2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    #@4
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;-><init>(Landroid/net/LinkProperties;)V

    #@7
    .line 327
    .local v0, "result":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    if-nez p1, :cond_0

    #@9
    return-object v0

    #@a
    .line 330
    :cond_0
    new-instance v1, Landroid/net/LinkProperties;

    #@c
    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    #@f
    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@11
    .line 333
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@13
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setLinkProperties(Lcom/android/internal/telephony/dataconnection/DataCallResponse;Landroid/net/LinkProperties;)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@16
    move-result-object v1

    #@17
    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@19
    .line 334
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@1b
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    #@1d
    if-eq v1, v2, :cond_1

    #@1f
    .line 335
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
    .line 336
    return-object v0

    #@39
    .line 339
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
    .line 341
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@46
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@48
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->checkSetMtu(Lcom/android/internal/telephony/dataconnection/ApnSetting;Landroid/net/LinkProperties;)V

    #@4b
    .line 343
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    #@4d
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    #@4f
    .line 345
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    #@51
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateTcpBufferSizes(I)V

    #@54
    .line 347
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
    .line 352
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
    .line 353
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@6a
    if-eqz v1, :cond_2

    #@6c
    .line 354
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    #@6e
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    #@70
    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    #@73
    .line 357
    :cond_2
    return-object v0

    #@74
    .line 348
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
    .line 349
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
