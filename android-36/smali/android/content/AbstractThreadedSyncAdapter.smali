.class public abstract Landroid/content/AbstractThreadedSyncAdapter;
.super Ljava/lang/Object;
.source "AbstractThreadedSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;,
        Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    }
.end annotation


# static fields
.field private static final greylist-max-o ENABLE_LOG:Z

.field public static final whitelist LOG_SYNC_DETAILS:I = 0xab7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SyncAdapter"


# instance fields
.field private greylist-max-o mAllowParallelSyncs:Z

.field private final greylist-max-o mAutoInitialize:Z

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mISyncAdapterImpl:Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;

.field private final greylist-max-o mNumSyncStarts:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final greylist-max-o mSyncThreadLock:Ljava/lang/Object;

.field private final greylist-max-o mSyncThreads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/accounts/Account;",
            "Landroid/content/AbstractThreadedSyncAdapter$SyncThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAllowParallelSyncs(Landroid/content/AbstractThreadedSyncAdapter;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mAllowParallelSyncs:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAutoInitialize(Landroid/content/AbstractThreadedSyncAdapter;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mAutoInitialize:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/content/AbstractThreadedSyncAdapter;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumSyncStarts(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mNumSyncStarts:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSyncThreadLock(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreadLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSyncThreads(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreads:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnUnsyncableAccount(Landroid/content/AbstractThreadedSyncAdapter;Landroid/content/ISyncAdapterUnsyncableAccountCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/AbstractThreadedSyncAdapter;->handleOnUnsyncableAccount(Landroid/content/ISyncAdapterUnsyncableAccountCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtoSyncKey(Landroid/content/AbstractThreadedSyncAdapter;Landroid/accounts/Account;)Landroid/accounts/Account;
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/AbstractThreadedSyncAdapter;->toSyncKey(Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetENABLE_LOG()Z
    .registers 1

    sget-boolean v0, Landroid/content/AbstractThreadedSyncAdapter;->ENABLE_LOG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 115
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    const-string v0, "SyncAdapter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    sput-boolean v0, Landroid/content/AbstractThreadedSyncAdapter;->ENABLE_LOG:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Z)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoInitialize"    # Z

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;ZZ)V

    .line 139
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;ZZ)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoInitialize"    # Z
    .param p3, "allowParallelSyncs"    # Z

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreads:Ljava/util/HashMap;

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreadLock:Ljava/lang/Object;

    .line 155
    iput-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter;->mContext:Landroid/content/Context;

    .line 156
    new-instance v0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;-><init>(Landroid/content/AbstractThreadedSyncAdapter;Landroid/content/AbstractThreadedSyncAdapter-IA;)V

    iput-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mISyncAdapterImpl:Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;

    .line 157
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mNumSyncStarts:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 158
    iput-boolean p2, p0, Landroid/content/AbstractThreadedSyncAdapter;->mAutoInitialize:Z

    .line 159
    iput-boolean p3, p0, Landroid/content/AbstractThreadedSyncAdapter;->mAllowParallelSyncs:Z

    .line 160
    return-void
.end method

.method private greylist-max-o handleOnUnsyncableAccount(Landroid/content/ISyncAdapterUnsyncableAccountCallback;)V
    .registers 6
    .param p1, "cb"    # Landroid/content/ISyncAdapterUnsyncableAccountCallback;

    .line 417
    const-string v0, "SyncAdapter"

    :try_start_2
    invoke-virtual {p0}, Landroid/content/AbstractThreadedSyncAdapter;->onUnsyncableAccount()Z

    move-result v1
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_6} :catch_7

    .line 421
    .local v1, "doSync":Z
    goto :goto_f

    .line 418
    .end local v1    # "doSync":Z
    :catch_7
    move-exception v1

    .line 419
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "Exception while calling onUnsyncableAccount, assuming \'true\'"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    const/4 v2, 0x1

    move v1, v2

    .line 424
    .local v1, "doSync":Z
    :goto_f
    :try_start_f
    invoke-interface {p1, v1}, Landroid/content/ISyncAdapterUnsyncableAccountCallback;->onUnsyncableAccountDone(Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    .line 427
    goto :goto_19

    .line 425
    :catch_13
    move-exception v2

    .line 426
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Could not report result of onUnsyncableAccount"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_19
    return-void
.end method

.method private greylist-max-o toSyncKey(Landroid/accounts/Account;)Landroid/accounts/Account;
    .registers 3
    .param p1, "account"    # Landroid/accounts/Account;

    .line 167
    iget-boolean v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mAllowParallelSyncs:Z

    if-eqz v0, :cond_5

    .line 168
    return-object p1

    .line 170
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public whitelist getContext()Landroid/content/Context;
    .registers 2

    .line 163
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final whitelist getSyncAdapterBinder()Landroid/os/IBinder;
    .registers 2

    .line 406
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mISyncAdapterImpl:Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;

    invoke-virtual {v0}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
.end method

.method public whitelist onSecurityException(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/SyncResult;)V
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "syncResult"    # Landroid/content/SyncResult;

    .line 484
    return-void
.end method

.method public whitelist onSyncCanceled()V
    .registers 4

    .line 496
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 497
    :try_start_3
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreads:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    .line 498
    .local v1, "syncThread":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    .line 499
    if-eqz v1, :cond_12

    .line 500
    invoke-virtual {v1}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->interrupt()V

    .line 502
    :cond_12
    return-void

    .line 498
    .end local v1    # "syncThread":Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public whitelist onSyncCanceled(Ljava/lang/Thread;)V
    .registers 2
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 514
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 515
    return-void
.end method

.method public whitelist onUnsyncableAccount()Z
    .registers 2

    .line 454
    const/4 v0, 0x1

    return v0
.end method
