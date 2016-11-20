.class public Lcom/android/server/tv/TvRemoteService;
.super Lcom/android/server/SystemService;
.source "TvRemoteService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvRemoteService$UserHandler;,
        Lcom/android/server/tv/TvRemoteService$UserProvider;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_KEYS:Z = false

.field private static final TAG:Ljava/lang/String; = "TvRemoteService"


# instance fields
.field private mBridgeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/tv/UinputBridge;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Lcom/android/server/tv/TvRemoteService$UserHandler;

.field private final mLock:Ljava/lang/Object;

.field private mProviderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/tv/TvRemoteProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/tv/TvRemoteProviderProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mProviderList:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/tv/TvRemoteService;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mProviderMap:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvRemoteService;->clearInputBridgeInternalLocked(Landroid/os/IBinder;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvRemoteService;->closeInputBridgeInternalLocked(Landroid/os/IBinder;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/tv/TvRemoteService;Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;Ljava/lang/String;III)V
    .locals 0
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "maxPointers"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/tv/TvRemoteService;->openInputBridgeInternalLocked(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;Ljava/lang/String;III)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keyCode"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvRemoteService;->sendKeyDownInternalLocked(Landroid/os/IBinder;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keyCode"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvRemoteService;->sendKeyUpInternalLocked(Landroid/os/IBinder;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;III)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pointerId"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/tv/TvRemoteService;->sendPointerDownInternalLocked(Landroid/os/IBinder;III)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvRemoteService;->sendPointerSyncInternalLocked(Landroid/os/IBinder;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pointerId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvRemoteService;->sendPointerUpInternalLocked(Landroid/os/IBinder;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;J)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timestamp"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvRemoteService;->sendTimeStampInternalLocked(Landroid/os/IBinder;J)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 46
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    #@a
    .line 47
    new-instance v0, Landroid/util/ArrayMap;

    #@c
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mProviderMap:Ljava/util/Map;

    #@11
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mProviderList:Ljava/util/ArrayList;

    #@18
    .line 60
    new-instance v0, Ljava/lang/Object;

    #@1a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mLock:Ljava/lang/Object;

    #@1f
    .line 66
    new-instance v0, Lcom/android/server/tv/TvRemoteService$UserHandler;

    #@21
    new-instance v1, Lcom/android/server/tv/TvRemoteService$UserProvider;

    #@23
    invoke-direct {v1, p0, p0}, Lcom/android/server/tv/TvRemoteService$UserProvider;-><init>(Lcom/android/server/tv/TvRemoteService;Lcom/android/server/tv/TvRemoteService;)V

    #@26
    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/tv/TvRemoteService$UserHandler;-><init>(Lcom/android/server/tv/TvRemoteService;Lcom/android/server/tv/TvRemoteService$UserProvider;Landroid/content/Context;)V

    #@29
    iput-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mHandler:Lcom/android/server/tv/TvRemoteService$UserHandler;

    #@2b
    .line 67
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    #@32
    .line 64
    return-void
.end method

.method private clearInputBridgeInternalLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/tv/UinputBridge;

    #@8
    .line 145
    .local v0, "inputBridge":Lcom/android/server/tv/UinputBridge;
    if-eqz v0, :cond_0

    #@a
    .line 146
    invoke-virtual {v0, p1}, Lcom/android/server/tv/UinputBridge;->clear(Landroid/os/IBinder;)V

    #@d
    .line 139
    :cond_0
    return-void
.end method

.method private closeInputBridgeInternalLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/tv/UinputBridge;

    #@8
    .line 131
    .local v0, "inputBridge":Lcom/android/server/tv/UinputBridge;
    if-eqz v0, :cond_0

    #@a
    .line 132
    invoke-virtual {v0, p1}, Lcom/android/server/tv/UinputBridge;->close(Landroid/os/IBinder;)V

    #@d
    .line 135
    :cond_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    #@f
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 124
    return-void
.end method

.method private informInputBridgeConnected(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 90
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mHandler:Lcom/android/server/tv/TvRemoteService$UserHandler;

    #@3
    const/4 v1, 0x2

    #@4
    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/server/tv/TvRemoteService$UserHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@b
    .line 89
    return-void
.end method

.method private openInputBridgeInternalLocked(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;Ljava/lang/String;III)V
    .locals 7
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "maxPointers"    # I

    #@0
    .prologue
    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    #@2
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 107
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvRemoteService;->informInputBridgeConnected(Landroid/os/IBinder;)V

    #@b
    .line 108
    return-void

    #@c
    .line 111
    :cond_0
    new-instance v0, Lcom/android/server/tv/UinputBridge;

    #@e
    move-object v1, p2

    #@f
    move-object v2, p3

    #@10
    move v3, p4

    #@11
    move v4, p5

    #@12
    move v5, p6

    #@13
    invoke-direct/range {v0 .. v5}, Lcom/android/server/tv/UinputBridge;-><init>(Landroid/os/IBinder;Ljava/lang/String;III)V

    #@16
    .line 113
    .local v0, "inputBridge":Lcom/android/server/tv/UinputBridge;
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    #@18
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 114
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mProviderMap:Ljava/util/Map;

    #@1d
    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 117
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvRemoteService;->informInputBridgeConnected(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 96
    .end local v0    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    :goto_0
    return-void

    #@24
    .line 119
    :catch_0
    move-exception v6

    #@25
    .line 120
    .local v6, "ioe":Ljava/io/IOException;
    const-string/jumbo v1, "TvRemoteService"

    #@28
    new-instance v2, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v3, "Cannot create device for "

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    goto :goto_0
.end method

.method private sendKeyDownInternalLocked(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keyCode"    # I

    #@0
    .prologue
    .line 162
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/tv/UinputBridge;

    #@8
    .line 163
    .local v0, "inputBridge":Lcom/android/server/tv/UinputBridge;
    if-eqz v0, :cond_0

    #@a
    .line 164
    invoke-virtual {v0, p1, p2}, Lcom/android/server/tv/UinputBridge;->sendKeyDown(Landroid/os/IBinder;I)V

    #@d
    .line 157
    :cond_0
    return-void
.end method

.method private sendKeyUpInternalLocked(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keyCode"    # I

    #@0
    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/tv/UinputBridge;

    #@8
    .line 174
    .local v0, "inputBridge":Lcom/android/server/tv/UinputBridge;
    if-eqz v0, :cond_0

    #@a
    .line 175
    invoke-virtual {v0, p1, p2}, Lcom/android/server/tv/UinputBridge;->sendKeyUp(Landroid/os/IBinder;I)V

    #@d
    .line 168
    :cond_0
    return-void
.end method

.method private sendPointerDownInternalLocked(Landroid/os/IBinder;III)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pointerId"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    #@0
    .prologue
    .line 185
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/tv/UinputBridge;

    #@8
    .line 186
    .local v0, "inputBridge":Lcom/android/server/tv/UinputBridge;
    if-eqz v0, :cond_0

    #@a
    .line 187
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/tv/UinputBridge;->sendPointerDown(Landroid/os/IBinder;III)V

    #@d
    .line 179
    :cond_0
    return-void
.end method

.method private sendPointerSyncInternalLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/tv/UinputBridge;

    #@8
    .line 209
    .local v0, "inputBridge":Lcom/android/server/tv/UinputBridge;
    if-eqz v0, :cond_0

    #@a
    .line 210
    invoke-virtual {v0, p1}, Lcom/android/server/tv/UinputBridge;->sendPointerSync(Landroid/os/IBinder;)V

    #@d
    .line 203
    :cond_0
    return-void
.end method

.method private sendPointerUpInternalLocked(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pointerId"    # I

    #@0
    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/tv/UinputBridge;

    #@8
    .line 198
    .local v0, "inputBridge":Lcom/android/server/tv/UinputBridge;
    if-eqz v0, :cond_0

    #@a
    .line 199
    invoke-virtual {v0, p1, p2}, Lcom/android/server/tv/UinputBridge;->sendPointerUp(Landroid/os/IBinder;I)V

    #@d
    .line 191
    :cond_0
    return-void
.end method

.method private sendTimeStampInternalLocked(Landroid/os/IBinder;J)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timestamp"    # J

    #@0
    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/tv/UinputBridge;

    #@8
    .line 152
    .local v0, "inputBridge":Lcom/android/server/tv/UinputBridge;
    if-eqz v0, :cond_0

    #@a
    .line 153
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/tv/UinputBridge;->sendTimestamp(Landroid/os/IBinder;J)V

    #@d
    .line 150
    :cond_0
    return-void
.end method


# virtual methods
.method public monitor()V
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    monitor-exit v0

    #@4
    .line 76
    return-void
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 82
    const/16 v0, 0x258

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 84
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mHandler:Lcom/android/server/tv/TvRemoteService$UserHandler;

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1}, Lcom/android/server/tv/TvRemoteService$UserHandler;->sendEmptyMessage(I)Z

    #@a
    .line 81
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    #@0
    .prologue
    .line 71
    return-void
.end method
