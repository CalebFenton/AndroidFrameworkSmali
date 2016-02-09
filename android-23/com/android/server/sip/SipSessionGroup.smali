.class Lcom/android/server/sip/SipSessionGroup;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"

# interfaces
.implements Ljavax/sip/SipListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;,
        Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;,
        Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;,
        Lcom/android/server/sip/SipSessionGroup$RegisterCommand;,
        Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;,
        Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;
    }
.end annotation


# static fields
.field private static final ANONYMOUS:Ljava/lang/String; = "anonymous"

.field private static final CANCEL_CALL_TIMER:I = 0x3

.field private static final DBG:Z = false

.field private static final DBG_PING:Z = false

.field private static final DEREGISTER:Ljava/util/EventObject;

.field private static final END_CALL:Ljava/util/EventObject;

.field private static final END_CALL_TIMER:I = 0x3

.field private static final EXPIRY_TIME:I = 0xe10

.field private static final INCALL_KEEPALIVE_INTERVAL:I = 0xa

.field private static final KEEPALIVE_TIMEOUT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SipSession"

.field private static final THREAD_POOL_SIZE:Ljava/lang/String; = "1"

.field private static final WAKE_LOCK_HOLDING_TIME:J = 0x1f4L


# instance fields
.field private mCallReceiverSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field private mExternalIp:Ljava/lang/String;

.field private mExternalPort:I

.field private mLocalIp:Ljava/lang/String;

.field private final mLocalProfile:Landroid/net/sip/SipProfile;

.field private final mPassword:Ljava/lang/String;

.field private mSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mSipHelper:Lcom/android/server/sip/SipHelper;

.field private mSipStack:Ljavax/sip/SipStack;

.field private mWakeLock:Lcom/android/server/sip/SipWakeLock;

.field private mWakeupTimer:Lcom/android/server/sip/SipWakeupTimer;


# direct methods
.method static synthetic -get0()Ljava/util/EventObject;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/sip/SipSessionGroup;->DEREGISTER:Ljava/util/EventObject;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Ljava/util/EventObject;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/sip/SipSessionGroup;->END_CALL:Ljava/util/EventObject;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/sip/SipSessionGroup;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mExternalIp:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/sip/SipSessionGroup;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/sip/SipSessionGroup;->mExternalPort:I

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/server/sip/SipSessionGroup;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalIp:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/sip/SipSessionGroup;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mPassword:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/sip/SipSessionGroup;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipWakeupTimer;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mWakeupTimer:Lcom/android/server/sip/SipWakeupTimer;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljavax/sip/header/HeaderAddress;)Landroid/net/sip/SipProfile;
    .locals 1
    .param p0, "header"    # Ljavax/sip/header/HeaderAddress;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/sip/SipSessionGroup;->createPeerProfile(Ljavax/sip/header/HeaderAddress;)Landroid/net/sip/SipProfile;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;Ljava/util/EventObject;)Z
    .locals 1
    .param p0, "expectedMethod"    # Ljava/lang/String;
    .param p1, "evt"    # Ljava/util/EventObject;

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/ResponseEvent;)V
    .locals 0
    .param p1, "evt"    # Ljavax/sip/ResponseEvent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->extractExternalAddress(Ljavax/sip/ResponseEvent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/sip/SipSessionGroup;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 0
    .param p1, "session"    # Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->removeSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z
    .locals 1
    .param p0, "s"    # Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .param p1, "evt"    # Ljava/util/EventObject;

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Ljava/util/EventObject;)Z
    .locals 1
    .param p0, "evt"    # Ljava/util/EventObject;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Ljava/util/EventObject;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Ljava/lang/String;Ljava/util/EventObject;)Z
    .locals 1
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/util/EventObject;

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/RequestEvent;Landroid/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .locals 1
    .param p1, "event"    # Ljavax/sip/RequestEvent;
    .param p2, "listener"    # Landroid/net/sip/ISipSessionListener;
    .param p3, "transaction"    # Ljavax/sip/ServerTransaction;
    .param p4, "newState"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/sip/SipSessionGroup;->createNewSession(Ljavax/sip/RequestEvent;Landroid/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/message/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Ljavax/sip/message/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->extractContent(Ljavax/sip/message/Message;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap7(Ljava/util/EventObject;)Ljava/lang/String;
    .locals 1
    .param p0, "evt"    # Ljava/util/EventObject;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/sip/SipSessionGroup;->logEvt(Ljava/util/EventObject;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap8(Lcom/android/server/sip/SipSessionGroup;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap9(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 0
    .param p1, "newSession"    # Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 102
    new-instance v0, Ljava/util/EventObject;

    #@2
    const-string/jumbo v1, "Deregister"

    #@5
    invoke-direct {v0, v1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    #@8
    sput-object v0, Lcom/android/server/sip/SipSessionGroup;->DEREGISTER:Ljava/util/EventObject;

    #@a
    .line 103
    new-instance v0, Ljava/util/EventObject;

    #@c
    const-string/jumbo v1, "End call"

    #@f
    invoke-direct {v0, v1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    #@12
    sput-object v0, Lcom/android/server/sip/SipSessionGroup;->END_CALL:Ljava/util/EventObject;

    #@14
    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/net/sip/SipProfile;Ljava/lang/String;Lcom/android/server/sip/SipWakeupTimer;Lcom/android/server/sip/SipWakeLock;)V
    .locals 1
    .param p1, "profile"    # Landroid/net/sip/SipProfile;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "timer"    # Lcom/android/server/sip/SipWakeupTimer;
    .param p4, "wakeLock"    # Lcom/android/server/sip/SipWakeLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 120
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 119
    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    #@a
    .line 133
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    #@c
    .line 134
    iput-object p2, p0, Lcom/android/server/sip/SipSessionGroup;->mPassword:Ljava/lang/String;

    #@e
    .line 135
    iput-object p3, p0, Lcom/android/server/sip/SipSessionGroup;->mWakeupTimer:Lcom/android/server/sip/SipWakeupTimer;

    #@10
    .line 136
    iput-object p4, p0, Lcom/android/server/sip/SipSessionGroup;->mWakeLock:Lcom/android/server/sip/SipWakeLock;

    #@12
    .line 137
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup;->reset()V

    #@15
    .line 132
    return-void
.end method

.method private declared-synchronized addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 4
    .param p1, "newSession"    # Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 291
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->removeSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    #@4
    .line 292
    invoke-virtual {p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getCallId()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 293
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    #@a
    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 294
    invoke-static {p1}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 296
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    #@15
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@18
    move-result-object v3

    #@19
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v1

    #@1d
    .local v1, "k$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_0

    #@23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .local v0, "k":Ljava/lang/String;
    goto :goto_0

    #@2a
    .end local v0    # "k":Ljava/lang/String;
    .end local v1    # "k$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    #@2b
    .line 290
    return-void

    #@2c
    .end local v2    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@2d
    monitor-exit p0

    #@2e
    throw v3
.end method

.method private createNewSession(Ljavax/sip/RequestEvent;Landroid/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .locals 3
    .param p1, "event"    # Ljavax/sip/RequestEvent;
    .param p2, "listener"    # Landroid/net/sip/ISipSessionListener;
    .param p3, "transaction"    # Ljavax/sip/ServerTransaction;
    .param p4, "newState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 425
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@2
    invoke-direct {v0, p0, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V

    #@5
    .line 426
    .local v0, "newSession":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    iput-object p3, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    #@7
    .line 427
    iput p4, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    #@9
    .line 428
    iget-object v1, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    #@b
    invoke-interface {v1}, Ljavax/sip/ServerTransaction;->getDialog()Ljavax/sip/Dialog;

    #@e
    move-result-object v1

    #@f
    iput-object v1, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    #@11
    .line 429
    iput-object p1, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    #@13
    .line 431
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, "From"

    #@1a
    invoke-interface {v1, v2}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@1d
    move-result-object v1

    #@1e
    .line 430
    check-cast v1, Ljavax/sip/header/HeaderAddress;

    #@20
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->createPeerProfile(Ljavax/sip/header/HeaderAddress;)Landroid/net/sip/SipProfile;

    #@23
    move-result-object v1

    #@24
    iput-object v1, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    #@26
    .line 433
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup;->extractContent(Ljavax/sip/message/Message;)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    .line 432
    iput-object v1, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    #@30
    .line 434
    return-object v0
.end method

.method private static createPeerProfile(Ljavax/sip/header/HeaderAddress;)Landroid/net/sip/SipProfile;
    .locals 9
    .param p0, "header"    # Ljavax/sip/header/HeaderAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 1708
    :try_start_0
    invoke-interface {p0}, Ljavax/sip/header/HeaderAddress;->getAddress()Ljavax/sip/address/Address;

    #@3
    move-result-object v0

    #@4
    .line 1709
    .local v0, "address":Ljavax/sip/address/Address;
    invoke-interface {v0}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    #@7
    move-result-object v5

    #@8
    check-cast v5, Ljavax/sip/address/SipURI;

    #@a
    .line 1710
    .local v5, "uri":Ljavax/sip/address/SipURI;
    invoke-interface {v5}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    #@d
    move-result-object v6

    #@e
    .line 1711
    .local v6, "username":Ljava/lang/String;
    if-nez v6, :cond_0

    #@10
    const-string/jumbo v6, "anonymous"

    #@13
    .line 1712
    :cond_0
    invoke-interface {v5}, Ljavax/sip/address/SipURI;->getPort()I

    #@16
    move-result v4

    #@17
    .line 1714
    .local v4, "port":I
    new-instance v7, Landroid/net/sip/SipProfile$Builder;

    #@19
    invoke-interface {v5}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    #@1c
    move-result-object v8

    #@1d
    invoke-direct {v7, v6, v8}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@20
    .line 1715
    invoke-interface {v0}, Ljavax/sip/address/Address;->getDisplayName()Ljava/lang/String;

    #@23
    move-result-object v8

    #@24
    .line 1714
    invoke-virtual {v7, v8}, Landroid/net/sip/SipProfile$Builder;->setDisplayName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    #@27
    move-result-object v1

    #@28
    .line 1716
    .local v1, "builder":Landroid/net/sip/SipProfile$Builder;
    if-lez v4, :cond_1

    #@2a
    invoke-virtual {v1, v4}, Landroid/net/sip/SipProfile$Builder;->setPort(I)Landroid/net/sip/SipProfile$Builder;

    #@2d
    .line 1717
    :cond_1
    invoke-virtual {v1}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    move-result-object v7

    #@31
    return-object v7

    #@32
    .line 1720
    .end local v0    # "address":Ljavax/sip/address/Address;
    .end local v1    # "builder":Landroid/net/sip/SipProfile$Builder;
    .end local v4    # "port":I
    .end local v5    # "uri":Ljavax/sip/address/SipURI;
    .end local v6    # "username":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@33
    .line 1721
    .local v3, "e":Ljava/text/ParseException;
    new-instance v7, Ljavax/sip/SipException;

    #@35
    const-string/jumbo v8, "createPeerProfile()"

    #@38
    invoke-direct {v7, v8, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3b
    throw v7

    #@3c
    .line 1718
    .end local v3    # "e":Ljava/text/ParseException;
    :catch_1
    move-exception v2

    #@3d
    .line 1719
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljavax/sip/SipException;

    #@3f
    const-string/jumbo v8, "createPeerProfile()"

    #@42
    invoke-direct {v7, v8, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@45
    throw v7
.end method

.method private static expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    .locals 3
    .param p0, "expectedMethod"    # Ljava/lang/String;
    .param p1, "evt"    # Ljava/util/EventObject;

    #@0
    .prologue
    .line 1697
    instance-of v2, p1, Ljavax/sip/ResponseEvent;

    #@2
    if-eqz v2, :cond_0

    #@4
    move-object v0, p1

    #@5
    .line 1698
    check-cast v0, Ljavax/sip/ResponseEvent;

    #@7
    .line 1699
    .local v0, "event":Ljavax/sip/ResponseEvent;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    #@a
    move-result-object v1

    #@b
    .line 1700
    .local v1, "response":Ljavax/sip/message/Response;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->getCseqMethod(Ljavax/sip/message/Message;)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@12
    move-result v2

    #@13
    return v2

    #@14
    .line 1702
    .end local v0    # "event":Ljavax/sip/ResponseEvent;
    .end local v1    # "response":Ljavax/sip/message/Response;
    :cond_0
    const/4 v2, 0x0

    #@15
    return v2
.end method

.method private extractContent(Ljavax/sip/message/Message;)Ljava/lang/String;
    .locals 5
    .param p1, "message"    # Ljavax/sip/message/Message;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 382
    invoke-interface {p1}, Ljavax/sip/message/Message;->getRawContent()[B

    #@4
    move-result-object v0

    #@5
    .line 383
    .local v0, "bytes":[B
    if-eqz v0, :cond_1

    #@7
    .line 385
    :try_start_0
    instance-of v2, p1, Lgov/nist/javax/sip/message/SIPMessage;

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 386
    check-cast p1, Lgov/nist/javax/sip/message/SIPMessage;

    #@d
    .end local p1    # "message":Ljavax/sip/message/Message;
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getMessageContent()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    return-object v2

    #@12
    .line 388
    .restart local p1    # "message":Ljavax/sip/message/Message;
    :cond_0
    new-instance v2, Ljava/lang/String;

    #@14
    const-string/jumbo v3, "UTF-8"

    #@17
    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    return-object v2

    #@1b
    .line 390
    .end local p1    # "message":Ljavax/sip/message/Message;
    :catch_0
    move-exception v1

    #@1c
    .line 393
    :cond_1
    return-object v4
.end method

.method private extractExternalAddress(Ljavax/sip/ResponseEvent;)V
    .locals 5
    .param p1, "evt"    # Ljavax/sip/ResponseEvent;

    #@0
    .prologue
    .line 397
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    #@3
    move-result-object v1

    #@4
    .line 399
    .local v1, "response":Ljavax/sip/message/Response;
    const-string/jumbo v4, "Via"

    #@7
    .line 398
    invoke-interface {v1, v4}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@a
    move-result-object v3

    #@b
    check-cast v3, Ljavax/sip/header/ViaHeader;

    #@d
    .line 400
    .local v3, "viaHeader":Ljavax/sip/header/ViaHeader;
    if-nez v3, :cond_0

    #@f
    return-void

    #@10
    .line 401
    :cond_0
    invoke-interface {v3}, Ljavax/sip/header/ViaHeader;->getRPort()I

    #@13
    move-result v2

    #@14
    .line 402
    .local v2, "rport":I
    invoke-interface {v3}, Ljavax/sip/header/ViaHeader;->getReceived()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 403
    .local v0, "externalIp":Ljava/lang/String;
    if-lez v2, :cond_1

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 404
    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mExternalIp:Ljava/lang/String;

    #@1e
    .line 405
    iput v2, p0, Lcom/android/server/sip/SipSessionGroup;->mExternalPort:I

    #@20
    .line 396
    :cond_1
    return-void
.end method

.method private static getCseqMethod(Ljavax/sip/message/Message;)Ljava/lang/String;
    .locals 1
    .param p0, "message"    # Ljavax/sip/message/Message;

    #@0
    .prologue
    .line 1688
    const-string/jumbo v0, "CSeq"

    #@3
    invoke-interface {p0, v0}, Ljavax/sip/message/Message;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljavax/sip/header/CSeqHeader;

    #@9
    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method private getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 414
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@3
    move-result-object v0

    #@4
    .line 415
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_0

    #@6
    .line 416
    move-object p1, v0

    #@7
    .line 417
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@a
    move-result-object v0

    #@b
    goto :goto_0

    #@c
    .line 419
    :cond_0
    return-object p1
.end method

.method private declared-synchronized getSipSession(Ljava/util/EventObject;)Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .locals 5
    .param p1, "event"    # Ljava/util/EventObject;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 278
    :try_start_0
    invoke-static {p1}, Lcom/android/server/sip/SipHelper;->getCallId(Ljava/util/EventObject;)Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 279
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    #@7
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v3

    #@b
    check-cast v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@d
    .line 280
    .local v3, "session":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    if-eqz v3, :cond_0

    #@f
    invoke-static {v3}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_0

    #@15
    .line 283
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    #@17
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@1a
    move-result-object v4

    #@1b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v1

    #@1f
    .local v1, "k$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_0

    #@25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .local v0, "k":Ljava/lang/String;
    goto :goto_0

    #@2c
    .line 287
    .end local v0    # "k":Ljava/lang/String;
    .end local v1    # "k$iterator":Ljava/util/Iterator;
    :cond_0
    if-eqz v3, :cond_1

    #@2e
    .end local v3    # "session":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :goto_1
    monitor-exit p0

    #@2f
    return-object v3

    #@30
    .restart local v3    # "session":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    goto :goto_1

    #@33
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "session":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :catchall_0
    move-exception v4

    #@34
    monitor-exit p0

    #@35
    throw v4
.end method

.method private getStackName()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "stack"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@f
    move-result-wide v2

    #@10
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method private static isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z
    .locals 2
    .param p0, "s"    # Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1726
    if-eqz p0, :cond_0

    #@3
    .line 1727
    iget v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    #@5
    packed-switch v0, :pswitch_data_0

    #@8
    .line 1732
    :cond_0
    return v1

    #@9
    .line 1729
    :pswitch_0
    return v1

    #@a
    .line 1727
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method private static isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z
    .locals 4
    .param p0, "s"    # Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .param p1, "evt"    # Ljava/util/EventObject;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1740
    invoke-static {p0}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    return v3

    #@8
    .line 1741
    :cond_0
    if-nez p1, :cond_1

    #@a
    return v3

    #@b
    .line 1743
    :cond_1
    instance-of v1, p1, Ljavax/sip/ResponseEvent;

    #@d
    if-eqz v1, :cond_3

    #@f
    .line 1744
    check-cast p1, Ljavax/sip/ResponseEvent;

    #@11
    .end local p1    # "evt":Ljava/util/EventObject;
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    #@14
    move-result-object v0

    #@15
    .line 1745
    .local v0, "response":Ljavax/sip/message/Response;
    const-string/jumbo v1, "OPTIONS"

    #@18
    const-string/jumbo v2, "CSeq"

    #@1b
    invoke-interface {v0, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_2

    #@25
    .line 1746
    return v3

    #@26
    .line 1748
    :cond_2
    return v3

    #@27
    .line 1749
    .end local v0    # "response":Ljavax/sip/message/Response;
    .restart local p1    # "evt":Ljava/util/EventObject;
    :cond_3
    instance-of v1, p1, Ljavax/sip/RequestEvent;

    #@29
    if-eqz v1, :cond_5

    #@2b
    .line 1750
    const-string/jumbo v1, "OPTIONS"

    #@2e
    invoke-static {v1, p1}, Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_4

    #@34
    .line 1751
    return v3

    #@35
    .line 1753
    :cond_4
    return v3

    #@36
    .line 1755
    :cond_5
    return v3
.end method

.method private static isLoggable(Ljava/util/EventObject;)Z
    .locals 1
    .param p0, "evt"    # Ljava/util/EventObject;

    #@0
    .prologue
    .line 1736
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method private static isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    .locals 4
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/util/EventObject;

    #@0
    .prologue
    .line 1678
    :try_start_0
    instance-of v3, p1, Ljavax/sip/RequestEvent;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 1679
    move-object v0, p1

    #@5
    check-cast v0, Ljavax/sip/RequestEvent;

    #@7
    move-object v2, v0

    #@8
    .line 1680
    .local v2, "requestEvent":Ljavax/sip/RequestEvent;
    invoke-virtual {v2}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    #@b
    move-result-object v3

    #@c
    invoke-interface {v3}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v3

    #@14
    return v3

    #@15
    .line 1682
    .end local v2    # "requestEvent":Ljavax/sip/RequestEvent;
    :catch_0
    move-exception v1

    #@16
    .line 1684
    :cond_0
    const/4 v3, 0x0

    #@17
    return v3
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1857
    const-string/jumbo v0, "SipSession"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1856
    return-void
.end method

.method private static logEvt(Ljava/util/EventObject;)Ljava/lang/String;
    .locals 1
    .param p0, "evt"    # Ljava/util/EventObject;

    #@0
    .prologue
    .line 1759
    instance-of v0, p0, Ljavax/sip/RequestEvent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1760
    check-cast p0, Ljavax/sip/RequestEvent;

    #@6
    .end local p0    # "evt":Ljava/util/EventObject;
    invoke-virtual {p0}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    #@9
    move-result-object v0

    #@a
    invoke-interface {v0}, Ljavax/sip/message/Request;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 1761
    .restart local p0    # "evt":Ljava/util/EventObject;
    :cond_0
    instance-of v0, p0, Ljavax/sip/ResponseEvent;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 1762
    check-cast p0, Ljavax/sip/ResponseEvent;

    #@15
    .end local p0    # "evt":Ljava/util/EventObject;
    invoke-virtual {p0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    #@18
    move-result-object v0

    #@19
    invoke-interface {v0}, Ljavax/sip/message/Response;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0

    #@1e
    .line 1764
    .restart local p0    # "evt":Ljava/util/EventObject;
    :cond_1
    invoke-virtual {p0}, Ljava/util/EventObject;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    return-object v0
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1861
    const-string/jumbo v0, "SipSession"

    #@3
    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6
    .line 1860
    return-void
.end method

.method private declared-synchronized process(Ljava/util/EventObject;)V
    .locals 6
    .param p1, "event"    # Ljava/util/EventObject;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 366
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->getSipSession(Ljava/util/EventObject;)Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result-object v3

    #@5
    .line 368
    .local v3, "session":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_start_1
    invoke-static {v3, p1}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    #@8
    move-result v1

    #@9
    .line 369
    .local v1, "isLoggable":Z
    if-eqz v3, :cond_1

    #@b
    invoke-virtual {v3, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->process(Ljava/util/EventObject;)Z

    #@e
    move-result v2

    #@f
    .line 370
    :goto_0
    if-eqz v1, :cond_0

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 371
    new-instance v4, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v5, "process: event new state after: "

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    .line 372
    iget v5, v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    #@21
    invoke-static {v5}, Landroid/net/sip/SipSession$State;->toString(I)Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    .line 371
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-direct {p0, v4}, Lcom/android/server/sip/SipSessionGroup;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    .end local v1    # "isLoggable":Z
    :cond_0
    :goto_1
    monitor-exit p0

    #@31
    .line 365
    return-void

    #@32
    .line 369
    .restart local v1    # "isLoggable":Z
    :cond_1
    const/4 v2, 0x0

    #@33
    .local v2, "processed":Z
    goto :goto_0

    #@34
    .line 374
    .end local v1    # "isLoggable":Z
    .end local v2    # "processed":Z
    :catch_0
    move-exception v0

    #@35
    .line 375
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v5, "process: error event="

    #@3d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@4c
    move-result-object v5

    #@4d
    invoke-direct {p0, v4, v5}, Lcom/android/server/sip/SipSessionGroup;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@50
    .line 376
    invoke-static {v3, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->-wrap2(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@53
    goto :goto_1

    #@54
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v3    # "session":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :catchall_0
    move-exception v4

    #@55
    monitor-exit p0

    #@56
    throw v4
.end method

.method private declared-synchronized removeSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 7
    .param p1, "session"    # Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 303
    :try_start_0
    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-ne p1, v6, :cond_0

    #@5
    monitor-exit p0

    #@6
    return-void

    #@7
    .line 304
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getCallId()Ljava/lang/String;

    #@a
    move-result-object v4

    #@b
    .line 305
    .local v4, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    #@d
    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v5

    #@11
    check-cast v5, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@13
    .line 307
    .local v5, "s":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    if-eqz v5, :cond_2

    #@15
    if-eq v5, p1, :cond_2

    #@17
    .line 310
    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    #@19
    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 312
    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    #@1e
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@21
    move-result-object v6

    #@22
    .line 311
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v1

    #@26
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v6

    #@2a
    if-eqz v6, :cond_2

    #@2c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Ljava/util/Map$Entry;

    #@32
    .line 313
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@35
    move-result-object v6

    #@36
    if-ne v6, v5, :cond_1

    #@38
    .line 314
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3b
    move-result-object v4

    #@3c
    .end local v4    # "key":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    #@3e
    .line 315
    .restart local v4    # "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    #@40
    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    goto :goto_0

    #@44
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "s":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :catchall_0
    move-exception v6

    #@45
    monitor-exit p0

    #@46
    throw v6

    #@47
    .line 320
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "s":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :cond_2
    if-eqz v5, :cond_3

    #@49
    :try_start_2
    invoke-static {v5}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z

    #@4c
    move-result v6

    #@4d
    if-eqz v6, :cond_3

    #@4f
    .line 322
    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    #@51
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@54
    move-result-object v6

    #@55
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@58
    move-result-object v3

    #@59
    .local v3, "k$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@5c
    move-result v6

    #@5d
    if-eqz v6, :cond_3

    #@5f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@62
    move-result-object v2

    #@63
    check-cast v2, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@65
    .local v2, "k":Ljava/lang/String;
    goto :goto_1

    #@66
    .end local v2    # "k":Ljava/lang/String;
    .end local v3    # "k$iterator":Ljava/util/Iterator;
    :cond_3
    monitor-exit p0

    #@67
    .line 302
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 241
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup;->onConnectivityChanged()V

    #@4
    .line 242
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    #@6
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@9
    .line 243
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup;->closeToNotReceiveCalls()V

    #@c
    .line 244
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 245
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;

    #@12
    invoke-interface {v0}, Ljavax/sip/SipStack;->stop()V

    #@15
    .line 246
    const/4 v0, 0x0

    #@16
    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;

    #@18
    .line 247
    const/4 v0, 0x0

    #@19
    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;

    #@1b
    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup;->resetExternalAddress()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    monitor-exit p0

    #@1f
    .line 239
    return-void

    #@20
    :catchall_0
    move-exception v0

    #@21
    monitor-exit p0

    #@22
    throw v0
.end method

.method public declared-synchronized closeToNotReceiveCalls()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 266
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 265
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method declared-synchronized containsSession(Ljava/lang/String;)Z
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    #@3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public createSession(Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;
    .locals 1
    .param p1, "listener"    # Landroid/net/sip/ISipSessionListener;

    #@0
    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return-object v0

    #@8
    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@a
    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V

    #@d
    goto :goto_0
.end method

.method public getLocalProfile()Landroid/net/sip/SipProfile;
    .locals 1

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    #@2
    return-object v0
.end method

.method public getLocalProfileUri()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    #@2
    invoke-virtual {v0}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v0, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    monitor-exit p0

    #@7
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method declared-synchronized onConnectivityChanged()V
    .locals 6

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 207
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    #@3
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@6
    move-result-object v2

    #@7
    .line 208
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    #@9
    invoke-interface {v3}, Ljava/util/Map;->size()I

    #@c
    move-result v3

    #@d
    new-array v3, v3, [Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@f
    .line 207
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, [Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@15
    .line 213
    .local v1, "ss":[Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    const/4 v2, 0x0

    #@16
    array-length v3, v1

    #@17
    :goto_0
    if-ge v2, v3, :cond_0

    #@19
    aget-object v0, v1, v2

    #@1b
    .line 215
    .local v0, "s":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    const-string/jumbo v4, "data connection lost"

    #@1e
    .line 214
    const/16 v5, -0xa

    #@20
    invoke-static {v0, v5, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->-wrap1(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 213
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_0

    #@26
    .end local v0    # "s":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :cond_0
    monitor-exit p0

    #@27
    .line 206
    return-void

    #@28
    .end local v1    # "ss":[Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :catchall_0
    move-exception v2

    #@29
    monitor-exit p0

    #@2a
    throw v2
.end method

.method public declared-synchronized openToReceiveCalls(Landroid/net/sip/ISipSessionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/net/sip/ISipSessionListener;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 259
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;

    #@7
    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V

    #@a
    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :goto_0
    monitor-exit p0

    #@d
    .line 257
    return-void

    #@e
    .line 261
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    #@10
    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->setListener(Landroid/net/sip/ISipSessionListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    goto :goto_0

    #@14
    :catchall_0
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method

.method public processDialogTerminated(Ljavax/sip/DialogTerminatedEvent;)V
    .locals 0
    .param p1, "event"    # Ljavax/sip/DialogTerminatedEvent;

    #@0
    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    #@3
    .line 361
    return-void
.end method

.method public processIOException(Ljavax/sip/IOExceptionEvent;)V
    .locals 0
    .param p1, "event"    # Ljavax/sip/IOExceptionEvent;

    #@0
    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    #@3
    .line 346
    return-void
.end method

.method public processRequest(Ljavax/sip/RequestEvent;)V
    .locals 4
    .param p1, "event"    # Ljavax/sip/RequestEvent;

    #@0
    .prologue
    .line 330
    const-string/jumbo v0, "INVITE"

    #@3
    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 335
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mWakeLock:Lcom/android/server/sip/SipWakeLock;

    #@b
    const-wide/16 v2, 0x1f4

    #@d
    invoke-virtual {v0, v2, v3}, Lcom/android/server/sip/SipWakeLock;->acquire(J)V

    #@10
    .line 337
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    #@13
    .line 329
    return-void
.end method

.method public processResponse(Ljavax/sip/ResponseEvent;)V
    .locals 0
    .param p1, "event"    # Ljavax/sip/ResponseEvent;

    #@0
    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    #@3
    .line 341
    return-void
.end method

.method public processTimeout(Ljavax/sip/TimeoutEvent;)V
    .locals 0
    .param p1, "event"    # Ljavax/sip/TimeoutEvent;

    #@0
    .prologue
    .line 352
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    #@3
    .line 351
    return-void
.end method

.method public processTransactionTerminated(Ljavax/sip/TransactionTerminatedEvent;)V
    .locals 0
    .param p1, "event"    # Ljavax/sip/TransactionTerminatedEvent;

    #@0
    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    #@3
    .line 356
    return-void
.end method

.method declared-synchronized reset()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 147
    :try_start_0
    new-instance v4, Ljava/util/Properties;

    #@3
    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    #@6
    .line 149
    .local v4, "properties":Ljava/util/Properties;
    iget-object v10, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    #@8
    invoke-virtual {v10}, Landroid/net/sip/SipProfile;->getProtocol()Ljava/lang/String;

    #@b
    move-result-object v5

    #@c
    .line 150
    .local v5, "protocol":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    #@e
    invoke-virtual {v10}, Landroid/net/sip/SipProfile;->getPort()I

    #@11
    move-result v3

    #@12
    .line 151
    .local v3, "port":I
    iget-object v10, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    #@14
    invoke-virtual {v10}, Landroid/net/sip/SipProfile;->getProxyAddress()Ljava/lang/String;

    #@17
    move-result-object v8

    #@18
    .line 153
    .local v8, "server":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1b
    move-result v10

    #@1c
    if-nez v10, :cond_2

    #@1e
    .line 154
    const-string/jumbo v10, "javax.sip.OUTBOUND_PROXY"

    #@21
    .line 155
    new-instance v11, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v11

    #@2a
    const/16 v12, 0x3a

    #@2c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v11

    #@30
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v11

    #@34
    const/16 v12, 0x2f

    #@36
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39
    move-result-object v11

    #@3a
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v11

    #@3e
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v11

    #@42
    .line 154
    invoke-virtual {v4, v10, v11}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@45
    .line 159
    :goto_0
    const-string/jumbo v10, "["

    #@48
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@4b
    move-result v10

    #@4c
    if-eqz v10, :cond_0

    #@4e
    const-string/jumbo v10, "]"

    #@51
    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@54
    move-result v10

    #@55
    if-eqz v10, :cond_0

    #@57
    .line 160
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@5a
    move-result v10

    #@5b
    add-int/lit8 v10, v10, -0x1

    #@5d
    const/4 v11, 0x1

    #@5e
    invoke-virtual {v8, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@61
    move-result-object v8

    #@62
    .line 163
    :cond_0
    const/4 v2, 0x0

    #@63
    .line 165
    .local v2, "local":Ljava/lang/String;
    :try_start_1
    invoke-static {v8}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    #@66
    move-result-object v11

    #@67
    const/4 v10, 0x0

    #@68
    array-length v12, v11

    #@69
    :goto_1
    if-ge v10, v12, :cond_1

    #@6b
    aget-object v7, v11, v10

    #@6d
    .line 166
    .local v7, "remote":Ljava/net/InetAddress;
    new-instance v9, Ljava/net/DatagramSocket;

    #@6f
    invoke-direct {v9}, Ljava/net/DatagramSocket;-><init>()V

    #@72
    .line 167
    .local v9, "socket":Ljava/net/DatagramSocket;
    invoke-virtual {v9, v7, v3}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    #@75
    .line 168
    invoke-virtual {v9}, Ljava/net/DatagramSocket;->isConnected()Z

    #@78
    move-result v13

    #@79
    if-eqz v13, :cond_3

    #@7b
    .line 169
    invoke-virtual {v9}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    #@7e
    move-result-object v10

    #@7f
    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@82
    move-result-object v2

    #@83
    .line 170
    .local v2, "local":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/net/DatagramSocket;->getLocalPort()I

    #@86
    move-result v3

    #@87
    .line 171
    invoke-virtual {v9}, Ljava/net/DatagramSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8a
    .line 179
    .end local v2    # "local":Ljava/lang/String;
    .end local v7    # "remote":Ljava/net/InetAddress;
    .end local v9    # "socket":Ljava/net/DatagramSocket;
    :cond_1
    :goto_2
    if-nez v2, :cond_4

    #@8c
    monitor-exit p0

    #@8d
    .line 181
    return-void

    #@8e
    .line 157
    :cond_2
    :try_start_2
    iget-object v10, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    #@90
    invoke-virtual {v10}, Landroid/net/sip/SipProfile;->getSipDomain()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@93
    move-result-object v8

    #@94
    goto :goto_0

    #@95
    .line 174
    .local v2, "local":Ljava/lang/String;
    .restart local v7    # "remote":Ljava/net/InetAddress;
    .restart local v9    # "socket":Ljava/net/DatagramSocket;
    :cond_3
    :try_start_3
    invoke-virtual {v9}, Ljava/net/DatagramSocket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@98
    .line 165
    add-int/lit8 v10, v10, 0x1

    #@9a
    goto :goto_1

    #@9b
    .line 184
    .end local v2    # "local":Ljava/lang/String;
    .end local v7    # "remote":Ljava/net/InetAddress;
    .end local v9    # "socket":Ljava/net/DatagramSocket;
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup;->close()V

    #@9e
    .line 185
    iput-object v2, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalIp:Ljava/lang/String;

    #@a0
    .line 187
    const-string/jumbo v10, "javax.sip.STACK_NAME"

    #@a3
    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup;->getStackName()Ljava/lang/String;

    #@a6
    move-result-object v11

    #@a7
    invoke-virtual {v4, v10, v11}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@aa
    .line 189
    const-string/jumbo v10, "gov.nist.javax.sip.THREAD_POOL_SIZE"

    #@ad
    const-string/jumbo v11, "1"

    #@b0
    .line 188
    invoke-virtual {v4, v10, v11}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@b3
    .line 190
    invoke-static {}, Ljavax/sip/SipFactory;->getInstance()Ljavax/sip/SipFactory;

    #@b6
    move-result-object v10

    #@b7
    invoke-virtual {v10, v4}, Ljavax/sip/SipFactory;->createSipStack(Ljava/util/Properties;)Ljavax/sip/SipStack;

    #@ba
    move-result-object v10

    #@bb
    iput-object v10, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@bd
    .line 192
    :try_start_5
    iget-object v10, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;

    #@bf
    .line 193
    iget-object v11, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;

    #@c1
    invoke-interface {v11, v2, v3, v5}, Ljavax/sip/SipStack;->createListeningPoint(Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/ListeningPoint;

    #@c4
    move-result-object v11

    #@c5
    .line 192
    invoke-interface {v10, v11}, Ljavax/sip/SipStack;->createSipProvider(Ljavax/sip/ListeningPoint;)Ljavax/sip/SipProvider;

    #@c8
    move-result-object v6

    #@c9
    .line 194
    .local v6, "provider":Ljavax/sip/SipProvider;
    invoke-interface {v6, p0}, Ljavax/sip/SipProvider;->addSipListener(Ljavax/sip/SipListener;)V

    #@cc
    .line 195
    new-instance v10, Lcom/android/server/sip/SipHelper;

    #@ce
    iget-object v11, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;

    #@d0
    invoke-direct {v10, v11, v6}, Lcom/android/server/sip/SipHelper;-><init>(Ljavax/sip/SipStack;Ljavax/sip/SipProvider;)V

    #@d3
    iput-object v10, p0, Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    :try_end_5
    .catch Ljavax/sip/SipException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@d5
    .line 203
    :try_start_6
    iget-object v10, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;

    #@d7
    invoke-interface {v10}, Ljavax/sip/SipStack;->start()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@da
    monitor-exit p0

    #@db
    .line 146
    return-void

    #@dc
    .line 198
    .end local v6    # "provider":Ljavax/sip/SipProvider;
    :catch_0
    move-exception v0

    #@dd
    .line 199
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    new-instance v10, Ljavax/sip/SipException;

    #@df
    const-string/jumbo v11, "failed to initialize SIP stack"

    #@e2
    invoke-direct {v10, v11, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@e5
    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@e6
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "port":I
    .end local v4    # "properties":Ljava/util/Properties;
    .end local v5    # "protocol":Ljava/lang/String;
    .end local v8    # "server":Ljava/lang/String;
    :catchall_0
    move-exception v10

    #@e7
    monitor-exit p0

    #@e8
    throw v10

    #@e9
    .line 196
    .restart local v3    # "port":I
    .restart local v4    # "properties":Ljava/util/Properties;
    .restart local v5    # "protocol":Ljava/lang/String;
    .restart local v8    # "server":Ljava/lang/String;
    :catch_1
    move-exception v1

    #@ea
    .line 197
    .local v1, "e":Ljavax/sip/SipException;
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@eb
    .line 176
    .end local v1    # "e":Ljavax/sip/SipException;
    :catch_2
    move-exception v0

    #@ec
    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_2
.end method

.method declared-synchronized resetExternalAddress()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 223
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mExternalIp:Ljava/lang/String;

    #@4
    .line 224
    const/4 v0, 0x0

    #@5
    iput v0, p0, Lcom/android/server/sip/SipSessionGroup;->mExternalPort:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 219
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method setWakeupTimer(Lcom/android/server/sip/SipWakeupTimer;)V
    .locals 0
    .param p1, "timer"    # Lcom/android/server/sip/SipWakeupTimer;

    #@0
    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup;->mWakeupTimer:Lcom/android/server/sip/SipWakeupTimer;

    #@2
    .line 142
    return-void
.end method
