.class public Landroid/content/ContentProviderClient;
.super Ljava/lang/Object;
.source "ContentProviderClient.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentProviderClient$CursorWrapperInner;,
        Landroid/content/ContentProviderClient$NotRespondingRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentProviderClient"

.field private static sAnrHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "ContentProviderClient.class"
    .end annotation
.end field


# instance fields
.field private mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

.field private mAnrTimeout:J

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContentProvider:Landroid/content/IContentProvider;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mPackageName:Ljava/lang/String;

.field private final mStable:Z


# direct methods
.method static synthetic -get0(Landroid/content/ContentProviderClient;)Landroid/content/IContentProvider;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/content/ContentProviderClient;)Landroid/content/ContentResolver;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Z)V
    .locals 2
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentProvider"    # Landroid/content/IContentProvider;
    .param p3, "stable"    # Z

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@8
    iput-object v0, p0, Landroid/content/ContentProviderClient;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a
    .line 75
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/content/ContentProviderClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@10
    .line 84
    iput-object p1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@12
    .line 85
    iput-object p2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@14
    .line 86
    iget-object v0, p1, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    #@16
    iput-object v0, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    #@18
    .line 88
    iput-boolean p3, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@1a
    .line 90
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@1c
    const-string/jumbo v1, "close"

    #@1f
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@22
    .line 83
    return-void
.end method

.method private afterRemote()V
    .locals 2

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 119
    sget-object v0, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    #@6
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@b
    .line 117
    :cond_0
    return-void
.end method

.method private beforeRemote()V
    .locals 4

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 113
    sget-object v0, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    #@6
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    #@8
    iget-wide v2, p0, Landroid/content/ContentProviderClient;->mAnrTimeout:J

    #@a
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@d
    .line 111
    :cond_0
    return-void
.end method

.method private closeInternal()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 485
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@3
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@6
    .line 486
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@8
    const/4 v1, 0x1

    #@9
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 487
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 488
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@15
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@17
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@1a
    move-result v0

    #@1b
    return v0

    #@1c
    .line 490
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@1e
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@20
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    #@23
    move-result v0

    #@24
    return v0

    #@25
    .line 493
    :cond_1
    return v2
.end method

.method public static releaseQuietly(Landroid/content/ContentProviderClient;)V
    .locals 1
    .param p0, "client"    # Landroid/content/ContentProviderClient;

    #@0
    .prologue
    .line 522
    if-eqz p0, :cond_0

    #@2
    .line 524
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 521
    :cond_0
    :goto_0
    return-void

    #@6
    .line 525
    :catch_0
    move-exception v0

    #@7
    .local v0, "ignored":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    #@0
    .prologue
    .line 434
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string/jumbo v1, "operations"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 436
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    #@9
    .line 438
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@b
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    #@d
    invoke-interface {v1, v2, p1}, Landroid/content/IContentProvider;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result-object v1

    #@11
    .line 445
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@14
    .line 438
    return-object v1

    #@15
    .line 439
    :catch_0
    move-exception v0

    #@16
    .line 440
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@18
    if-nez v1, :cond_0

    #@1a
    .line 441
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@1c
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@1e
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@21
    .line 443
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    .line 444
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    #@23
    .line 445
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@26
    .line 444
    throw v1
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # [Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 258
    const-string/jumbo v1, "url"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 259
    const-string/jumbo v1, "initialValues"

    #@9
    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 261
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    #@f
    .line 263
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@11
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    #@13
    invoke-interface {v1, v2, p1, p2}, Landroid/content/IContentProvider;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result v1

    #@17
    .line 270
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@1a
    .line 263
    return v1

    #@1b
    .line 264
    :catch_0
    move-exception v0

    #@1c
    .line 265
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@1e
    if-nez v1, :cond_0

    #@20
    .line 266
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@22
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@24
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@27
    .line 268
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .line 269
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    #@29
    .line 270
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@2c
    .line 269
    throw v1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 452
    const-string/jumbo v1, "method"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 454
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    #@9
    .line 456
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@b
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    #@d
    invoke-interface {v1, v2, p1, p2, p3}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result-object v1

    #@11
    .line 463
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@14
    .line 456
    return-object v1

    #@15
    .line 457
    :catch_0
    move-exception v0

    #@16
    .line 458
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@18
    if-nez v1, :cond_0

    #@1a
    .line 459
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@1c
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@1e
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@21
    .line 461
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    .line 462
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    #@23
    .line 463
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@26
    .line 462
    throw v1
.end method

.method public final canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 205
    const-string/jumbo v1, "url"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 207
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    #@9
    .line 209
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@b
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    #@d
    invoke-interface {v1, v2, p1}, Landroid/content/IContentProvider;->canonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result-object v1

    #@11
    .line 216
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@14
    .line 209
    return-object v1

    #@15
    .line 210
    :catch_0
    move-exception v0

    #@16
    .line 211
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@18
    if-nez v1, :cond_0

    #@1a
    .line 212
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@1c
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@1e
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@21
    .line 214
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    .line 215
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    #@23
    .line 216
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@26
    .line 215
    throw v1
.end method

.method public close()V
    .locals 0

    #@0
    .prologue
    .line 473
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->closeInternal()Z

    #@3
    .line 472
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 277
    const-string/jumbo v1, "url"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 279
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    #@9
    .line 281
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@b
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    #@d
    invoke-interface {v1, v2, p1, p2, p3}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v1

    #@11
    .line 288
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@14
    .line 281
    return v1

    #@15
    .line 282
    :catch_0
    move-exception v0

    #@16
    .line 283
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@18
    if-nez v1, :cond_0

    #@1a
    .line 284
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@1c
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@1e
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@21
    .line 286
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    .line 287
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    #@23
    .line 288
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@26
    .line 287
    throw v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 500
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@2
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@5
    .line 501
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .line 503
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 498
    return-void

    #@c
    .line 502
    :catchall_0
    move-exception v0

    #@d
    .line 503
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@10
    .line 502
    throw v0
.end method

.method public getLocalContentProvider()Landroid/content/ContentProvider;
    .locals 1

    #@0
    .prologue
    .line 517
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@2
    invoke-static {v0}, Landroid/content/ContentProvider;->coerceToLocalContentProvider(Landroid/content/IContentProvider;)Landroid/content/ContentProvider;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 187
    const-string/jumbo v1, "url"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 188
    const-string/jumbo v1, "mimeTypeFilter"

    #@9
    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 190
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    #@f
    .line 192
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@11
    invoke-interface {v1, p1, p2}, Landroid/content/IContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-object v1

    #@15
    .line 199
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@18
    .line 192
    return-object v1

    #@19
    .line 193
    :catch_0
    move-exception v0

    #@1a
    .line 194
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@1c
    if-nez v1, :cond_0

    #@1e
    .line 195
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@20
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@22
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@25
    .line 197
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    .line 198
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    #@27
    .line 199
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@2a
    .line 198
    throw v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 169
    const-string/jumbo v1, "url"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 171
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    #@9
    .line 173
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@b
    invoke-interface {v1, p1}, Landroid/content/IContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v1

    #@f
    .line 180
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@12
    .line 173
    return-object v1

    #@13
    .line 174
    :catch_0
    move-exception v0

    #@14
    .line 175
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@16
    if-nez v1, :cond_0

    #@18
    .line 176
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@1a
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@1c
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@1f
    .line 178
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    .line 179
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    #@21
    .line 180
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@24
    .line 179
    throw v1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 240
    const-string/jumbo v1, "url"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 242
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    #@9
    .line 244
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@b
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    #@d
    invoke-interface {v1, v2, p1, p2}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result-object v1

    #@11
    .line 251
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@14
    .line 244
    return-object v1

    #@15
    .line 245
    :catch_0
    move-exception v0

    #@16
    .line 246
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@18
    if-nez v1, :cond_0

    #@1a
    .line 247
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@1c
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@1e
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@21
    .line 249
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    .line 250
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    #@23
    .line 251
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@26
    .line 250
    throw v1
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 362
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 374
    const-string/jumbo v2, "url"

    #@3
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 375
    const-string/jumbo v2, "mode"

    #@9
    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 377
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    #@f
    .line 379
    const/4 v1, 0x0

    #@10
    .line 380
    .local v1, "remoteSignal":Landroid/os/ICancellationSignal;
    if-eqz p3, :cond_0

    #@12
    .line 381
    :try_start_0
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    #@15
    .line 382
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@17
    invoke-interface {v2}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    #@1a
    move-result-object v1

    #@1b
    .line 383
    .local v1, "remoteSignal":Landroid/os/ICancellationSignal;
    invoke-virtual {p3, v1}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@1e
    .line 385
    .end local v1    # "remoteSignal":Landroid/os/ICancellationSignal;
    :cond_0
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@20
    iget-object v3, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    #@22
    invoke-interface {v2, v3, p1, p2, v1}, Landroid/content/IContentProvider;->openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result-object v2

    #@26
    .line 392
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@29
    .line 385
    return-object v2

    #@2a
    .line 386
    :catch_0
    move-exception v0

    #@2b
    .line 387
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v2, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@2d
    if-nez v2, :cond_1

    #@2f
    .line 388
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@31
    iget-object v3, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@33
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@36
    .line 390
    :cond_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    .line 391
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v2

    #@38
    .line 392
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@3b
    .line 391
    throw v2
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 319
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 331
    const-string/jumbo v0, "url"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 332
    const-string/jumbo v0, "mode"

    #@9
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 334
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    #@f
    .line 336
    const/4 v4, 0x0

    #@10
    .line 337
    .local v4, "remoteSignal":Landroid/os/ICancellationSignal;
    if-eqz p3, :cond_0

    #@12
    .line 338
    :try_start_0
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    #@15
    .line 339
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@17
    invoke-interface {v0}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    #@1a
    move-result-object v4

    #@1b
    .line 340
    .local v4, "remoteSignal":Landroid/os/ICancellationSignal;
    invoke-virtual {p3, v4}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@1e
    .line 342
    .end local v4    # "remoteSignal":Landroid/os/ICancellationSignal;
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@20
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    #@22
    const/4 v5, 0x0

    #@23
    move-object v2, p1

    #@24
    move-object v3, p2

    #@25
    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->openFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result-object v0

    #@29
    .line 349
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@2c
    .line 342
    return-object v0

    #@2d
    .line 343
    :catch_0
    move-exception v6

    #@2e
    .line 344
    .local v6, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@30
    if-nez v0, :cond_1

    #@32
    .line 345
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@34
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@36
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@39
    .line 347
    :cond_1
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    .line 348
    .end local v6    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v0

    #@3b
    .line 349
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@3e
    .line 348
    throw v0
.end method

.method public final openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 400
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentProviderClient;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public final openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 407
    const-string/jumbo v0, "uri"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 408
    const-string/jumbo v0, "mimeType"

    #@9
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 410
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    #@f
    .line 412
    const/4 v5, 0x0

    #@10
    .line 413
    .local v5, "remoteSignal":Landroid/os/ICancellationSignal;
    if-eqz p4, :cond_0

    #@12
    .line 414
    :try_start_0
    invoke-virtual {p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    #@15
    .line 415
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@17
    invoke-interface {v0}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    #@1a
    move-result-object v5

    #@1b
    .line 416
    .local v5, "remoteSignal":Landroid/os/ICancellationSignal;
    invoke-virtual {p4, v5}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@1e
    .line 418
    .end local v5    # "remoteSignal":Landroid/os/ICancellationSignal;
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@20
    .line 419
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    #@22
    move-object v2, p1

    #@23
    move-object v3, p2

    #@24
    move-object v4, p3

    #@25
    .line 418
    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result-object v0

    #@29
    .line 426
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@2c
    .line 418
    return-object v0

    #@2d
    .line 420
    :catch_0
    move-exception v6

    #@2e
    .line 421
    .local v6, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@30
    if-nez v0, :cond_1

    #@32
    .line 422
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@34
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@36
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@39
    .line 424
    :cond_1
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    .line 425
    .end local v6    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v0

    #@3b
    .line 426
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@3e
    .line 425
    throw v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 127
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 11
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 135
    const-string/jumbo v1, "url"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 137
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    #@9
    .line 139
    const/4 v8, 0x0

    #@a
    .line 140
    .local v8, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    if-eqz p6, :cond_0

    #@c
    .line 141
    :try_start_0
    invoke-virtual/range {p6 .. p6}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    #@f
    .line 142
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@11
    invoke-interface {v1}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    #@14
    move-result-object v8

    #@15
    .line 143
    .local v8, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    move-object/from16 v0, p6

    #@17
    invoke-virtual {v0, v8}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@1a
    .line 145
    .end local v8    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@1c
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    #@1e
    move-object v3, p1

    #@1f
    move-object v4, p2

    #@20
    move-object v5, p3

    #@21
    move-object v6, p4

    #@22
    move-object/from16 v7, p5

    #@24
    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    move-result-object v9

    #@28
    .line 147
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_1

    #@2a
    .line 148
    const/4 v1, 0x0

    #@2b
    .line 163
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@2e
    .line 148
    return-object v1

    #@2f
    .line 151
    :cond_1
    :try_start_1
    const-string/jumbo v1, "com.google.android.gms"

    #@32
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_2

    #@3a
    .line 163
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@3d
    .line 153
    return-object v9

    #@3e
    .line 155
    :cond_2
    :try_start_2
    new-instance v1, Landroid/content/ContentProviderClient$CursorWrapperInner;

    #@40
    invoke-direct {v1, p0, v9}, Landroid/content/ContentProviderClient$CursorWrapperInner;-><init>(Landroid/content/ContentProviderClient;Landroid/database/Cursor;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@43
    .line 163
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@46
    .line 155
    return-object v1

    #@47
    .line 157
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    #@48
    .line 158
    .local v10, "e":Landroid/os/DeadObjectException;
    :try_start_3
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@4a
    if-nez v1, :cond_3

    #@4c
    .line 159
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@4e
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@50
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@53
    .line 161
    :cond_3
    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@54
    .line 162
    .end local v10    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    #@55
    .line 163
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@58
    .line 162
    throw v1
.end method

.method public release()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 481
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->closeInternal()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public setDetectNotResponding(J)V
    .locals 5
    .param p1, "timeoutMillis"    # J

    #@0
    .prologue
    .line 95
    const-class v1, Landroid/content/ContentProviderClient;

    #@2
    monitor-enter v1

    #@3
    .line 96
    :try_start_0
    iput-wide p1, p0, Landroid/content/ContentProviderClient;->mAnrTimeout:J

    #@5
    .line 98
    const-wide/16 v2, 0x0

    #@7
    cmp-long v0, p1, v2

    #@9
    if-lez v0, :cond_2

    #@b
    .line 99
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    #@d
    if-nez v0, :cond_0

    #@f
    .line 100
    new-instance v0, Landroid/content/ContentProviderClient$NotRespondingRunnable;

    #@11
    const/4 v2, 0x0

    #@12
    invoke-direct {v0, p0, v2}, Landroid/content/ContentProviderClient$NotRespondingRunnable;-><init>(Landroid/content/ContentProviderClient;Landroid/content/ContentProviderClient$NotRespondingRunnable;)V

    #@15
    iput-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    #@17
    .line 102
    :cond_0
    sget-object v0, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    #@19
    if-nez v0, :cond_1

    #@1b
    .line 103
    new-instance v0, Landroid/os/Handler;

    #@1d
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@20
    move-result-object v2

    #@21
    const/4 v3, 0x0

    #@22
    const/4 v4, 0x1

    #@23
    invoke-direct {v0, v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@26
    sput-object v0, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    :cond_1
    :goto_0
    monitor-exit v1

    #@29
    .line 94
    return-void

    #@2a
    .line 106
    :cond_2
    const/4 v0, 0x0

    #@2b
    :try_start_1
    iput-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 95
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit v1

    #@30
    throw v0
.end method

.method public final uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 222
    const-string/jumbo v1, "url"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 224
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    #@9
    .line 226
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@b
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    #@d
    invoke-interface {v1, v2, p1}, Landroid/content/IContentProvider;->uncanonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result-object v1

    #@11
    .line 233
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@14
    .line 226
    return-object v1

    #@15
    .line 227
    :catch_0
    move-exception v0

    #@16
    .line 228
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@18
    if-nez v1, :cond_0

    #@1a
    .line 229
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@1c
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@1e
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@21
    .line 231
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    .line 232
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    #@23
    .line 233
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@26
    .line 232
    throw v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 295
    const-string/jumbo v0, "url"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 297
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    #@9
    .line 299
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@b
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    #@d
    move-object v2, p1

    #@e
    move-object v3, p2

    #@f
    move-object v4, p3

    #@10
    move-object v5, p4

    #@11
    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v0

    #@15
    .line 306
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@18
    .line 299
    return v0

    #@19
    .line 300
    :catch_0
    move-exception v6

    #@1a
    .line 301
    .local v6, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@1c
    if-nez v0, :cond_0

    #@1e
    .line 302
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@20
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@22
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@25
    .line 304
    :cond_0
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    .line 305
    .end local v6    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v0

    #@27
    .line 306
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@2a
    .line 305
    throw v0
.end method
