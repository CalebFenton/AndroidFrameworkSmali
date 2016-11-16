.class public final Landroid/hardware/location/ContextHubManager;
.super Ljava/lang/Object;
.source "ContextHubManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ContextHubManager$1;,
        Landroid/hardware/location/ContextHubManager$Callback;,
        Landroid/hardware/location/ContextHubManager$ICallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextHubManager"


# instance fields
.field private mCallback:Landroid/hardware/location/ContextHubManager$Callback;

.field private mCallbackHandler:Landroid/os/Handler;

.field private mClientCallback:Landroid/hardware/location/IContextHubCallback$Stub;

.field private mContextHubService:Landroid/hardware/location/IContextHubService;

.field private mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mMainLooper:Landroid/os/Looper;


# direct methods
.method static synthetic -get0(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$Callback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/location/ContextHubManager;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallbackHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$ICallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/hardware/location/ContextHubManager;)Landroid/os/Looper;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mMainLooper:Landroid/os/Looper;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainLooper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 362
    new-instance v2, Landroid/hardware/location/ContextHubManager$1;

    #@5
    invoke-direct {v2, p0}, Landroid/hardware/location/ContextHubManager$1;-><init>(Landroid/hardware/location/ContextHubManager;)V

    #@8
    iput-object v2, p0, Landroid/hardware/location/ContextHubManager;->mClientCallback:Landroid/hardware/location/IContextHubCallback$Stub;

    #@a
    .line 392
    iput-object p2, p0, Landroid/hardware/location/ContextHubManager;->mMainLooper:Landroid/os/Looper;

    #@c
    .line 394
    const-string/jumbo v2, "contexthub_service"

    #@f
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    .line 395
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    #@15
    .line 396
    invoke-static {v0}, Landroid/hardware/location/IContextHubService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubService;

    #@18
    move-result-object v2

    #@19
    iput-object v2, p0, Landroid/hardware/location/ContextHubManager;->mContextHubService:Landroid/hardware/location/IContextHubService;

    #@1b
    .line 399
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/location/ContextHubManager;->getBinder()Landroid/hardware/location/IContextHubService;

    #@1e
    move-result-object v2

    #@1f
    iget-object v3, p0, Landroid/hardware/location/ContextHubManager;->mClientCallback:Landroid/hardware/location/IContextHubCallback$Stub;

    #@21
    invoke-interface {v2, v3}, Landroid/hardware/location/IContextHubService;->registerCallback(Landroid/hardware/location/IContextHubCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 391
    :goto_0
    return-void

    #@25
    .line 400
    :catch_0
    move-exception v1

    #@26
    .line 401
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ContextHubManager"

    #@29
    new-instance v3, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v4, "Could not register callback:"

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    goto :goto_0

    #@41
    .line 405
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v2, "ContextHubManager"

    #@44
    const-string/jumbo v3, "failed to getService"

    #@47
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    goto :goto_0
.end method

.method private getBinder()Landroid/hardware/location/IContextHubService;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 410
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mContextHubService:Landroid/hardware/location/IContextHubService;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 411
    new-instance v0, Landroid/os/RemoteException;

    #@6
    const-string/jumbo v1, "Service not connected."

    #@9
    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 413
    :cond_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mContextHubService:Landroid/hardware/location/IContextHubService;

    #@f
    return-object v0
.end method


# virtual methods
.method public findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I
    .locals 5
    .param p1, "hubHandle"    # I
    .param p2, "filter"    # Landroid/hardware/location/NanoAppFilter;

    #@0
    .prologue
    .line 234
    const/4 v1, 0x0

    #@1
    .line 236
    .local v1, "retVal":[I
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/location/ContextHubManager;->getBinder()Landroid/hardware/location/IContextHubService;

    #@4
    move-result-object v2

    #@5
    invoke-interface {v2, p1, p2}, Landroid/hardware/location/IContextHubService;->findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    .line 240
    .end local v1    # "retVal":[I
    :goto_0
    return-object v1

    #@a
    .line 237
    .restart local v1    # "retVal":[I
    :catch_0
    move-exception v0

    #@b
    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ContextHubManager"

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "Could not query nanoApp instance :"

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    goto :goto_0
.end method

.method public getContextHubHandles()[I
    .locals 5

    #@0
    .prologue
    .line 95
    const/4 v1, 0x0

    #@1
    .line 97
    .local v1, "retVal":[I
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/location/ContextHubManager;->getBinder()Landroid/hardware/location/IContextHubService;

    #@4
    move-result-object v2

    #@5
    invoke-interface {v2}, Landroid/hardware/location/IContextHubService;->getContextHubHandles()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    .line 101
    .end local v1    # "retVal":[I
    :goto_0
    return-object v1

    #@a
    .line 98
    .restart local v1    # "retVal":[I
    :catch_0
    move-exception v0

    #@b
    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ContextHubManager"

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "Could not fetch context hub handles : "

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    goto :goto_0
.end method

.method public getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;
    .locals 5
    .param p1, "hubHandle"    # I

    #@0
    .prologue
    .line 113
    const/4 v1, 0x0

    #@1
    .line 115
    .local v1, "retVal":Landroid/hardware/location/ContextHubInfo;
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/location/ContextHubManager;->getBinder()Landroid/hardware/location/IContextHubService;

    #@4
    move-result-object v2

    #@5
    invoke-interface {v2, p1}, Landroid/hardware/location/IContextHubService;->getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    .line 120
    .end local v1    # "retVal":Landroid/hardware/location/ContextHubInfo;
    :goto_0
    return-object v1

    #@a
    .line 116
    .restart local v1    # "retVal":Landroid/hardware/location/ContextHubInfo;
    :catch_0
    move-exception v0

    #@b
    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ContextHubManager"

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "Could not fetch context hub info :"

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    goto :goto_0
.end method

.method public getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;
    .locals 5
    .param p1, "nanoAppHandle"    # I

    #@0
    .prologue
    .line 212
    const/4 v1, 0x0

    #@1
    .line 215
    .local v1, "retVal":Landroid/hardware/location/NanoAppInstanceInfo;
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/location/ContextHubManager;->getBinder()Landroid/hardware/location/IContextHubService;

    #@4
    move-result-object v2

    #@5
    invoke-interface {v2, p1}, Landroid/hardware/location/IContextHubService;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    .line 220
    .end local v1    # "retVal":Landroid/hardware/location/NanoAppInstanceInfo;
    :goto_0
    return-object v1

    #@a
    .line 216
    .restart local v1    # "retVal":Landroid/hardware/location/NanoAppInstanceInfo;
    :catch_0
    move-exception v0

    #@b
    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ContextHubManager"

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "Could not fetch nanoApp info :"

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    goto :goto_0
.end method

.method public loadNanoApp(ILandroid/hardware/location/NanoApp;)I
    .locals 5
    .param p1, "hubHandle"    # I
    .param p2, "app"    # Landroid/hardware/location/NanoApp;

    #@0
    .prologue
    .line 143
    const/4 v1, -0x1

    #@1
    .line 145
    .local v1, "retVal":I
    if-nez p2, :cond_0

    #@3
    .line 146
    return v1

    #@4
    .line 150
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/location/ContextHubManager;->getBinder()Landroid/hardware/location/IContextHubService;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v2, p1, p2}, Landroid/hardware/location/IContextHubService;->loadNanoApp(ILandroid/hardware/location/NanoApp;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    .line 155
    :goto_0
    return v1

    #@d
    .line 151
    :catch_0
    move-exception v0

    #@e
    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ContextHubManager"

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "Could not load nanoApp :"

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    goto :goto_0
.end method

.method public registerCallback(Landroid/hardware/location/ContextHubManager$Callback;)I
    .locals 1
    .param p1, "callback"    # Landroid/hardware/location/ContextHubManager$Callback;

    #@0
    .prologue
    .line 288
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/hardware/location/ContextHubManager;->registerCallback(Landroid/hardware/location/ContextHubManager$Callback;Landroid/os/Handler;)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public registerCallback(Landroid/hardware/location/ContextHubManager$Callback;Landroid/os/Handler;)I
    .locals 2
    .param p1, "callback"    # Landroid/hardware/location/ContextHubManager$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 316
    monitor-enter p0

    #@1
    .line 317
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 318
    const-string/jumbo v0, "ContextHubManager"

    #@8
    const-string/jumbo v1, "Max number of callbacks reached!"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 319
    const/4 v0, -0x1

    #@f
    monitor-exit p0

    #@10
    return v0

    #@11
    .line 321
    :cond_0
    :try_start_1
    iput-object p1, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    #@13
    .line 322
    iput-object p2, p0, Landroid/hardware/location/ContextHubManager;->mCallbackHandler:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    monitor-exit p0

    #@16
    .line 324
    const/4 v0, 0x0

    #@17
    return v0

    #@18
    .line 316
    :catchall_0
    move-exception v0

    #@19
    monitor-exit p0

    #@1a
    throw v0
.end method

.method public registerCallback(Landroid/hardware/location/ContextHubManager$ICallback;)I
    .locals 2
    .param p1, "callback"    # Landroid/hardware/location/ContextHubManager$ICallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 297
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 298
    const-string/jumbo v0, "ContextHubManager"

    #@7
    const-string/jumbo v1, "Max number of local callbacks reached!"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 299
    const/4 v0, -0x1

    #@e
    return v0

    #@f
    .line 301
    :cond_0
    iput-object p1, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;

    #@11
    .line 302
    const/4 v0, 0x0

    #@12
    return v0
.end method

.method public sendMessage(IILandroid/hardware/location/ContextHubMessage;)I
    .locals 5
    .param p1, "hubHandle"    # I
    .param p2, "nanoAppHandle"    # I
    .param p3, "message"    # Landroid/hardware/location/ContextHubMessage;

    #@0
    .prologue
    .line 263
    const/4 v1, -0x1

    #@1
    .line 265
    .local v1, "retVal":I
    if-eqz p3, :cond_0

    #@3
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getData()[B

    #@6
    move-result-object v2

    #@7
    if-nez v2, :cond_1

    #@9
    .line 266
    :cond_0
    const-string/jumbo v2, "ContextHubManager"

    #@c
    const-string/jumbo v3, "null ptr"

    #@f
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 267
    return v1

    #@13
    .line 270
    :cond_1
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/location/ContextHubManager;->getBinder()Landroid/hardware/location/IContextHubService;

    #@16
    move-result-object v2

    #@17
    invoke-interface {v2, p1, p2, p3}, Landroid/hardware/location/IContextHubService;->sendMessage(IILandroid/hardware/location/ContextHubMessage;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    move-result v1

    #@1b
    .line 275
    :goto_0
    return v1

    #@1c
    .line 271
    :catch_0
    move-exception v0

    #@1d
    .line 272
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ContextHubManager"

    #@20
    new-instance v3, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v4, "Could not send message :"

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    goto :goto_0
.end method

.method public unloadNanoApp(I)I
    .locals 5
    .param p1, "nanoAppHandle"    # I

    #@0
    .prologue
    .line 174
    const/4 v1, -0x1

    #@1
    .line 177
    .local v1, "retVal":I
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/location/ContextHubManager;->getBinder()Landroid/hardware/location/IContextHubService;

    #@4
    move-result-object v2

    #@5
    invoke-interface {v2, p1}, Landroid/hardware/location/IContextHubService;->unloadNanoApp(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result v1

    #@9
    .line 182
    :goto_0
    return v1

    #@a
    .line 178
    :catch_0
    move-exception v0

    #@b
    .line 179
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ContextHubManager"

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "Could not fetch unload nanoApp :"

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    goto :goto_0
.end method

.method public unregisterCallback(Landroid/hardware/location/ContextHubManager$Callback;)I
    .locals 2
    .param p1, "callback"    # Landroid/hardware/location/ContextHubManager$Callback;

    #@0
    .prologue
    .line 337
    monitor-enter p0

    #@1
    .line 338
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    #@3
    if-eq p1, v0, :cond_0

    #@5
    .line 339
    const-string/jumbo v0, "ContextHubManager"

    #@8
    const-string/jumbo v1, "Cannot recognize callback!"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 340
    const/4 v0, -0x1

    #@f
    monitor-exit p0

    #@10
    return v0

    #@11
    .line 343
    :cond_0
    const/4 v0, 0x0

    #@12
    :try_start_1
    iput-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    #@14
    .line 344
    const/4 v0, 0x0

    #@15
    iput-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallbackHandler:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    monitor-exit p0

    #@18
    .line 346
    const/4 v0, 0x0

    #@19
    return v0

    #@1a
    .line 337
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit p0

    #@1c
    throw v0
.end method

.method public declared-synchronized unregisterCallback(Landroid/hardware/location/ContextHubManager$ICallback;)I
    .locals 2
    .param p1, "callback"    # Landroid/hardware/location/ContextHubManager$ICallback;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 354
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;

    #@3
    if-eq p1, v0, :cond_0

    #@5
    .line 355
    const-string/jumbo v0, "ContextHubManager"

    #@8
    const-string/jumbo v1, "Cannot recognize local callback!"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 356
    const/4 v0, -0x1

    #@f
    monitor-exit p0

    #@10
    return v0

    #@11
    .line 358
    :cond_0
    const/4 v0, 0x0

    #@12
    :try_start_1
    iput-object v0, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    .line 359
    const/4 v0, 0x0

    #@15
    monitor-exit p0

    #@16
    return v0

    #@17
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method
