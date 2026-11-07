.class public Lcom/android/ims/FeatureConnector;
.super Ljava/lang/Object;
.source "FeatureConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/FeatureConnector$ManagerFactory;,
        Lcom/android/ims/FeatureConnector$Listener;,
        Lcom/android/ims/FeatureConnector$UnavailableReason;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lcom/android/ims/FeatureUpdates;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "FeatureConnector"

.field public static final blacklist UNAVAILABLE_REASON_DISCONNECTED:I = 0x0

.field public static final blacklist UNAVAILABLE_REASON_IMS_UNSUPPORTED:I = 0x2

.field public static final blacklist UNAVAILABLE_REASON_NOT_READY:I = 0x1

.field public static final blacklist UNAVAILABLE_REASON_SERVER_UNAVAILABLE:I = 0x3


# instance fields
.field private final blacklist mCallback:Lcom/android/ims/internal/IImsServiceFeatureCallback;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDisconnectedReason:Ljava/lang/Integer;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mFactory:Lcom/android/ims/FeatureConnector$ManagerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/ims/FeatureConnector$ManagerFactory<",
            "TU;>;"
        }
    .end annotation
.end field

.field private blacklist mLastReadyState:Z

.field private final blacklist mListener:Lcom/android/ims/FeatureConnector$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/ims/FeatureConnector$Listener<",
            "TU;>;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mLogPrefix:Ljava/lang/String;

.field private blacklist mManager:Lcom/android/ims/FeatureUpdates;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field private final blacklist mPhoneId:I

.field private final blacklist mReadyFilter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$krUpTHiHd618mvBXSz8X6EOgg6I(Lcom/android/ims/FeatureConnector;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/FeatureConnector;->lambda$connect$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisconnectedReason(Lcom/android/ims/FeatureConnector;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/FeatureConnector;->mDisconnectedReason:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Lcom/android/ims/FeatureConnector;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/FeatureConnector;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastReadyState(Lcom/android/ims/FeatureConnector;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/ims/FeatureConnector;->mLastReadyState:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Lcom/android/ims/FeatureConnector;)Lcom/android/ims/FeatureConnector$Listener;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/FeatureConnector;->mListener:Lcom/android/ims/FeatureConnector$Listener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/ims/FeatureConnector;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/FeatureConnector;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmManager(Lcom/android/ims/FeatureConnector;)Lcom/android/ims/FeatureUpdates;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/FeatureConnector;->mManager:Lcom/android/ims/FeatureUpdates;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReadyFilter(Lcom/android/ims/FeatureConnector;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/FeatureConnector;->mReadyFilter:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDisconnectedReason(Lcom/android/ims/FeatureConnector;Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/ims/FeatureConnector;->mDisconnectedReason:Ljava/lang/Integer;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastReadyState(Lcom/android/ims/FeatureConnector;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/FeatureConnector;->mLastReadyState:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/ims/FeatureConnector;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/FeatureConnector;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyNotReady(Lcom/android/ims/FeatureConnector;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/FeatureConnector;->notifyNotReady()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyReady(Lcom/android/ims/FeatureConnector;Lcom/android/ims/FeatureUpdates;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/ims/FeatureConnector;->notifyReady(Lcom/android/ims/FeatureUpdates;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILcom/android/ims/FeatureConnector$ManagerFactory;Ljava/lang/String;Ljava/util/List;Lcom/android/ims/FeatureConnector$Listener;Ljava/util/concurrent/Executor;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p4, "logPrefix"    # Ljava/lang/String;
    .param p7, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/android/ims/FeatureConnector$ManagerFactory<",
            "TU;>;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/ims/FeatureConnector$Listener<",
            "TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 227
    .local p0, "this":Lcom/android/ims/FeatureConnector;, "Lcom/android/ims/FeatureConnector<TU;>;"
    .local p3, "factory":Lcom/android/ims/FeatureConnector$ManagerFactory;, "Lcom/android/ims/FeatureConnector$ManagerFactory<TU;>;"
    .local p5, "readyFilter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p6, "listener":Lcom/android/ims/FeatureConnector$Listener;, "Lcom/android/ims/FeatureConnector$Listener<TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Lcom/android/ims/FeatureConnector$1;

    invoke-direct {v0, p0}, Lcom/android/ims/FeatureConnector$1;-><init>(Lcom/android/ims/FeatureConnector;)V

    iput-object v0, p0, Lcom/android/ims/FeatureConnector;->mCallback:Lcom/android/ims/internal/IImsServiceFeatureCallback;

    .line 209
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/FeatureConnector;->mLock:Ljava/lang/Object;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/FeatureConnector;->mReadyFilter:Ljava/util/List;

    .line 218
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/FeatureConnector;->mDisconnectedReason:Ljava/lang/Integer;

    .line 221
    iput-boolean v0, p0, Lcom/android/ims/FeatureConnector;->mLastReadyState:Z

    .line 228
    iput-object p1, p0, Lcom/android/ims/FeatureConnector;->mContext:Landroid/content/Context;

    .line 229
    iput p2, p0, Lcom/android/ims/FeatureConnector;->mPhoneId:I

    .line 230
    iput-object p3, p0, Lcom/android/ims/FeatureConnector;->mFactory:Lcom/android/ims/FeatureConnector$ManagerFactory;

    .line 231
    iput-object p4, p0, Lcom/android/ims/FeatureConnector;->mLogPrefix:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/android/ims/FeatureConnector;->mReadyFilter:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 233
    iput-object p6, p0, Lcom/android/ims/FeatureConnector;->mListener:Lcom/android/ims/FeatureConnector$Listener;

    .line 234
    iput-object p7, p0, Lcom/android/ims/FeatureConnector;->mExecutor:Ljava/util/concurrent/Executor;

    .line 235
    return-void
.end method

.method private blacklist isSupported()Z
    .registers 3

    .line 263
    .local p0, "this":Lcom/android/ims/FeatureConnector;, "Lcom/android/ims/FeatureConnector<TU;>;"
    iget-object v0, p0, Lcom/android/ims/FeatureConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 264
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    return v1

    .line 265
    :cond_a
    const-string v1, "android.hardware.telephony.ims"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private synthetic blacklist lambda$connect$0()V
    .registers 3

    .line 248
    .local p0, "this":Lcom/android/ims/FeatureConnector;, "Lcom/android/ims/FeatureConnector<TU;>;"
    iget-object v0, p0, Lcom/android/ims/FeatureConnector;->mListener:Lcom/android/ims/FeatureConnector$Listener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/ims/FeatureConnector$Listener;->connectionUnavailable(I)V

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .line 305
    .local p0, "this":Lcom/android/ims/FeatureConnector;, "Lcom/android/ims/FeatureConnector<TU;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/FeatureConnector;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/FeatureConnector;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeatureConnector"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void
.end method

.method private blacklist logw(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .line 309
    .local p0, "this":Lcom/android/ims/FeatureConnector;, "Lcom/android/ims/FeatureConnector<TU;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/FeatureConnector;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/FeatureConnector;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeatureConnector"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void
.end method

.method private blacklist notifyNotReady()V
    .registers 3

    .line 301
    .local p0, "this":Lcom/android/ims/FeatureConnector;, "Lcom/android/ims/FeatureConnector<TU;>;"
    iget-object v0, p0, Lcom/android/ims/FeatureConnector;->mListener:Lcom/android/ims/FeatureConnector$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/ims/FeatureConnector$Listener;->connectionUnavailable(I)V

    .line 302
    return-void
.end method

.method private blacklist notifyReady(Lcom/android/ims/FeatureUpdates;I)V
    .registers 4
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 290
    .local p0, "this":Lcom/android/ims/FeatureConnector;, "Lcom/android/ims/FeatureConnector<TU;>;"
    .local p1, "manager":Lcom/android/ims/FeatureUpdates;, "TU;"
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/FeatureConnector;->mListener:Lcom/android/ims/FeatureConnector$Listener;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/FeatureConnector$Listener;->connectionReady(Lcom/android/ims/FeatureUpdates;I)V
    :try_end_5
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_5} :catch_7

    .line 295
    nop

    .line 296
    return-void

    .line 292
    :catch_7
    move-exception v0

    .line 294
    .local v0, "e":Lcom/android/ims/ImsException;
    throw v0
.end method


# virtual methods
.method public blacklist connect()V
    .registers 5

    .line 247
    .local p0, "this":Lcom/android/ims/FeatureConnector;, "Lcom/android/ims/FeatureConnector<TU;>;"
    invoke-direct {p0}, Lcom/android/ims/FeatureConnector;->isSupported()Z

    move-result v0

    if-nez v0, :cond_16

    .line 248
    iget-object v0, p0, Lcom/android/ims/FeatureConnector;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/ims/FeatureConnector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/ims/FeatureConnector$$ExternalSyntheticLambda0;-><init>(Lcom/android/ims/FeatureConnector;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 250
    const-string v0, "connect: not supported."

    invoke-direct {p0, v0}, Lcom/android/ims/FeatureConnector;->logw(Ljava/lang/String;)V

    .line 251
    return-void

    .line 253
    :cond_16
    iget-object v0, p0, Lcom/android/ims/FeatureConnector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_19
    iget-object v1, p0, Lcom/android/ims/FeatureConnector;->mManager:Lcom/android/ims/FeatureUpdates;

    if-nez v1, :cond_29

    .line 255
    iget-object v1, p0, Lcom/android/ims/FeatureConnector;->mFactory:Lcom/android/ims/FeatureConnector$ManagerFactory;

    iget-object v2, p0, Lcom/android/ims/FeatureConnector;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/ims/FeatureConnector;->mPhoneId:I

    invoke-interface {v1, v2, v3}, Lcom/android/ims/FeatureConnector$ManagerFactory;->createManager(Landroid/content/Context;I)Lcom/android/ims/FeatureUpdates;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/FeatureConnector;->mManager:Lcom/android/ims/FeatureUpdates;

    .line 257
    :cond_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_34

    .line 258
    iget-object v0, p0, Lcom/android/ims/FeatureConnector;->mManager:Lcom/android/ims/FeatureUpdates;

    iget v1, p0, Lcom/android/ims/FeatureConnector;->mPhoneId:I

    iget-object v2, p0, Lcom/android/ims/FeatureConnector;->mCallback:Lcom/android/ims/internal/IImsServiceFeatureCallback;

    invoke-interface {v0, v1, v2}, Lcom/android/ims/FeatureUpdates;->registerFeatureCallback(ILcom/android/ims/internal/IImsServiceFeatureCallback;)V

    .line 259
    return-void

    .line 257
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist disconnect()V
    .registers 4

    .line 275
    .local p0, "this":Lcom/android/ims/FeatureConnector;, "Lcom/android/ims/FeatureConnector<TU;>;"
    iget-object v0, p0, Lcom/android/ims/FeatureConnector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/FeatureConnector;->mManager:Lcom/android/ims/FeatureUpdates;

    .line 277
    .local v1, "manager":Lcom/android/ims/FeatureUpdates;, "TU;"
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_18

    .line 278
    if-nez v1, :cond_9

    return-void

    .line 280
    :cond_9
    iget-object v0, p0, Lcom/android/ims/FeatureConnector;->mCallback:Lcom/android/ims/internal/IImsServiceFeatureCallback;

    invoke-interface {v1, v0}, Lcom/android/ims/FeatureUpdates;->unregisterFeatureCallback(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V

    .line 282
    :try_start_e
    iget-object v0, p0, Lcom/android/ims/FeatureConnector;->mCallback:Lcom/android/ims/internal/IImsServiceFeatureCallback;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->imsFeatureRemoved(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_16

    .line 283
    :catch_15
    move-exception v0

    :goto_16
    nop

    .line 284
    return-void

    .line 277
    .end local v1    # "manager":Lcom/android/ims/FeatureUpdates;, "TU;"
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method
