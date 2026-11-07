.class final Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;
.super Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory;
.source "EmbeddedPhotoPickerProviderFactory.java"

# interfaces
.implements Landroid/widget/photopicker/EmbeddedPhotoPickerProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RuntimeEmbeddedPhotoPickerProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;,
        Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist OPEN_SESSION_ATTEMPTS_LIMIT:I = 0x5

.field private static final blacklist TAG:Ljava/lang/String; = "EmbeddedProviderFactory"


# instance fields
.field private blacklist mClientCallbackToWrapperMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/widget/photopicker/EmbeddedPhotoPickerClient;",
            "Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mConnection:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mEmbeddedPhotopicker:Landroid/widget/photopicker/IEmbeddedPhotoPicker;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mPendingOpenSessionRequests:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSerialExecutor:Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor;


# direct methods
.method public static synthetic blacklist $r8$lambda$Fiu0rPfittbtEDYzReMdC7vD5OY(Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;Landroid/os/IBinder;IIILandroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;Ljava/util/concurrent/Executor;Landroid/widget/photopicker/EmbeddedPhotoPickerClient;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->lambda$openSession$0(Landroid/os/IBinder;IIILandroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;Ljava/util/concurrent/Executor;Landroid/widget/photopicker/EmbeddedPhotoPickerClient;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JYGyZj5GPLw_7wlLtVyOiFMbl5c(Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;Landroid/widget/photopicker/EmbeddedPhotoPickerClient;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->lambda$onSessionClosed$1(Landroid/widget/photopicker/EmbeddedPhotoPickerClient;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monBindingDiedSerialized(Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->onBindingDiedSerialized()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monServiceConnectedSerialized(Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->onServiceConnectedSerialized(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monServiceDisconnectedSerialized(Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->onServiceDisconnectedSerialized()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mperformBindServiceSerialized(Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;Landroid/content/Intent;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->performBindServiceSerialized(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory;-><init>(Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory-IA;)V

    .line 112
    new-instance v0, Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor;

    new-instance v1, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mSerialExecutor:Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor;

    .line 120
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mPendingOpenSessionRequests:Ljava/util/Queue;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mClientCallbackToWrapperMap:Ljava/util/Map;

    .line 132
    iput-object p1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mContext:Landroid/content/Context;

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mPackageName:Ljava/lang/String;

    .line 134
    new-instance v0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;

    iget-object v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;-><init>(Landroid/content/Context;Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;)V

    iput-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mConnection:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;

    .line 135
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Context;Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private blacklist bindServiceAndSaveRequestSerialized(Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;)V
    .registers 3
    .param p1, "sessionRequest"    # Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;

    .line 202
    invoke-direct {p0}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->ensureValidServiceConnectionExistsSerialized()V

    .line 203
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mConnection:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;

    invoke-virtual {v0}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->bindServiceSerialized()V

    .line 204
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mConnection:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;

    invoke-virtual {v0}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->isBindRequested()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 207
    iget v0, p1, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;->mTotalOpenSessionAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;->mTotalOpenSessionAttempts:I

    .line 208
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mPendingOpenSessionRequests:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_1b
    return-void
.end method

.method private blacklist ensureValidServiceConnectionExistsSerialized()V
    .registers 3

    .line 193
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mConnection:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;

    invoke-virtual {v0}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->isConnectionValid()Z

    move-result v0

    if-nez v0, :cond_11

    .line 194
    new-instance v0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;

    iget-object v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;-><init>(Landroid/content/Context;Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;)V

    iput-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mConnection:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;

    .line 196
    :cond_11
    return-void
.end method

.method private synthetic blacklist lambda$onSessionClosed$1(Landroid/widget/photopicker/EmbeddedPhotoPickerClient;)V
    .registers 2
    .param p1, "client"    # Landroid/widget/photopicker/EmbeddedPhotoPickerClient;

    .line 244
    invoke-direct {p0, p1}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->onSessionClosedSerialized(Landroid/widget/photopicker/EmbeddedPhotoPickerClient;)V

    return-void
.end method

.method private synthetic blacklist lambda$openSession$0(Landroid/os/IBinder;IIILandroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;Ljava/util/concurrent/Executor;Landroid/widget/photopicker/EmbeddedPhotoPickerClient;)V
    .registers 8
    .param p1, "hostToken"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "featureInfo"    # Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;
    .param p6, "clientExecutor"    # Ljava/util/concurrent/Executor;
    .param p7, "callback"    # Landroid/widget/photopicker/EmbeddedPhotoPickerClient;

    .line 152
    invoke-direct/range {p0 .. p7}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->openSessionSerialized(Landroid/os/IBinder;IIILandroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;Ljava/util/concurrent/Executor;Landroid/widget/photopicker/EmbeddedPhotoPickerClient;)V

    return-void
.end method

.method private blacklist onBindingDiedSerialized()V
    .registers 2

    .line 469
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mConnection:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;

    invoke-virtual {v0}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->unbindSerialized()V

    .line 470
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mConnection:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;

    invoke-virtual {v0}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->bindServiceSerialized()V

    .line 471
    return-void
.end method

.method private blacklist onServiceConnectedSerialized(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "service"    # Landroid/os/IBinder;

    .line 459
    invoke-static {p1}, Landroid/widget/photopicker/IEmbeddedPhotoPicker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/widget/photopicker/IEmbeddedPhotoPicker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mEmbeddedPhotopicker:Landroid/widget/photopicker/IEmbeddedPhotoPicker;

    .line 462
    :goto_6
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mPendingOpenSessionRequests:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 463
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mPendingOpenSessionRequests:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;

    invoke-direct {p0, v0}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->openSessionInternalSerialized(Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;)V

    goto :goto_6

    .line 465
    :cond_1a
    return-void
.end method

.method private blacklist onServiceDisconnectedSerialized()V
    .registers 5

    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mEmbeddedPhotopicker:Landroid/widget/photopicker/IEmbeddedPhotoPicker;

    .line 447
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mClientCallbackToWrapperMap:Ljava/util/Map;

    .line 448
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 449
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;>;"
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 450
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;

    .line 451
    .local v1, "clientWrapper":Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Service Disconnected. Close the Session"

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->reportSessionErrorLocked(Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;Ljava/lang/Throwable;)V

    .line 453
    .end local v1    # "clientWrapper":Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;
    goto :goto_d

    .line 455
    :cond_24
    iget-object v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mConnection:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;

    invoke-virtual {v1}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->bindServiceSerialized()V

    .line 456
    return-void
.end method

.method private blacklist onSessionClosedSerialized(Landroid/widget/photopicker/EmbeddedPhotoPickerClient;)V
    .registers 3
    .param p1, "client"    # Landroid/widget/photopicker/EmbeddedPhotoPickerClient;

    .line 248
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mClientCallbackToWrapperMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    .line 251
    return-void

    .line 254
    :cond_9
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mClientCallbackToWrapperMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mEmbeddedPhotopicker:Landroid/widget/photopicker/IEmbeddedPhotoPicker;

    .line 259
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mConnection:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;

    invoke-virtual {v0}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->unbindSerialized()V

    .line 261
    :cond_19
    return-void
.end method

.method private blacklist openSessionInternalSerialized(Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;)V
    .registers 10
    .param p1, "sessionRequest"    # Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;

    .line 214
    :try_start_0
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mEmbeddedPhotopicker:Landroid/widget/photopicker/IEmbeddedPhotoPicker;

    iget-object v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;->mHostToken:Landroid/os/IBinder;

    iget v3, p1, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;->mDisplayId:I

    iget v4, p1, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;->mWidth:I

    iget v5, p1, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;->mHeight:I

    iget-object v6, p1, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;->mFeatureInfo:Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;

    iget-object v7, p1, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;->mClientCallbackWrapper:Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;

    invoke-interface/range {v0 .. v7}, Landroid/widget/photopicker/IEmbeddedPhotoPicker;->openSession(Ljava/lang/String;Landroid/os/IBinder;IIILandroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;Landroid/widget/photopicker/IEmbeddedPhotoPickerClient;)V
    :try_end_13
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_13} :catch_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_40

    .line 235
    :catch_14
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p1, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;->mClientCallbackWrapper:Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;

    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Remote delegate is Invalid! Failed to open a session"

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->reportSessionErrorLocked(Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;Ljava/lang/Throwable;)V

    goto :goto_41

    .line 222
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_22
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/DeadObjectException;
    iget-object v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mConnection:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;

    invoke-virtual {v1}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->disposeLocked()V

    .line 227
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mEmbeddedPhotopicker:Landroid/widget/photopicker/IEmbeddedPhotoPicker;

    .line 228
    iget v1, p1, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;->mTotalOpenSessionAttempts:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_34

    .line 229
    invoke-direct {p0, p1}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->bindServiceAndSaveRequestSerialized(Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;)V

    goto :goto_40

    .line 231
    :cond_34
    iget-object v1, p1, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;->mClientCallbackWrapper:Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to get valid remote delegate.Please request a new session"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->reportSessionErrorLocked(Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;Ljava/lang/Throwable;)V

    .line 239
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :goto_40
    nop

    .line 240
    :goto_41
    return-void
.end method

.method private blacklist openSessionSerialized(Landroid/os/IBinder;IIILandroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;Ljava/util/concurrent/Executor;Landroid/widget/photopicker/EmbeddedPhotoPickerClient;)V
    .registers 20
    .param p1, "hostToken"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "featureInfo"    # Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;
    .param p6, "clientExecutor"    # Ljava/util/concurrent/Executor;
    .param p7, "callback"    # Landroid/widget/photopicker/EmbeddedPhotoPickerClient;

    .line 163
    move-object/from16 v0, p7

    new-instance v1, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;

    new-instance v2, Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor;

    move-object/from16 v3, p6

    invoke-direct {v2, v3}, Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-direct {v1, p0, v0, v2}, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;-><init>(Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory;Landroid/widget/photopicker/EmbeddedPhotoPickerClient;Ljava/util/concurrent/Executor;)V

    move-object v9, v1

    .line 166
    .local v9, "clientWrapper":Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;
    iget-object v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mClientCallbackToWrapperMap:Ljava/util/Map;

    invoke-interface {v1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance v4, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;

    const/4 v11, 0x0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v11}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;-><init>(Landroid/os/IBinder;IIILandroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory-IA;)V

    .line 176
    .local v4, "sessionRequest":Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;
    invoke-direct {p0}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->ensureValidServiceConnectionExistsSerialized()V

    .line 181
    iget-object v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mConnection:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;

    invoke-virtual {v1}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 182
    invoke-direct {p0, v4}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->openSessionInternalSerialized(Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;)V

    goto :goto_33

    .line 184
    :cond_30
    invoke-direct {p0, v4}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->bindServiceAndSaveRequestSerialized(Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;)V

    .line 186
    :goto_33
    return-void
.end method

.method private blacklist performBindServiceSerialized(Landroid/content/Intent;)Z
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .line 410
    :try_start_0
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mSerialExecutor:Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor;

    iget-object v2, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mConnection:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;

    .line 411
    const/4 v3, 0x1

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result v0

    .line 415
    .local v0, "bindRequested":Z
    if-nez v0, :cond_2a

    .line 416
    :goto_d
    iget-object v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mPendingOpenSessionRequests:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 417
    iget-object v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mPendingOpenSessionRequests:Ljava/util/Queue;

    .line 418
    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;

    iget-object v1, v1, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;->mClientCallbackWrapper:Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to bind photopicker service.Please request a new session"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 417
    invoke-static {v1, v2}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->reportSessionErrorLocked(Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;Ljava/lang/Throwable;)V
    :try_end_29
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_29} :catch_2b

    goto :goto_d

    .line 433
    :cond_2a
    goto :goto_4b

    .line 423
    .end local v0    # "bindRequested":Z
    :catch_2b
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    .line 427
    .local v1, "bindRequested":Z
    :goto_2d
    iget-object v2, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mPendingOpenSessionRequests:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 428
    iget-object v2, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mPendingOpenSessionRequests:Ljava/util/Queue;

    .line 429
    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;

    iget-object v2, v2, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;->mClientCallbackWrapper:Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Unable to bind photopicker service. Please request a new session"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 428
    invoke-static {v2, v3}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->reportSessionErrorLocked(Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;Ljava/lang/Throwable;)V

    goto :goto_2d

    .line 427
    :cond_4a
    move v0, v1

    .line 434
    .end local v1    # "bindRequested":Z
    .local v0, "bindRequested":Z
    :goto_4b
    return v0
.end method

.method private static blacklist reportSessionErrorLocked(Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "clientWrapper"    # Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 483
    new-instance v0, Landroid/widget/photopicker/ParcelableException;

    invoke-direct {v0, p1}, Landroid/widget/photopicker/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;->onSessionError(Landroid/widget/photopicker/ParcelableException;)V

    .line 485
    return-void
.end method


# virtual methods
.method public blacklist onSessionClosed(Landroid/widget/photopicker/EmbeddedPhotoPickerClient;)V
    .registers 4
    .param p1, "client"    # Landroid/widget/photopicker/EmbeddedPhotoPickerClient;

    .line 244
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mSerialExecutor:Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor;

    new-instance v1, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$$ExternalSyntheticLambda2;-><init>(Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;Landroid/widget/photopicker/EmbeddedPhotoPickerClient;)V

    invoke-virtual {v0, v1}, Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor;->execute(Ljava/lang/Runnable;)V

    .line 245
    return-void
.end method

.method public whitelist openSession(Landroid/os/IBinder;IIILandroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;Ljava/util/concurrent/Executor;Landroid/widget/photopicker/EmbeddedPhotoPickerClient;)V
    .registers 18
    .param p1, "hostToken"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "featureInfo"    # Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;
    .param p6, "clientExecutor"    # Ljava/util/concurrent/Executor;
    .param p7, "callback"    # Landroid/widget/photopicker/EmbeddedPhotoPickerClient;

    .line 146
    const-string v0, "hostToken must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    const-string v0, "featureInfo must not be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    const-string v0, "clientExecutor must not be null"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    const-string v0, "clientCallback must not be null"

    move-object/from16 v9, p7

    invoke-static {v9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->mSerialExecutor:Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor;

    new-instance v1, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v9}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$$ExternalSyntheticLambda0;-><init>(Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;Landroid/os/IBinder;IIILandroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;Ljava/util/concurrent/Executor;Landroid/widget/photopicker/EmbeddedPhotoPickerClient;)V

    invoke-virtual {v0, v1}, Landroid/widget/photopicker/EmbeddedPhotoPickerSerialExecutor;->execute(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method
