.class Lcom/android/server/sip/SipSessionGroup;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"

# interfaces
.implements Ljavax/sip/SipListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;,
        Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;,
        Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;,
        Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;,
        Lcom/android/server/sip/SipSessionGroup$RegisterCommand;,
        Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;
    }
.end annotation


# static fields
.field private static final blacklist ANONYMOUS:Ljava/lang/String; = "anonymous"

.field private static final blacklist CANCEL_CALL_TIMER:I = 0x3

.field private static final blacklist DBG:Z = false

.field private static final blacklist DBG_PING:Z = false

.field private static final blacklist DEREGISTER:Ljava/util/EventObject;

.field private static final blacklist END_CALL:Ljava/util/EventObject;

.field private static final blacklist END_CALL_TIMER:I = 0x3

.field private static final blacklist EXPIRY_TIME:I = 0xe10

.field private static final blacklist INCALL_KEEPALIVE_INTERVAL:I = 0xa

.field private static final blacklist KEEPALIVE_TIMEOUT:I = 0x5

.field private static final blacklist TAG:Ljava/lang/String; = "SipSession"

.field private static final blacklist THREAD_POOL_SIZE:Ljava/lang/String; = "1"

.field private static final blacklist WAKE_LOCK_HOLDING_TIME:J = 0x1f4L


# instance fields
.field private blacklist mCallReceiverSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field private blacklist mExternalIp:Ljava/lang/String;

.field private blacklist mExternalPort:I

.field private blacklist mLocalIp:Ljava/lang/String;

.field private final blacklist mLocalProfile:Landroid/net/sip/SipProfile;

.field private final blacklist mPassword:Ljava/lang/String;

.field private blacklist mSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSipHelper:Lcom/android/server/sip/SipHelper;

.field private blacklist mSipStack:Ljavax/sip/SipStack;

.field private blacklist mWakeLock:Lcom/android/server/sip/SipWakeLock;

.field private blacklist mWakeupTimer:Lcom/android/server/sip/SipWakeupTimer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExternalIp(Lcom/android/server/sip/SipSessionGroup;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sip/SipSessionGroup;->mExternalIp:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExternalPort(Lcom/android/server/sip/SipSessionGroup;)I
    .registers 1

    iget p0, p0, Lcom/android/server/sip/SipSessionGroup;->mExternalPort:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocalIp(Lcom/android/server/sip/SipSessionGroup;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalIp:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocalProfile(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPassword(Lcom/android/server/sip/SipSessionGroup;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sip/SipSessionGroup;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionMap(Lcom/android/server/sip/SipSessionGroup;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSipHelper(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWakeupTimer(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipWakeupTimer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sip/SipSessionGroup;->mWakeupTimer:Lcom/android/server/sip/SipWakeupTimer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddSipSession(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateNewSession(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/RequestEvent;Landroid/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/sip/SipSessionGroup;->createNewSession(Ljavax/sip/RequestEvent;Landroid/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mextractContent(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/message/Message;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->extractContent(Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mextractExternalAddress(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/ResponseEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->extractExternalAddress(Ljavax/sip/ResponseEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetRootCause(Lcom/android/server/sip/SipSessionGroup;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/server/sip/SipSessionGroup;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipSessionGroup;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveSipSession(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->removeSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEREGISTER()Ljava/util/EventObject;
    .registers 1

    sget-object v0, Lcom/android/server/sip/SipSessionGroup;->DEREGISTER:Ljava/util/EventObject;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetEND_CALL()Ljava/util/EventObject;
    .registers 1

    sget-object v0, Lcom/android/server/sip/SipSessionGroup;->END_CALL:Ljava/util/EventObject;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreatePeerProfile(Ljavax/sip/header/HeaderAddress;)Landroid/net/sip/SipProfile;
    .registers 1

    invoke-static {p0}, Lcom/android/server/sip/SipSessionGroup;->createPeerProfile(Ljavax/sip/header/HeaderAddress;)Landroid/net/sip/SipProfile;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smexpectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisLoggable(Ljava/util/EventObject;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Ljava/util/EventObject;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smlogEvt(Ljava/util/EventObject;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/sip/SipSessionGroup;->logEvt(Ljava/util/EventObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 102
    new-instance v0, Ljava/util/EventObject;

    const-string v1, "Deregister"

    invoke-direct {v0, v1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/sip/SipSessionGroup;->DEREGISTER:Ljava/util/EventObject;

    .line 103
    new-instance v0, Ljava/util/EventObject;

    const-string v1, "End call"

    invoke-direct {v0, v1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/sip/SipSessionGroup;->END_CALL:Ljava/util/EventObject;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/sip/SipProfile;Ljava/lang/String;Lcom/android/server/sip/SipWakeupTimer;Lcom/android/server/sip/SipWakeLock;)V
    .registers 6
    .param p1, "profile"    # Landroid/net/sip/SipProfile;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "timer"    # Lcom/android/server/sip/SipWakeupTimer;
    .param p4, "wakeLock"    # Lcom/android/server/sip/SipWakeLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    .line 133
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    .line 134
    iput-object p2, p0, Lcom/android/server/sip/SipSessionGroup;->mPassword:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Lcom/android/server/sip/SipSessionGroup;->mWakeupTimer:Lcom/android/server/sip/SipWakeupTimer;

    .line 136
    iput-object p4, p0, Lcom/android/server/sip/SipSessionGroup;->mWakeLock:Lcom/android/server/sip/SipWakeLock;

    .line 137
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup;->reset()V

    .line 138
    return-void
.end method

.method private declared-synchronized blacklist addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .registers 5
    .param p1, "newSession"    # Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    monitor-enter p0

    .line 291
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->removeSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 292
    invoke-virtual {p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-static {p1}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 296
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2c

    .line 298
    goto :goto_1d

    .line 300
    .end local p0    # "this":Lcom/android/server/sip/SipSessionGroup;
    :cond_2a
    monitor-exit p0

    return-void

    .line 290
    .end local v0    # "key":Ljava/lang/String;
    .end local p1    # "newSession":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :catchall_2c
    move-exception p1

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method private blacklist createNewSession(Ljavax/sip/RequestEvent;Landroid/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .registers 8
    .param p1, "event"    # Ljavax/sip/RequestEvent;
    .param p2, "listener"    # Landroid/net/sip/ISipSessionListener;
    .param p3, "transaction"    # Ljavax/sip/ServerTransaction;
    .param p4, "newState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 425
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-direct {v0, p0, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V

    .line 426
    .local v0, "newSession":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    iput-object p3, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    .line 427
    iput p4, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 428
    iget-object v1, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    invoke-interface {v1}, Ljavax/sip/ServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 429
    iput-object p1, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    .line 430
    nop

    .line 431
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    const-string v2, "From"

    invoke-interface {v1, v2}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/HeaderAddress;

    .line 430
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->createPeerProfile(Ljavax/sip/header/HeaderAddress;)Landroid/net/sip/SipProfile;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    .line 432
    nop

    .line 433
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup;->extractContent(Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    .line 434
    return-object v0
.end method

.method private static blacklist createPeerProfile(Ljavax/sip/header/HeaderAddress;)Landroid/net/sip/SipProfile;
    .registers 8
    .param p0, "header"    # Ljavax/sip/header/HeaderAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 1708
    const-string v0, "createPeerProfile()"

    :try_start_2
    invoke-interface {p0}, Ljavax/sip/header/HeaderAddress;->getAddress()Ljavax/sip/address/Address;

    move-result-object v1

    .line 1709
    .local v1, "address":Ljavax/sip/address/Address;
    invoke-interface {v1}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v2

    check-cast v2, Ljavax/sip/address/SipURI;

    .line 1710
    .local v2, "uri":Ljavax/sip/address/SipURI;
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v3

    .line 1711
    .local v3, "username":Ljava/lang/String;
    if-nez v3, :cond_15

    const-string v4, "anonymous"

    move-object v3, v4

    .line 1712
    :cond_15
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getPort()I

    move-result v4

    .line 1713
    .local v4, "port":I
    new-instance v5, Landroid/net/sip/SipProfile$Builder;

    .line 1714
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    invoke-interface {v1}, Ljavax/sip/address/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/sip/SipProfile$Builder;->setDisplayName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v5

    .line 1716
    .local v5, "builder":Landroid/net/sip/SipProfile$Builder;
    if-lez v4, :cond_2f

    invoke-virtual {v5, v4}, Landroid/net/sip/SipProfile$Builder;->setPort(I)Landroid/net/sip/SipProfile$Builder;

    .line 1717
    :cond_2f
    invoke-virtual {v5}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v0
    :try_end_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_33} :catch_3b
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_33} :catch_34

    return-object v0

    .line 1720
    .end local v1    # "address":Ljavax/sip/address/Address;
    .end local v2    # "uri":Ljavax/sip/address/SipURI;
    .end local v3    # "username":Ljava/lang/String;
    .end local v4    # "port":I
    .end local v5    # "builder":Landroid/net/sip/SipProfile$Builder;
    :catch_34
    move-exception v1

    .line 1721
    .local v1, "e":Ljava/text/ParseException;
    new-instance v2, Ljavax/sip/SipException;

    invoke-direct {v2, v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1718
    .end local v1    # "e":Ljava/text/ParseException;
    :catch_3b
    move-exception v1

    .line 1719
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljavax/sip/SipException;

    invoke-direct {v2, v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    .registers 5
    .param p0, "expectedMethod"    # Ljava/lang/String;
    .param p1, "evt"    # Ljava/util/EventObject;

    .line 1697
    instance-of v0, p1, Ljavax/sip/ResponseEvent;

    if-eqz v0, :cond_14

    .line 1698
    move-object v0, p1

    check-cast v0, Ljavax/sip/ResponseEvent;

    .line 1699
    .local v0, "event":Ljavax/sip/ResponseEvent;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v1

    .line 1700
    .local v1, "response":Ljavax/sip/message/Response;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->getCseqMethod(Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 1702
    .end local v0    # "event":Ljavax/sip/ResponseEvent;
    .end local v1    # "response":Ljavax/sip/message/Response;
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist extractContent(Ljavax/sip/message/Message;)Ljava/lang/String;
    .registers 5
    .param p1, "message"    # Ljavax/sip/message/Message;

    .line 382
    invoke-interface {p1}, Ljavax/sip/message/Message;->getRawContent()[B

    move-result-object v0

    .line 383
    .local v0, "bytes":[B
    if-eqz v0, :cond_1b

    .line 385
    :try_start_6
    instance-of v1, p1, Lgov/nist/javax/sip/message/SIPMessage;

    if-eqz v1, :cond_12

    .line 386
    move-object v1, p1

    check-cast v1, Lgov/nist/javax/sip/message/SIPMessage;

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPMessage;->getMessageContent()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 388
    :cond_12
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_19} :catch_1a

    return-object v1

    .line 390
    :catch_1a
    move-exception v1

    .line 393
    :cond_1b
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist extractExternalAddress(Ljavax/sip/ResponseEvent;)V
    .registers 6
    .param p1, "evt"    # Ljavax/sip/ResponseEvent;

    .line 397
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v0

    .line 398
    .local v0, "response":Ljavax/sip/message/Response;
    const-string v1, "Via"

    invoke-interface {v0, v1}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/ViaHeader;

    .line 400
    .local v1, "viaHeader":Ljavax/sip/header/ViaHeader;
    if-nez v1, :cond_f

    return-void

    .line 401
    :cond_f
    invoke-interface {v1}, Ljavax/sip/header/ViaHeader;->getRPort()I

    move-result v2

    .line 402
    .local v2, "rport":I
    invoke-interface {v1}, Ljavax/sip/header/ViaHeader;->getReceived()Ljava/lang/String;

    move-result-object v3

    .line 403
    .local v3, "externalIp":Ljava/lang/String;
    if-lez v2, :cond_1f

    if-eqz v3, :cond_1f

    .line 404
    iput-object v3, p0, Lcom/android/server/sip/SipSessionGroup;->mExternalIp:Ljava/lang/String;

    .line 405
    iput v2, p0, Lcom/android/server/sip/SipSessionGroup;->mExternalPort:I

    .line 411
    :cond_1f
    return-void
.end method

.method private static blacklist getCseqMethod(Ljavax/sip/message/Message;)Ljava/lang/String;
    .registers 2
    .param p0, "message"    # Ljavax/sip/message/Message;

    .line 1688
    const-string v0, "CSeq"

    invoke-interface {p0, v0}, Ljavax/sip/message/Message;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/CSeqHeader;

    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 3
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 414
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 415
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_4
    if-eqz v0, :cond_c

    .line 416
    move-object p1, v0

    .line 417
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_4

    .line 419
    :cond_c
    return-object p1
.end method

.method private declared-synchronized blacklist getSipSession(Ljava/util/EventObject;)Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .registers 6
    .param p1, "event"    # Ljava/util/EventObject;

    monitor-enter p0

    .line 278
    :try_start_1
    invoke-static {p1}, Lcom/android/server/sip/SipHelper;->getCallId(Ljava/util/EventObject;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 280
    .local v1, "session":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    if-eqz v1, :cond_2c

    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 283
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 285
    goto :goto_1f

    .line 287
    .end local p0    # "this":Lcom/android/server/sip/SipSessionGroup;
    :cond_2c
    if-eqz v1, :cond_30

    move-object v2, v1

    goto :goto_32

    :cond_30
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_34

    :goto_32
    monitor-exit p0

    return-object v2

    .line 277
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "session":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .end local p1    # "event":Ljava/util/EventObject;
    :catchall_34
    move-exception p1

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p1
.end method

.method private blacklist getStackName()Ljava/lang/String;
    .registers 4

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z
    .registers 3
    .param p0, "s"    # Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 1726
    const/4 v0, 0x0

    if-eqz p0, :cond_a

    .line 1727
    iget v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    packed-switch v1, :pswitch_data_c

    goto :goto_a

    .line 1729
    :pswitch_9
    return v0

    .line 1732
    :cond_a
    :goto_a
    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x9
        :pswitch_9
    .end packed-switch
.end method

.method private static blacklist isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z
    .registers 6
    .param p0, "s"    # Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .param p1, "evt"    # Ljava/util/EventObject;

    .line 1740
    invoke-static {p0}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1741
    :cond_8
    if-nez p1, :cond_b

    return v1

    .line 1743
    :cond_b
    instance-of v0, p1, Ljavax/sip/ResponseEvent;

    const-string v2, "OPTIONS"

    if-eqz v0, :cond_26

    .line 1744
    move-object v0, p1

    check-cast v0, Ljavax/sip/ResponseEvent;

    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v0

    .line 1745
    .local v0, "response":Ljavax/sip/message/Response;
    const-string v3, "CSeq"

    invoke-interface {v0, v3}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1746
    return v1

    .line 1748
    :cond_25
    return v1

    .line 1749
    .end local v0    # "response":Ljavax/sip/message/Response;
    :cond_26
    instance-of v0, p1, Ljavax/sip/RequestEvent;

    if-eqz v0, :cond_32

    .line 1750
    invoke-static {v2, p1}, Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1751
    return v1

    .line 1753
    :cond_31
    return v1

    .line 1755
    :cond_32
    return v1
.end method

.method private static blacklist isLoggable(Ljava/util/EventObject;)Z
    .registers 2
    .param p0, "evt"    # Ljava/util/EventObject;

    .line 1736
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    .registers 4
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/util/EventObject;

    .line 1678
    :try_start_0
    instance-of v0, p1, Ljavax/sip/RequestEvent;

    if-eqz v0, :cond_14

    .line 1679
    move-object v0, p1

    check-cast v0, Ljavax/sip/RequestEvent;

    .line 1680
    .local v0, "requestEvent":Ljavax/sip/RequestEvent;
    invoke-virtual {v0}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_15

    return v1

    .line 1683
    .end local v0    # "requestEvent":Ljavax/sip/RequestEvent;
    :cond_14
    goto :goto_16

    .line 1682
    :catchall_15
    move-exception v0

    .line 1684
    :goto_16
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 1857
    const-string v0, "SipSession"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    return-void
.end method

.method private static blacklist logEvt(Ljava/util/EventObject;)Ljava/lang/String;
    .registers 2
    .param p0, "evt"    # Ljava/util/EventObject;

    .line 1759
    instance-of v0, p0, Ljavax/sip/RequestEvent;

    if-eqz v0, :cond_10

    .line 1760
    move-object v0, p0

    check-cast v0, Ljavax/sip/RequestEvent;

    invoke-virtual {v0}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/message/Request;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1761
    :cond_10
    instance-of v0, p0, Ljavax/sip/ResponseEvent;

    if-eqz v0, :cond_20

    .line 1762
    move-object v0, p0

    check-cast v0, Ljavax/sip/ResponseEvent;

    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/message/Response;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1764
    :cond_20
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 1861
    const-string v0, "SipSession"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1862
    return-void
.end method

.method private declared-synchronized blacklist process(Ljava/util/EventObject;)V
    .registers 7
    .param p1, "event"    # Ljava/util/EventObject;

    monitor-enter p0

    .line 366
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->getSipSession(Ljava/util/EventObject;)Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_55

    .line 368
    .local v0, "session":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_start_5
    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    move-result v1

    .line 369
    .local v1, "isLoggable":Z
    if-eqz v0, :cond_13

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->process(Ljava/util/EventObject;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    .line 370
    .local v2, "processed":Z
    :goto_14
    if-eqz v1, :cond_34

    if-eqz v2, :cond_34

    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process: event new state after: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 372
    invoke-static {v4}, Landroid/net/sip/SipSession$State;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 371
    invoke-direct {p0, v3}, Lcom/android/server/sip/SipSessionGroup;->log(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_35

    .line 377
    .end local v1    # "isLoggable":Z
    .end local v2    # "processed":Z
    :cond_34
    goto :goto_53

    .line 374
    :catchall_35
    move-exception v1

    .line 375
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process: error event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/sip/SipSessionGroup;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 376
    invoke-static {v0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->-$$Nest$monError(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)V
    :try_end_53
    .catchall {:try_start_36 .. :try_end_53} :catchall_55

    .line 378
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_53
    monitor-exit p0

    return-void

    .line 365
    .end local v0    # "session":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .end local p0    # "this":Lcom/android/server/sip/SipSessionGroup;
    .end local p1    # "event":Ljava/util/EventObject;
    :catchall_55
    move-exception p1

    :try_start_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p1
.end method

.method private declared-synchronized blacklist removeSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .registers 7
    .param p1, "session"    # Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    monitor-enter p0

    .line 303
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_66

    if-ne p1, v0, :cond_7

    monitor-exit p0

    return-void

    .line 304
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 307
    .local v1, "s":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    if-eqz v1, :cond_45

    if-eq v1, p1, :cond_45

    .line 310
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 313
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_44

    .line 314
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    .line 315
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;>;"
    .end local p0    # "this":Lcom/android/server/sip/SipSessionGroup;
    :cond_44
    goto :goto_26

    .line 320
    :cond_45
    if-eqz v1, :cond_64

    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 322
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_57
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_63
    .catchall {:try_start_7 .. :try_end_63} :catchall_66

    .line 324
    goto :goto_57

    .line 326
    :cond_64
    monitor-exit p0

    return-void

    .line 302
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "s":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .end local p1    # "session":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :catchall_66
    move-exception p1

    :try_start_67
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw p1
.end method


# virtual methods
.method public declared-synchronized blacklist close()V
    .registers 2

    monitor-enter p0

    .line 241
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup;->onConnectivityChanged()V

    .line 242
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 243
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup;->closeToNotReceiveCalls()V

    .line 244
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;

    if-eqz v0, :cond_1a

    .line 245
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;

    invoke-interface {v0}, Ljavax/sip/SipStack;->stop()V

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;

    .line 247
    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;

    .line 249
    .end local p0    # "this":Lcom/android/server/sip/SipSessionGroup;
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup;->resetExternalAddress()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 250
    monitor-exit p0

    return-void

    .line 240
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public declared-synchronized blacklist closeToNotReceiveCalls()V
    .registers 2

    monitor-enter p0

    .line 266
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 267
    monitor-exit p0

    return-void

    .line 265
    .end local p0    # "this":Lcom/android/server/sip/SipSessionGroup;
    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method declared-synchronized blacklist containsSession(Ljava/lang/String;)Z
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    monitor-enter p0

    .line 274
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 274
    .end local p0    # "this":Lcom/android/server/sip/SipSessionGroup;
    .end local p1    # "callId":Ljava/lang/String;
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public blacklist createSession(Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;
    .registers 3
    .param p1, "listener"    # Landroid/net/sip/ISipSessionListener;

    .line 270
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_d

    :cond_8
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V

    :goto_d
    return-object v0
.end method

.method public blacklist getLocalProfile()Landroid/net/sip/SipProfile;
    .registers 2

    .line 228
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method public blacklist getLocalProfileUri()Ljava/lang/String;
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v0}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized blacklist isClosed()Z
    .registers 2

    monitor-enter p0

    .line 253
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    .line 253
    .end local p0    # "this":Lcom/android/server/sip/SipSessionGroup;
    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method declared-synchronized blacklist onConnectivityChanged()V
    .registers 7

    monitor-enter p0

    .line 207
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    .line 208
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 207
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 213
    .local v0, "ss":[Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_25

    aget-object v3, v0, v2

    .line 214
    .local v3, "s":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    const-string v4, "data connection lost"

    const/16 v5, -0xa

    invoke-static {v3, v5, v4}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->-$$Nest$monError(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;ILjava/lang/String;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_27

    .line 213
    .end local v3    # "s":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 217
    .end local p0    # "this":Lcom/android/server/sip/SipSessionGroup;
    :cond_25
    monitor-exit p0

    return-void

    .line 206
    .end local v0    # "ss":[Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public declared-synchronized blacklist openToReceiveCalls(Landroid/net/sip/ISipSessionListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/sip/ISipSessionListener;

    monitor-enter p0

    .line 258
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v0, :cond_d

    .line 259
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    goto :goto_12

    .line 261
    .end local p0    # "this":Lcom/android/server/sip/SipSessionGroup;
    :cond_d
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->setListener(Landroid/net/sip/ISipSessionListener;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 263
    :goto_12
    monitor-exit p0

    return-void

    .line 257
    .end local p1    # "listener":Landroid/net/sip/ISipSessionListener;
    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public blacklist processDialogTerminated(Ljavax/sip/DialogTerminatedEvent;)V
    .registers 2
    .param p1, "event"    # Ljavax/sip/DialogTerminatedEvent;

    .line 362
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    .line 363
    return-void
.end method

.method public blacklist processIOException(Ljavax/sip/IOExceptionEvent;)V
    .registers 2
    .param p1, "event"    # Ljavax/sip/IOExceptionEvent;

    .line 347
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    .line 348
    return-void
.end method

.method public blacklist processRequest(Ljavax/sip/RequestEvent;)V
    .registers 5
    .param p1, "event"    # Ljavax/sip/RequestEvent;

    .line 330
    const-string v0, "INVITE"

    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 335
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mWakeLock:Lcom/android/server/sip/SipWakeLock;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sip/SipWakeLock;->acquire(J)V

    .line 337
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    .line 338
    return-void
.end method

.method public blacklist processResponse(Ljavax/sip/ResponseEvent;)V
    .registers 2
    .param p1, "event"    # Ljavax/sip/ResponseEvent;

    .line 342
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    .line 343
    return-void
.end method

.method public blacklist processTimeout(Ljavax/sip/TimeoutEvent;)V
    .registers 2
    .param p1, "event"    # Ljavax/sip/TimeoutEvent;

    .line 352
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    .line 353
    return-void
.end method

.method public blacklist processTransactionTerminated(Ljavax/sip/TransactionTerminatedEvent;)V
    .registers 2
    .param p1, "event"    # Ljavax/sip/TransactionTerminatedEvent;

    .line 357
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    .line 358
    return-void
.end method

.method declared-synchronized blacklist reset()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    monitor-enter p0

    .line 147
    :try_start_1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 149
    .local v0, "properties":Ljava/util/Properties;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "protocol":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getPort()I

    move-result v2

    .line 151
    .local v2, "port":I
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v3}, Landroid/net/sip/SipProfile;->getProxyAddress()Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "server":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 154
    const-string v4, "javax.sip.OUTBOUND_PROXY"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_4c

    .line 157
    .end local p0    # "this":Lcom/android/server/sip/SipSessionGroup;
    :cond_45
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v4}, Landroid/net/sip/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 159
    :goto_4c
    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_67

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 160
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4
    :try_end_66
    .catchall {:try_start_1 .. :try_end_66} :catchall_e8

    move-object v3, v4

    .line 163
    :cond_67
    const/4 v4, 0x0

    .line 165
    .local v4, "local":Ljava/lang/String;
    :try_start_68
    invoke-static {v3}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_6e
    if-ge v7, v6, :cond_98

    aget-object v8, v5, v7

    .line 166
    .local v8, "remote":Ljava/net/InetAddress;
    new-instance v9, Ljava/net/DatagramSocket;

    invoke-direct {v9}, Ljava/net/DatagramSocket;-><init>()V

    .line 167
    .local v9, "socket":Ljava/net/DatagramSocket;
    invoke-virtual {v9, v8, v2}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 168
    invoke-virtual {v9}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_92

    .line 169
    invoke-virtual {v9}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 170
    invoke-virtual {v9}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v5

    move v2, v5

    .line 171
    invoke-virtual {v9}, Ljava/net/DatagramSocket;->close()V

    .line 172
    goto :goto_98

    .line 174
    :cond_92
    invoke-virtual {v9}, Ljava/net/DatagramSocket;->close()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_95} :catch_99
    .catchall {:try_start_68 .. :try_end_95} :catchall_e8

    .line 165
    .end local v8    # "remote":Ljava/net/InetAddress;
    .end local v9    # "socket":Ljava/net/DatagramSocket;
    add-int/lit8 v7, v7, 0x1

    goto :goto_6e

    .line 178
    :cond_98
    :goto_98
    goto :goto_9a

    .line 176
    :catch_99
    move-exception v5

    .line 179
    :goto_9a
    if-nez v4, :cond_9e

    .line 181
    monitor-exit p0

    return-void

    .line 184
    .restart local p0    # "this":Lcom/android/server/sip/SipSessionGroup;
    :cond_9e
    :try_start_9e
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup;->close()V

    .line 185
    iput-object v4, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalIp:Ljava/lang/String;

    .line 187
    const-string v5, "javax.sip.STACK_NAME"

    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup;->getStackName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 188
    const-string v5, "gov.nist.javax.sip.THREAD_POOL_SIZE"

    const-string v6, "1"

    invoke-virtual {v0, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 190
    invoke-static {}, Ljavax/sip/SipFactory;->getInstance()Ljavax/sip/SipFactory;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljavax/sip/SipFactory;->createSipStack(Ljava/util/Properties;)Ljavax/sip/SipStack;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;
    :try_end_bd
    .catchall {:try_start_9e .. :try_end_bd} :catchall_e8

    .line 192
    :try_start_bd
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;

    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;

    .line 193
    invoke-interface {v6, v4, v2, v1}, Ljavax/sip/SipStack;->createListeningPoint(Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v6

    .line 192
    invoke-interface {v5, v6}, Ljavax/sip/SipStack;->createSipProvider(Ljavax/sip/ListeningPoint;)Ljavax/sip/SipProvider;

    move-result-object v5

    .line 194
    .local v5, "provider":Ljavax/sip/SipProvider;
    invoke-interface {v5, p0}, Ljavax/sip/SipProvider;->addSipListener(Ljavax/sip/SipListener;)V

    .line 195
    new-instance v6, Lcom/android/server/sip/SipHelper;

    iget-object v7, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;

    invoke-direct {v6, v7, v5}, Lcom/android/server/sip/SipHelper;-><init>(Ljavax/sip/SipStack;Ljavax/sip/SipProvider;)V

    iput-object v6, p0, Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    :try_end_d5
    .catch Ljavax/sip/SipException; {:try_start_bd .. :try_end_d5} :catch_e6
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_d5} :catch_dd
    .catchall {:try_start_bd .. :try_end_d5} :catchall_e8

    .line 200
    .end local v5    # "provider":Ljavax/sip/SipProvider;
    nop

    .line 203
    :try_start_d6
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;

    invoke-interface {v5}, Ljavax/sip/SipStack;->start()V
    :try_end_db
    .catchall {:try_start_d6 .. :try_end_db} :catchall_e8

    .line 204
    monitor-exit p0

    return-void

    .line 198
    .end local p0    # "this":Lcom/android/server/sip/SipSessionGroup;
    :catch_dd
    move-exception v5

    .line 199
    .local v5, "e":Ljava/lang/Exception;
    :try_start_de
    new-instance v6, Ljavax/sip/SipException;

    const-string v7, "failed to initialize SIP stack"

    invoke-direct {v6, v7, v5}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 196
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_e6
    move-exception v5

    .line 197
    .local v5, "e":Ljavax/sip/SipException;
    throw v5

    .line 146
    .end local v0    # "properties":Ljava/util/Properties;
    .end local v1    # "protocol":Ljava/lang/String;
    .end local v2    # "port":I
    .end local v3    # "server":Ljava/lang/String;
    .end local v4    # "local":Ljava/lang/String;
    .end local v5    # "e":Ljavax/sip/SipException;
    :catchall_e8
    move-exception v0

    monitor-exit p0
    :try_end_ea
    .catchall {:try_start_de .. :try_end_ea} :catchall_e8

    throw v0
.end method

.method declared-synchronized blacklist resetExternalAddress()V
    .registers 2

    monitor-enter p0

    .line 223
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mExternalIp:Ljava/lang/String;

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/sip/SipSessionGroup;->mExternalPort:I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 225
    monitor-exit p0

    return-void

    .line 222
    .end local p0    # "this":Lcom/android/server/sip/SipSessionGroup;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method blacklist setWakeupTimer(Lcom/android/server/sip/SipWakeupTimer;)V
    .registers 2
    .param p1, "timer"    # Lcom/android/server/sip/SipWakeupTimer;

    .line 143
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup;->mWakeupTimer:Lcom/android/server/sip/SipWakeupTimer;

    .line 144
    return-void
.end method
