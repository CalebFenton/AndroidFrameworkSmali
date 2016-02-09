.class public final Landroid/media/browse/MediaBrowser;
.super Ljava/lang/Object;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/browse/MediaBrowser$MediaItem;,
        Landroid/media/browse/MediaBrowser$ConnectionCallback;,
        Landroid/media/browse/MediaBrowser$SubscriptionCallback;,
        Landroid/media/browse/MediaBrowser$ItemCallback;,
        Landroid/media/browse/MediaBrowser$MediaServiceConnection;,
        Landroid/media/browse/MediaBrowser$ServiceCallbacks;,
        Landroid/media/browse/MediaBrowser$Subscription;
    }
.end annotation


# static fields
.field private static final CONNECT_STATE_CONNECTED:I = 0x2

.field private static final CONNECT_STATE_CONNECTING:I = 0x1

.field private static final CONNECT_STATE_DISCONNECTED:I = 0x0

.field private static final CONNECT_STATE_SUSPENDED:I = 0x3

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "MediaBrowser"


# instance fields
.field private final mCallback:Landroid/media/browse/MediaBrowser$ConnectionCallback;

.field private final mContext:Landroid/content/Context;

.field private mExtras:Landroid/os/Bundle;

.field private final mHandler:Landroid/os/Handler;

.field private mMediaSessionToken:Landroid/media/session/MediaSession$Token;

.field private final mRootHints:Landroid/os/Bundle;

.field private mRootId:Ljava/lang/String;

.field private mServiceBinder:Landroid/service/media/IMediaBrowserService;

.field private mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

.field private final mServiceComponent:Landroid/content/ComponentName;

.field private mServiceConnection:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

.field private mState:I

.field private final mSubscriptions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/browse/MediaBrowser$Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$ConnectionCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mCallback:Landroid/media/browse/MediaBrowser$ConnectionCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/browse/MediaBrowser;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/media/browse/MediaBrowser;)Landroid/os/Bundle;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mRootHints:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserService;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserServiceCallbacks;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/media/browse/MediaBrowser;)Landroid/content/ComponentName;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mServiceComponent:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$MediaServiceConnection;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mServiceConnection:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/media/browse/MediaBrowser;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    #@2
    return v0
.end method

.method static synthetic -get8(Landroid/media/browse/MediaBrowser;)Landroid/util/ArrayMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mSubscriptions:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/media/browse/MediaBrowser;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/browse/MediaBrowser;->mExtras:Landroid/os/Bundle;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/media/browse/MediaBrowser;Landroid/media/session/MediaSession$Token;)Landroid/media/session/MediaSession$Token;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/browse/MediaBrowser;->mMediaSessionToken:Landroid/media/session/MediaSession$Token;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/media/browse/MediaBrowser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/browse/MediaBrowser;->mRootId:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserService;)Landroid/service/media/IMediaBrowserService;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;)Landroid/service/media/IMediaBrowserServiceCallbacks;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@2
    return-object p1
.end method

.method static synthetic -set5(Landroid/media/browse/MediaBrowser;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/media/browse/MediaBrowser;->mState:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$ServiceCallbacks;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/media/browse/MediaBrowser;->getNewServiceCallbacks()Landroid/media/browse/MediaBrowser$ServiceCallbacks;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;)Z
    .locals 1
    .param p1, "callback"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .param p2, "funcName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/browse/MediaBrowser;->isCurrent(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/media/browse/MediaBrowser;->getStateLabel(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3(Landroid/media/browse/MediaBrowser;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/media/browse/MediaBrowser;->forceCloseConnection()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 0
    .param p1, "callback"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/browse/MediaBrowser;->onConnectionFailed(Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .locals 0
    .param p1, "callback"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "list"    # Landroid/content/pm/ParceledListSlice;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/browse/MediaBrowser;->onLoadChildren(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "callback"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .param p2, "root"    # Ljava/lang/String;
    .param p3, "session"    # Landroid/media/session/MediaSession$Token;
    .param p4, "extra"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/browse/MediaBrowser;->onServiceConnected(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;
    .param p3, "callback"    # Landroid/media/browse/MediaBrowser$ConnectionCallback;
    .param p4, "rootHints"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 70
    new-instance v0, Landroid/os/Handler;

    #@5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@8
    iput-object v0, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    #@a
    .line 72
    new-instance v0, Landroid/util/ArrayMap;

    #@c
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@f
    .line 71
    iput-object v0, p0, Landroid/media/browse/MediaBrowser;->mSubscriptions:Landroid/util/ArrayMap;

    #@11
    .line 74
    const/4 v0, 0x0

    #@12
    iput v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    #@14
    .line 95
    if-nez p1, :cond_0

    #@16
    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v1, "context must not be null"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 98
    :cond_0
    if-nez p2, :cond_1

    #@21
    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@23
    const-string/jumbo v1, "service component must not be null"

    #@26
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 101
    :cond_1
    if-nez p3, :cond_2

    #@2c
    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2e
    const-string/jumbo v1, "connection callback must not be null"

    #@31
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0

    #@35
    .line 104
    :cond_2
    iput-object p1, p0, Landroid/media/browse/MediaBrowser;->mContext:Landroid/content/Context;

    #@37
    .line 105
    iput-object p2, p0, Landroid/media/browse/MediaBrowser;->mServiceComponent:Landroid/content/ComponentName;

    #@39
    .line 106
    iput-object p3, p0, Landroid/media/browse/MediaBrowser;->mCallback:Landroid/media/browse/MediaBrowser$ConnectionCallback;

    #@3b
    .line 107
    iput-object p4, p0, Landroid/media/browse/MediaBrowser;->mRootHints:Landroid/os/Bundle;

    #@3d
    .line 94
    return-void
.end method

.method private forceCloseConnection()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 212
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mServiceConnection:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 213
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mContext:Landroid/content/Context;

    #@7
    iget-object v1, p0, Landroid/media/browse/MediaBrowser;->mServiceConnection:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@c
    .line 215
    :cond_0
    const/4 v0, 0x0

    #@d
    iput v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    #@f
    .line 216
    iput-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceConnection:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    #@11
    .line 217
    iput-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    #@13
    .line 218
    iput-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@15
    .line 219
    iput-object v2, p0, Landroid/media/browse/MediaBrowser;->mRootId:Ljava/lang/String;

    #@17
    .line 220
    iput-object v2, p0, Landroid/media/browse/MediaBrowser;->mMediaSessionToken:Landroid/media/session/MediaSession$Token;

    #@19
    .line 211
    return-void
.end method

.method private getNewServiceCallbacks()Landroid/media/browse/MediaBrowser$ServiceCallbacks;
    .locals 1

    #@0
    .prologue
    .line 561
    new-instance v0, Landroid/media/browse/MediaBrowser$ServiceCallbacks;

    #@2
    invoke-direct {v0, p0}, Landroid/media/browse/MediaBrowser$ServiceCallbacks;-><init>(Landroid/media/browse/MediaBrowser;)V

    #@5
    return-object v0
.end method

.method private static getStateLabel(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    #@0
    .prologue
    .line 428
    packed-switch p0, :pswitch_data_0

    #@3
    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "UNKNOWN/"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 430
    :pswitch_0
    const-string/jumbo v0, "CONNECT_STATE_DISCONNECTED"

    #@1b
    return-object v0

    #@1c
    .line 432
    :pswitch_1
    const-string/jumbo v0, "CONNECT_STATE_CONNECTING"

    #@1f
    return-object v0

    #@20
    .line 434
    :pswitch_2
    const-string/jumbo v0, "CONNECT_STATE_CONNECTED"

    #@23
    return-object v0

    #@24
    .line 436
    :pswitch_3
    const-string/jumbo v0, "CONNECT_STATE_SUSPENDED"

    #@27
    return-object v0

    #@28
    .line 428
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isCurrent(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;)Z
    .locals 4
    .param p1, "callback"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .param p2, "funcName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 550
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@3
    if-eq v0, p1, :cond_1

    #@5
    .line 551
    iget v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 552
    const-string/jumbo v0, "MediaBrowser"

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, " for "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceComponent:Landroid/content/ComponentName;

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-string/jumbo v2, " with mServiceConnection="

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 553
    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@2b
    .line 552
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 553
    const-string/jumbo v2, " this="

    #@32
    .line 552
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 555
    :cond_0
    return v3

    #@42
    .line 557
    :cond_1
    const/4 v0, 0x1

    #@43
    return v0
.end method

.method private final onConnectionFailed(Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 2
    .param p1, "callback"    # Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@0
    .prologue
    .line 485
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/media/browse/MediaBrowser$6;

    #@4
    invoke-direct {v1, p0, p1}, Landroid/media/browse/MediaBrowser$6;-><init>(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 484
    return-void
.end method

.method private final onLoadChildren(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .locals 2
    .param p1, "callback"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "list"    # Landroid/content/pm/ParceledListSlice;

    #@0
    .prologue
    .line 513
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/media/browse/MediaBrowser$7;

    #@4
    invoke-direct {v1, p0, p1, p3, p2}, Landroid/media/browse/MediaBrowser$7;-><init>(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/content/pm/ParceledListSlice;Ljava/lang/String;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 512
    return-void
.end method

.method private final onServiceConnected(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "callback"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .param p2, "root"    # Ljava/lang/String;
    .param p3, "session"    # Landroid/media/session/MediaSession$Token;
    .param p4, "extra"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 444
    iget-object v6, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v0, Landroid/media/browse/MediaBrowser$5;

    #@4
    move-object v1, p0

    #@5
    move-object v2, p1

    #@6
    move-object v3, p2

    #@7
    move-object v4, p3

    #@8
    move-object v5, p4

    #@9
    invoke-direct/range {v0 .. v5}, Landroid/media/browse/MediaBrowser$5;-><init>(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V

    #@c
    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@f
    .line 443
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 118
    iget v4, p0, Landroid/media/browse/MediaBrowser;->mState:I

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 119
    new-instance v4, Ljava/lang/IllegalStateException;

    #@8
    new-instance v5, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v6, "connect() called while not disconnected (state="

    #@10
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v5

    #@14
    .line 120
    iget v6, p0, Landroid/media/browse/MediaBrowser;->mState:I

    #@16
    invoke-static {v6}, Landroid/media/browse/MediaBrowser;->getStateLabel(I)Ljava/lang/String;

    #@19
    move-result-object v6

    #@1a
    .line 119
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v5

    #@1e
    .line 120
    const-string/jumbo v6, ")"

    #@21
    .line 119
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v4

    #@2d
    .line 129
    :cond_0
    iget-object v4, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    #@2f
    if-eqz v4, :cond_1

    #@31
    .line 130
    new-instance v4, Ljava/lang/RuntimeException;

    #@33
    new-instance v5, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v6, "mServiceBinder should be null. Instead it is "

    #@3b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    .line 131
    iget-object v6, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    #@41
    .line 130
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v4

    #@4d
    .line 133
    :cond_1
    iget-object v4, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@4f
    if-eqz v4, :cond_2

    #@51
    .line 134
    new-instance v4, Ljava/lang/RuntimeException;

    #@53
    new-instance v5, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v6, "mServiceCallbacks should be null. Instead it is "

    #@5b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    .line 135
    iget-object v6, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@61
    .line 134
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v5

    #@65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v5

    #@69
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v4

    #@6d
    .line 138
    :cond_2
    iput v6, p0, Landroid/media/browse/MediaBrowser;->mState:I

    #@6f
    .line 140
    new-instance v2, Landroid/content/Intent;

    #@71
    const-string/jumbo v4, "android.media.browse.MediaBrowserService"

    #@74
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@77
    .line 141
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Landroid/media/browse/MediaBrowser;->mServiceComponent:Landroid/content/ComponentName;

    #@79
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@7c
    .line 143
    new-instance v3, Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    #@7e
    invoke-direct {v3, p0, v5}, Landroid/media/browse/MediaBrowser$MediaServiceConnection;-><init>(Landroid/media/browse/MediaBrowser;Landroid/media/browse/MediaBrowser$MediaServiceConnection;)V

    #@81
    iput-object v3, p0, Landroid/media/browse/MediaBrowser;->mServiceConnection:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    #@83
    .line 145
    .local v3, "thisConnection":Landroid/content/ServiceConnection;
    const/4 v0, 0x0

    #@84
    .line 147
    .local v0, "bound":Z
    :try_start_0
    iget-object v4, p0, Landroid/media/browse/MediaBrowser;->mContext:Landroid/content/Context;

    #@86
    iget-object v5, p0, Landroid/media/browse/MediaBrowser;->mServiceConnection:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    #@88
    const/4 v6, 0x1

    #@89
    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@8c
    move-result v0

    #@8d
    .line 152
    .end local v0    # "bound":Z
    :goto_0
    if-nez v0, :cond_3

    #@8f
    .line 158
    iget-object v4, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    #@91
    new-instance v5, Landroid/media/browse/MediaBrowser$1;

    #@93
    invoke-direct {v5, p0, v3}, Landroid/media/browse/MediaBrowser$1;-><init>(Landroid/media/browse/MediaBrowser;Landroid/content/ServiceConnection;)V

    #@96
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@99
    .line 117
    :cond_3
    return-void

    #@9a
    .line 148
    .restart local v0    # "bound":Z
    :catch_0
    move-exception v1

    #@9b
    .line 149
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "MediaBrowser"

    #@9e
    new-instance v5, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    const-string/jumbo v6, "Failed binding to service "

    #@a6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v5

    #@aa
    iget-object v6, p0, Landroid/media/browse/MediaBrowser;->mServiceComponent:Landroid/content/ComponentName;

    #@ac
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v5

    #@b0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v5

    #@b4
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b7
    goto :goto_0
.end method

.method public disconnect()V
    .locals 4

    #@0
    .prologue
    .line 184
    iget-object v1, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 186
    :try_start_0
    iget-object v1, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    #@6
    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@8
    invoke-interface {v1, v2}, Landroid/service/media/IMediaBrowserService;->disconnect(Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 193
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/media/browse/MediaBrowser;->forceCloseConnection()V

    #@e
    .line 180
    return-void

    #@f
    .line 187
    :catch_0
    move-exception v0

    #@10
    .line 190
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaBrowser"

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "RemoteException during connect for "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    iget-object v3, p0, Landroid/media/browse/MediaBrowser;->mServiceComponent:Landroid/content/ComponentName;

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    goto :goto_0
.end method

.method dump()V
    .locals 3

    #@0
    .prologue
    .line 569
    const-string/jumbo v0, "MediaBrowser"

    #@3
    const-string/jumbo v1, "MediaBrowser..."

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 570
    const-string/jumbo v0, "MediaBrowser"

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "  mServiceComponent="

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceComponent:Landroid/content/ComponentName;

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 571
    const-string/jumbo v0, "MediaBrowser"

    #@28
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v2, "  mCallback="

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mCallback:Landroid/media/browse/MediaBrowser$ConnectionCallback;

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 572
    const-string/jumbo v0, "MediaBrowser"

    #@44
    new-instance v1, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v2, "  mRootHints="

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mRootHints:Landroid/os/Bundle;

    #@52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    .line 573
    const-string/jumbo v0, "MediaBrowser"

    #@60
    new-instance v1, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v2, "  mState="

    #@68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v1

    #@6c
    iget v2, p0, Landroid/media/browse/MediaBrowser;->mState:I

    #@6e
    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->getStateLabel(I)Ljava/lang/String;

    #@71
    move-result-object v2

    #@72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v1

    #@7a
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7d
    .line 574
    const-string/jumbo v0, "MediaBrowser"

    #@80
    new-instance v1, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v2, "  mServiceConnection="

    #@88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v1

    #@8c
    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceConnection:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    #@8e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v1

    #@92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v1

    #@96
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@99
    .line 575
    const-string/jumbo v0, "MediaBrowser"

    #@9c
    new-instance v1, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v2, "  mServiceBinder="

    #@a4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v1

    #@a8
    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    #@aa
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v1

    #@ae
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v1

    #@b2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b5
    .line 576
    const-string/jumbo v0, "MediaBrowser"

    #@b8
    new-instance v1, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v2, "  mServiceCallbacks="

    #@c0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v1

    #@c4
    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@c6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v1

    #@ca
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cd
    move-result-object v1

    #@ce
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d1
    .line 577
    const-string/jumbo v0, "MediaBrowser"

    #@d4
    new-instance v1, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    const-string/jumbo v2, "  mRootId="

    #@dc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v1

    #@e0
    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mRootId:Ljava/lang/String;

    #@e2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v1

    #@e6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v1

    #@ea
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ed
    .line 578
    const-string/jumbo v0, "MediaBrowser"

    #@f0
    new-instance v1, Ljava/lang/StringBuilder;

    #@f2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f5
    const-string/jumbo v2, "  mMediaSessionToken="

    #@f8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v1

    #@fc
    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mMediaSessionToken:Landroid/media/session/MediaSession$Token;

    #@fe
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v1

    #@102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@105
    move-result-object v1

    #@106
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@109
    .line 568
    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 3

    #@0
    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 265
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "getExtras() called while not connected (state="

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    .line 266
    iget v2, p0, Landroid/media/browse/MediaBrowser;->mState:I

    #@16
    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->getStateLabel(I)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 266
    const-string/jumbo v2, ")"

    #@21
    .line 265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 268
    :cond_0
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mExtras:Landroid/os/Bundle;

    #@2f
    return-object v0
.end method

.method public getItem(Ljava/lang/String;Landroid/media/browse/MediaBrowser$ItemCallback;)V
    .locals 4
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/media/browse/MediaBrowser$ItemCallback;

    #@0
    .prologue
    .line 379
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 380
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v3, "mediaId is empty."

    #@b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 382
    :cond_0
    if-nez p2, :cond_1

    #@11
    .line 383
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v3, "cb is null."

    #@16
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 385
    :cond_1
    iget v2, p0, Landroid/media/browse/MediaBrowser;->mState:I

    #@1c
    const/4 v3, 0x2

    #@1d
    if-eq v2, v3, :cond_2

    #@1f
    .line 386
    const-string/jumbo v2, "MediaBrowser"

    #@22
    const-string/jumbo v3, "Not connected, unable to retrieve the MediaItem."

    #@25
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 387
    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    #@2a
    new-instance v3, Landroid/media/browse/MediaBrowser$2;

    #@2c
    invoke-direct {v3, p0, p2, p1}, Landroid/media/browse/MediaBrowser$2;-><init>(Landroid/media/browse/MediaBrowser;Landroid/media/browse/MediaBrowser$ItemCallback;Ljava/lang/String;)V

    #@2f
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@32
    .line 393
    return-void

    #@33
    .line 395
    :cond_2
    new-instance v1, Landroid/media/browse/MediaBrowser$3;

    #@35
    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    #@37
    invoke-direct {v1, p0, v2, p2, p1}, Landroid/media/browse/MediaBrowser$3;-><init>(Landroid/media/browse/MediaBrowser;Landroid/os/Handler;Landroid/media/browse/MediaBrowser$ItemCallback;Ljava/lang/String;)V

    #@3a
    .line 412
    .local v1, "receiver":Landroid/os/ResultReceiver;
    :try_start_0
    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    #@3c
    invoke-interface {v2, p1, v1}, Landroid/service/media/IMediaBrowserService;->getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    .line 378
    :goto_0
    return-void

    #@40
    .line 413
    :catch_0
    move-exception v0

    #@41
    .line 414
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MediaBrowser"

    #@44
    const-string/jumbo v3, "Remote error getting media item."

    #@47
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 415
    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    #@4c
    new-instance v3, Landroid/media/browse/MediaBrowser$4;

    #@4e
    invoke-direct {v3, p0, p2, p1}, Landroid/media/browse/MediaBrowser$4;-><init>(Landroid/media/browse/MediaBrowser;Landroid/media/browse/MediaBrowser$ItemCallback;Ljava/lang/String;)V

    #@51
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@54
    goto :goto_0
.end method

.method public getRoot()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 251
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 252
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "getSessionToken() called while not connected (state="

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    .line 253
    iget v2, p0, Landroid/media/browse/MediaBrowser;->mState:I

    #@16
    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->getStateLabel(I)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 253
    const-string/jumbo v2, ")"

    #@21
    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 255
    :cond_0
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mRootId:Ljava/lang/String;

    #@2f
    return-object v0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .locals 3

    #@0
    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 235
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "getServiceComponent() called while not connected (state="

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    .line 236
    iget v2, p0, Landroid/media/browse/MediaBrowser;->mState:I

    #@16
    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 236
    const-string/jumbo v2, ")"

    #@1d
    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 238
    :cond_0
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mServiceComponent:Landroid/content/ComponentName;

    #@2b
    return-object v0
.end method

.method public getSessionToken()Landroid/media/session/MediaSession$Token;
    .locals 3

    #@0
    .prologue
    .line 283
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 284
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "getSessionToken() called while not connected (state="

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    .line 285
    iget v2, p0, Landroid/media/browse/MediaBrowser;->mState:I

    #@16
    .line 284
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 285
    const-string/jumbo v2, ")"

    #@1d
    .line 284
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 287
    :cond_0
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mMediaSessionToken:Landroid/media/session/MediaSession$Token;

    #@2b
    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    #@0
    .prologue
    .line 227
    iget v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public subscribe(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V
    .locals 6
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    #@0
    .prologue
    .line 310
    if-nez p1, :cond_0

    #@2
    .line 311
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "parentId is null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 313
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 314
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v4, "callback is null"

    #@12
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v3

    #@16
    .line 318
    :cond_1
    iget-object v3, p0, Landroid/media/browse/MediaBrowser;->mSubscriptions:Landroid/util/ArrayMap;

    #@18
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Landroid/media/browse/MediaBrowser$Subscription;

    #@1e
    .line 319
    .local v2, "sub":Landroid/media/browse/MediaBrowser$Subscription;
    if-nez v2, :cond_4

    #@20
    const/4 v1, 0x1

    #@21
    .line 320
    .local v1, "newSubscription":Z
    :goto_0
    if-eqz v1, :cond_2

    #@23
    .line 321
    new-instance v2, Landroid/media/browse/MediaBrowser$Subscription;

    #@25
    .end local v2    # "sub":Landroid/media/browse/MediaBrowser$Subscription;
    invoke-direct {v2, p1}, Landroid/media/browse/MediaBrowser$Subscription;-><init>(Ljava/lang/String;)V

    #@28
    .line 322
    .restart local v2    # "sub":Landroid/media/browse/MediaBrowser$Subscription;
    iget-object v3, p0, Landroid/media/browse/MediaBrowser;->mSubscriptions:Landroid/util/ArrayMap;

    #@2a
    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    .line 324
    :cond_2
    iput-object p2, v2, Landroid/media/browse/MediaBrowser$Subscription;->callback:Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    #@2f
    .line 328
    iget v3, p0, Landroid/media/browse/MediaBrowser;->mState:I

    #@31
    const/4 v4, 0x2

    #@32
    if-ne v3, v4, :cond_3

    #@34
    .line 330
    :try_start_0
    iget-object v3, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    #@36
    iget-object v4, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@38
    invoke-interface {v3, p1, v4}, Landroid/service/media/IMediaBrowserService;->addSubscription(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    .line 308
    :cond_3
    :goto_1
    return-void

    #@3c
    .line 319
    .end local v1    # "newSubscription":Z
    :cond_4
    const/4 v1, 0x0

    #@3d
    .restart local v1    # "newSubscription":Z
    goto :goto_0

    #@3e
    .line 331
    :catch_0
    move-exception v0

    #@3f
    .line 334
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "MediaBrowser"

    #@42
    new-instance v4, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v5, "addSubscription failed with RemoteException parentId="

    #@4a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@59
    goto :goto_1
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 5
    .param p1, "parentId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 351
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 352
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v3, "parentId is empty."

    #@b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 356
    :cond_0
    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mSubscriptions:Landroid/util/ArrayMap;

    #@11
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/media/browse/MediaBrowser$Subscription;

    #@17
    .line 359
    .local v1, "sub":Landroid/media/browse/MediaBrowser$Subscription;
    iget v2, p0, Landroid/media/browse/MediaBrowser;->mState:I

    #@19
    const/4 v3, 0x2

    #@1a
    if-ne v2, v3, :cond_1

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 361
    :try_start_0
    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    #@20
    iget-object v3, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    #@22
    invoke-interface {v2, p1, v3}, Landroid/service/media/IMediaBrowserService;->removeSubscription(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 349
    :cond_1
    :goto_0
    return-void

    #@26
    .line 362
    :catch_0
    move-exception v0

    #@27
    .line 365
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "MediaBrowser"

    #@2a
    new-instance v3, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v4, "removeSubscription failed with RemoteException parentId="

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    goto :goto_0
.end method
