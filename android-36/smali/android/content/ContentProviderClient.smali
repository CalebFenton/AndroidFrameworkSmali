.class public Landroid/content/ContentProviderClient;
.super Ljava/lang/Object;
.source "ContentProviderClient.java"

# interfaces
.implements Landroid/content/ContentInterface;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentProviderClient$NotRespondingRunnable;,
        Landroid/content/ContentProviderClient$CursorWrapperInner;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "ContentProviderClient"

.field private static greylist-max-o sAnrHandler:Landroid/os/Handler;


# instance fields
.field private greylist-max-o mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

.field private greylist-max-o mAnrTimeout:J

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mAuthority:Ljava/lang/String;

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final greylist mContentProvider:Landroid/content/IContentProvider;

.field private final greylist-max-o mContentResolver:Landroid/content/ContentResolver;

.field private final greylist-max-p mPackageName:Ljava/lang/String;

.field private final greylist-max-o mStable:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContentProvider(Landroid/content/ContentProviderClient;)Landroid/content/IContentProvider;
    .registers 1

    iget-object p0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContentResolver(Landroid/content/ContentProviderClient;)Landroid/content/ContentResolver;
    .registers 1

    iget-object p0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentProvider"    # Landroid/content/IContentProvider;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "stable"    # Z

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProviderClient;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 104
    iput-object p1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    .line 105
    iput-object p2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    .line 106
    iget-object v0, p1, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 109
    iput-object p3, p0, Landroid/content/ContentProviderClient;->mAuthority:Ljava/lang/String;

    .line 110
    iput-boolean p4, p0, Landroid/content/ContentProviderClient;->mStable:Z

    .line 112
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "ContentProviderClient.close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Z)V
    .registers 5
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentProvider"    # Landroid/content/IContentProvider;
    .param p3, "stable"    # Z

    .line 98
    const-string/jumbo v0, "unknown"

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/content/ContentProviderClient;-><init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Ljava/lang/String;Z)V

    .line 99
    return-void
.end method

.method private greylist-max-o afterRemote()V
    .registers 3

    .line 159
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    if-eqz v0, :cond_b

    .line 160
    sget-object v0, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 162
    :cond_b
    return-void
.end method

.method private greylist-max-o beforeRemote()V
    .registers 5

    .line 153
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    if-eqz v0, :cond_d

    .line 154
    sget-object v0, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    iget-wide v2, p0, Landroid/content/ContentProviderClient;->mAnrTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    :cond_d
    return-void
.end method

.method private greylist-max-o closeInternal()Z
    .registers 4

    .line 631
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 632
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 635
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentProviderClient;->setDetectNotResponding(J)V

    .line 637
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-eqz v0, :cond_21

    .line 638
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    move-result v0

    return v0

    .line 640
    :cond_21
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    move-result v0

    return v0

    .line 643
    :cond_2a
    return v2
.end method

.method public static blacklist closeQuietly(Landroid/content/ContentProviderClient;)V
    .registers 1
    .param p0, "client"    # Landroid/content/ContentProviderClient;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 676
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 677
    return-void
.end method

.method public static greylist-max-o releaseQuietly(Landroid/content/ContentProviderClient;)V
    .registers 1
    .param p0, "client"    # Landroid/content/ContentProviderClient;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 682
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 683
    return-void
.end method


# virtual methods
.method public whitelist applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 6
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
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

    .line 570
    .local p2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string/jumbo v0, "operations"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 572
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 574
    :try_start_9
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/IContentProvider;->applyBatch(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_11} :catch_17
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    .line 582
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 574
    return-object v0

    .line 582
    :catchall_15
    move-exception v0

    goto :goto_25

    .line 576
    :catch_17
    move-exception v0

    .line 577
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_18
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_23

    .line 578
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 580
    :cond_23
    nop

    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p1    # "authority":Ljava/lang/String;
    .end local p2    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    throw v0
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_15

    .line 582
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p1    # "authority":Ljava/lang/String;
    .restart local p2    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_25
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 583
    throw v0
.end method

.method public whitelist applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
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

    .line 562
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mAuthority:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 6
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # [Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 364
    const-string/jumbo v0, "initialValues"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 366
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 368
    :try_start_f
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/IContentProvider;->bulkInsert(Landroid/content/AttributionSource;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0
    :try_end_17
    .catch Landroid/os/DeadObjectException; {:try_start_f .. :try_end_17} :catch_1d
    .catchall {:try_start_f .. :try_end_17} :catchall_1b

    .line 375
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 368
    return v0

    .line 375
    :catchall_1b
    move-exception v0

    goto :goto_2b

    .line 369
    :catch_1d
    move-exception v0

    .line 370
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1e
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_29

    .line 371
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 373
    :cond_29
    nop

    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p1    # "url":Landroid/net/Uri;
    .end local p2    # "initialValues":[Landroid/content/ContentValues;
    throw v0
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_1b

    .line 375
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p1    # "url":Landroid/net/Uri;
    .restart local p2    # "initialValues":[Landroid/content/ContentValues;
    :goto_2b
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 376
    throw v0
.end method

.method public whitelist call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 589
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mAuthority:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 12
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 596
    const-string v0, "authority"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 597
    const-string/jumbo v0, "method"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 599
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 601
    :try_start_e
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;
    :try_end_12
    .catch Landroid/os/DeadObjectException; {:try_start_e .. :try_end_12} :catch_28
    .catchall {:try_start_e .. :try_end_12} :catchall_21

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "authority":Ljava/lang/String;
    .end local p2    # "method":Ljava/lang/String;
    .end local p3    # "arg":Ljava/lang/String;
    .end local p4    # "extras":Landroid/os/Bundle;
    .local v3, "authority":Ljava/lang/String;
    .local v4, "method":Ljava/lang/String;
    .local v5, "arg":Ljava/lang/String;
    .local v6, "extras":Landroid/os/Bundle;
    :try_start_16
    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_1a
    .catch Landroid/os/DeadObjectException; {:try_start_16 .. :try_end_1a} :catch_1e
    .catchall {:try_start_16 .. :try_end_1a} :catchall_3b

    .line 609
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 601
    return-object p1

    .line 603
    :catch_1e
    move-exception v0

    move-object p1, v0

    goto :goto_2e

    .line 609
    .end local v3    # "authority":Ljava/lang/String;
    .end local v4    # "method":Ljava/lang/String;
    .end local v5    # "arg":Ljava/lang/String;
    .end local v6    # "extras":Landroid/os/Bundle;
    .restart local p1    # "authority":Ljava/lang/String;
    .restart local p2    # "method":Ljava/lang/String;
    .restart local p3    # "arg":Ljava/lang/String;
    .restart local p4    # "extras":Landroid/os/Bundle;
    :catchall_21
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object p1, v0

    .end local p1    # "authority":Ljava/lang/String;
    .end local p2    # "method":Ljava/lang/String;
    .end local p3    # "arg":Ljava/lang/String;
    .end local p4    # "extras":Landroid/os/Bundle;
    .restart local v3    # "authority":Ljava/lang/String;
    .restart local v4    # "method":Ljava/lang/String;
    .restart local v5    # "arg":Ljava/lang/String;
    .restart local v6    # "extras":Landroid/os/Bundle;
    goto :goto_3d

    .line 603
    .end local v3    # "authority":Ljava/lang/String;
    .end local v4    # "method":Ljava/lang/String;
    .end local v5    # "arg":Ljava/lang/String;
    .end local v6    # "extras":Landroid/os/Bundle;
    .restart local p1    # "authority":Ljava/lang/String;
    .restart local p2    # "method":Ljava/lang/String;
    .restart local p3    # "arg":Ljava/lang/String;
    .restart local p4    # "extras":Landroid/os/Bundle;
    :catch_28
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object p1, v0

    .line 604
    .end local p2    # "method":Ljava/lang/String;
    .end local p3    # "arg":Ljava/lang/String;
    .end local p4    # "extras":Landroid/os/Bundle;
    .restart local v3    # "authority":Ljava/lang/String;
    .restart local v4    # "method":Ljava/lang/String;
    .restart local v5    # "arg":Ljava/lang/String;
    .restart local v6    # "extras":Landroid/os/Bundle;
    .local p1, "e":Landroid/os/DeadObjectException;
    :goto_2e
    :try_start_2e
    iget-boolean p2, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez p2, :cond_39

    .line 605
    iget-object p2, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p3, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {p2, p3}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 607
    :cond_39
    nop

    .end local v3    # "authority":Ljava/lang/String;
    .end local v4    # "method":Ljava/lang/String;
    .end local v5    # "arg":Ljava/lang/String;
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local p0    # "this":Landroid/content/ContentProviderClient;
    throw p1
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_3b

    .line 609
    .end local p1    # "e":Landroid/os/DeadObjectException;
    .restart local v3    # "authority":Ljava/lang/String;
    .restart local v4    # "method":Ljava/lang/String;
    .restart local v5    # "arg":Ljava/lang/String;
    .restart local v6    # "extras":Landroid/os/Bundle;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    :catchall_3b
    move-exception v0

    move-object p1, v0

    :goto_3d
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 610
    throw p1
.end method

.method public final whitelist canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .param p1, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 256
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 258
    :try_start_9
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1}, Landroid/content/IContentProvider;->canonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_11} :catch_17
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    .line 265
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 258
    return-object v0

    .line 265
    :catchall_15
    move-exception v0

    goto :goto_25

    .line 259
    :catch_17
    move-exception v0

    .line 260
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_18
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_23

    .line 261
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 263
    :cond_23
    nop

    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p1    # "url":Landroid/net/Uri;
    throw v0
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_15

    .line 265
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p1    # "url":Landroid/net/Uri;
    :goto_25
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 266
    throw v0
.end method

.method public blacklist checkUriPermission(Landroid/net/Uri;II)I
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "uid"    # I
    .param p3, "modeFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 319
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 321
    :try_start_9
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/content/IContentProvider;->checkUriPermission(Landroid/content/AttributionSource;Landroid/net/Uri;II)I

    move-result v0
    :try_end_11
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_11} :catch_17
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    .line 329
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 321
    return v0

    .line 329
    :catchall_15
    move-exception v0

    goto :goto_25

    .line 323
    :catch_17
    move-exception v0

    .line 324
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_18
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_23

    .line 325
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 327
    :cond_23
    nop

    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "uid":I
    .end local p3    # "modeFlags":I
    throw v0
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_15

    .line 329
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "uid":I
    .restart local p3    # "modeFlags":I
    :goto_25
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 330
    throw v0
.end method

.method public whitelist test-api close()V
    .registers 1

    .line 619
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->closeInternal()Z

    .line 620
    return-void
.end method

.method public whitelist delete(Landroid/net/Uri;Landroid/os/Bundle;)I
    .registers 6
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 388
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 390
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 392
    :try_start_9
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/IContentProvider;->delete(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result v0
    :try_end_11
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_11} :catch_17
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    .line 399
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 392
    return v0

    .line 399
    :catchall_15
    move-exception v0

    goto :goto_25

    .line 393
    :catch_17
    move-exception v0

    .line 394
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_18
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_23

    .line 395
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 397
    :cond_23
    nop

    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p1    # "url":Landroid/net/Uri;
    .end local p2    # "extras":Landroid/os/Bundle;
    throw v0
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_15

    .line 399
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p1    # "url":Landroid/net/Uri;
    .restart local p2    # "extras":Landroid/os/Bundle;
    :goto_25
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 400
    throw v0
.end method

.method public whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 382
    invoke-static {p2, p3}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 650
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 651
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 654
    :cond_9
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 656
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 657
    nop

    .line 658
    return-void

    .line 656
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 657
    throw v0
.end method

.method public whitelist getLocalContentProvider()Landroid/content/ContentProvider;
    .registers 2

    .line 670
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-static {v0}, Landroid/content/ContentProvider;->coerceToLocalContentProvider(Landroid/content/IContentProvider;)Landroid/content/ContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    const-string/jumbo v0, "mimeTypeFilter"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 238
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 240
    :try_start_f
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/IContentProvider;->getStreamTypes(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Landroid/os/DeadObjectException; {:try_start_f .. :try_end_17} :catch_1d
    .catchall {:try_start_f .. :try_end_17} :catchall_1b

    .line 247
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 240
    return-object v0

    .line 247
    :catchall_1b
    move-exception v0

    goto :goto_2b

    .line 241
    :catch_1d
    move-exception v0

    .line 242
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1e
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_29

    .line 243
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 245
    :cond_29
    nop

    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p1    # "url":Landroid/net/Uri;
    .end local p2    # "mimeTypeFilter":Ljava/lang/String;
    throw v0
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_1b

    .line 247
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p1    # "url":Landroid/net/Uri;
    .restart local p2    # "mimeTypeFilter":Ljava/lang/String;
    :goto_2b
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 248
    throw v0
.end method

.method public whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p1, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 218
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 220
    :try_start_9
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1}, Landroid/content/IContentProvider;->getType(Landroid/content/AttributionSource;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_11} :catch_17
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    .line 227
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 220
    return-object v0

    .line 227
    :catchall_15
    move-exception v0

    goto :goto_25

    .line 221
    :catch_17
    move-exception v0

    .line 222
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_18
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_23

    .line 223
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 225
    :cond_23
    nop

    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p1    # "url":Landroid/net/Uri;
    throw v0
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_15

    .line 227
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p1    # "url":Landroid/net/Uri;
    :goto_25
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 228
    throw v0
.end method

.method public whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 336
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;
    .registers 7
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 345
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 347
    :try_start_9
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/content/IContentProvider;->insert(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_11} :catch_17
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    .line 355
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 347
    return-object v0

    .line 355
    :catchall_15
    move-exception v0

    goto :goto_25

    .line 349
    :catch_17
    move-exception v0

    .line 350
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_18
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_23

    .line 351
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 353
    :cond_23
    nop

    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p1    # "url":Landroid/net/Uri;
    .end local p2    # "initialValues":Landroid/content/ContentValues;
    .end local p3    # "extras":Landroid/os/Bundle;
    throw v0
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_15

    .line 355
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p1    # "url":Landroid/net/Uri;
    .restart local p2    # "initialValues":Landroid/content/ContentValues;
    .restart local p3    # "extras":Landroid/os/Bundle;
    :goto_25
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 356
    throw v0
.end method

.method public whitelist openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 4
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 481
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 7
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 494
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 495
    const-string/jumbo v0, "mode"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 497
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, "remoteSignal":Landroid/os/ICancellationSignal;
    if-eqz p3, :cond_1f

    .line 501
    :try_start_12
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 502
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v1

    move-object v0, v1

    .line 503
    invoke-virtual {p3, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 505
    :cond_1f
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, p1, p2, v0}, Landroid/content/IContentProvider;->openAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1
    :try_end_27
    .catch Landroid/os/DeadObjectException; {:try_start_12 .. :try_end_27} :catch_2d
    .catchall {:try_start_12 .. :try_end_27} :catchall_2b

    .line 513
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 505
    return-object v1

    .line 513
    .end local v0    # "remoteSignal":Landroid/os/ICancellationSignal;
    :catchall_2b
    move-exception v0

    goto :goto_3b

    .line 507
    :catch_2d
    move-exception v0

    .line 508
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_2e
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_39

    .line 509
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 511
    :cond_39
    nop

    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p1    # "url":Landroid/net/Uri;
    .end local p2    # "mode":Ljava/lang/String;
    .end local p3    # "signal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_2b

    .line 513
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p1    # "url":Landroid/net/Uri;
    .restart local p2    # "mode":Ljava/lang/String;
    .restart local p3    # "signal":Landroid/os/CancellationSignal;
    :goto_3b
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 514
    throw v0
.end method

.method public whitelist openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 437
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 450
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 451
    const-string/jumbo v0, "mode"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 453
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, "remoteSignal":Landroid/os/ICancellationSignal;
    if-eqz p3, :cond_1f

    .line 457
    :try_start_12
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 458
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v1

    move-object v0, v1

    .line 459
    invoke-virtual {p3, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 461
    :cond_1f
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, p1, p2, v0}, Landroid/content/IContentProvider;->openFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_27
    .catch Landroid/os/DeadObjectException; {:try_start_12 .. :try_end_27} :catch_2d
    .catchall {:try_start_12 .. :try_end_27} :catchall_2b

    .line 468
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 461
    return-object v1

    .line 468
    .end local v0    # "remoteSignal":Landroid/os/ICancellationSignal;
    :catchall_2b
    move-exception v0

    goto :goto_3b

    .line 462
    :catch_2d
    move-exception v0

    .line 463
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_2e
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_39

    .line 464
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 466
    :cond_39
    nop

    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p1    # "url":Landroid/net/Uri;
    .end local p2    # "mode":Ljava/lang/String;
    .end local p3    # "signal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_2b

    .line 468
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p1    # "url":Landroid/net/Uri;
    .restart local p2    # "mode":Ljava/lang/String;
    .restart local p3    # "signal":Landroid/os/CancellationSignal;
    :goto_3b
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 469
    throw v0
.end method

.method public final whitelist openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 535
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 536
    const-string/jumbo v0, "mimeTypeFilter"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 538
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 540
    const/4 v0, 0x0

    .line 541
    .local v0, "remoteSignal":Landroid/os/ICancellationSignal;
    if-eqz p4, :cond_2b

    .line 542
    :try_start_12
    invoke-virtual {p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 543
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v1

    move-object v0, v1

    .line 544
    invoke-virtual {p4, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V
    :try_end_1f
    .catch Landroid/os/DeadObjectException; {:try_start_12 .. :try_end_1f} :catch_26
    .catchall {:try_start_12 .. :try_end_1f} :catchall_21

    move-object v6, v0

    goto :goto_2c

    .line 554
    .end local v0    # "remoteSignal":Landroid/os/ICancellationSignal;
    :catchall_21
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    goto :goto_54

    .line 548
    :catch_26
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    goto :goto_46

    .line 541
    .restart local v0    # "remoteSignal":Landroid/os/ICancellationSignal;
    :cond_2b
    move-object v6, v0

    .line 546
    .end local v0    # "remoteSignal":Landroid/os/ICancellationSignal;
    .local v6, "remoteSignal":Landroid/os/ICancellationSignal;
    :goto_2c
    :try_start_2c
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;
    :try_end_30
    .catch Landroid/os/DeadObjectException; {:try_start_2c .. :try_end_30} :catch_42
    .catchall {:try_start_2c .. :try_end_30} :catchall_3d

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mimeTypeFilter":Ljava/lang/String;
    .end local p3    # "opts":Landroid/os/Bundle;
    .local v3, "uri":Landroid/net/Uri;
    .local v4, "mimeTypeFilter":Ljava/lang/String;
    .local v5, "opts":Landroid/os/Bundle;
    :try_start_33
    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->openTypedAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_37
    .catch Landroid/os/DeadObjectException; {:try_start_33 .. :try_end_37} :catch_3b
    .catchall {:try_start_33 .. :try_end_37} :catchall_53

    .line 554
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 546
    return-object p1

    .line 548
    .end local v6    # "remoteSignal":Landroid/os/ICancellationSignal;
    :catch_3b
    move-exception v0

    goto :goto_46

    .line 554
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "mimeTypeFilter":Ljava/lang/String;
    .end local v5    # "opts":Landroid/os/Bundle;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mimeTypeFilter":Ljava/lang/String;
    .restart local p3    # "opts":Landroid/os/Bundle;
    :catchall_3d
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mimeTypeFilter":Ljava/lang/String;
    .end local p3    # "opts":Landroid/os/Bundle;
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v4    # "mimeTypeFilter":Ljava/lang/String;
    .restart local v5    # "opts":Landroid/os/Bundle;
    goto :goto_54

    .line 548
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "mimeTypeFilter":Ljava/lang/String;
    .end local v5    # "opts":Landroid/os/Bundle;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mimeTypeFilter":Ljava/lang/String;
    .restart local p3    # "opts":Landroid/os/Bundle;
    :catch_42
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 549
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mimeTypeFilter":Ljava/lang/String;
    .end local p3    # "opts":Landroid/os/Bundle;
    .local v0, "e":Landroid/os/DeadObjectException;
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v4    # "mimeTypeFilter":Ljava/lang/String;
    .restart local v5    # "opts":Landroid/os/Bundle;
    :goto_46
    :try_start_46
    iget-boolean p1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez p1, :cond_51

    .line 550
    iget-object p1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 552
    :cond_51
    nop

    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "mimeTypeFilter":Ljava/lang/String;
    .end local v5    # "opts":Landroid/os/Bundle;
    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p4    # "signal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_53
    .catchall {:try_start_46 .. :try_end_53} :catchall_53

    .line 554
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v4    # "mimeTypeFilter":Ljava/lang/String;
    .restart local v5    # "opts":Landroid/os/Bundle;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p4    # "signal":Landroid/os/CancellationSignal;
    :catchall_53
    move-exception v0

    :goto_54
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 555
    throw v0
.end method

.method public final whitelist openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 521
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentProviderClient;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 6
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

    .line 528
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/ContentProviderClient;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "queryArgs"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 188
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    if-eqz p4, :cond_25

    .line 192
    :try_start_c
    invoke-virtual {p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 193
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v1

    move-object v0, v1

    .line 194
    invoke-virtual {p4, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V
    :try_end_19
    .catch Landroid/os/DeadObjectException; {:try_start_c .. :try_end_19} :catch_20
    .catchall {:try_start_c .. :try_end_19} :catchall_1b

    move-object v6, v0

    goto :goto_26

    .line 209
    .end local v0    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    :catchall_1b
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    goto :goto_5b

    .line 203
    :catch_20
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    goto :goto_4d

    .line 191
    .restart local v0    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    :cond_25
    move-object v6, v0

    .line 196
    .end local v0    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    .local v6, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    :goto_26
    :try_start_26
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;
    :try_end_2a
    .catch Landroid/os/DeadObjectException; {:try_start_26 .. :try_end_2a} :catch_49
    .catchall {:try_start_26 .. :try_end_2a} :catchall_44

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "projection":[Ljava/lang/String;
    .end local p3    # "queryArgs":Landroid/os/Bundle;
    .local v3, "uri":Landroid/net/Uri;
    .local v4, "projection":[Ljava/lang/String;
    .local v5, "queryArgs":Landroid/os/Bundle;
    :try_start_2d
    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_31
    .catch Landroid/os/DeadObjectException; {:try_start_2d .. :try_end_31} :catch_42
    .catchall {:try_start_2d .. :try_end_31} :catchall_5a

    .line 199
    .local p1, "cursor":Landroid/database/Cursor;
    if-nez p1, :cond_39

    .line 200
    nop

    .line 209
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 200
    const/4 p2, 0x0

    return-object p2

    .line 202
    :cond_39
    :try_start_39
    new-instance p2, Landroid/content/ContentProviderClient$CursorWrapperInner;

    invoke-direct {p2, p0, p1}, Landroid/content/ContentProviderClient$CursorWrapperInner;-><init>(Landroid/content/ContentProviderClient;Landroid/database/Cursor;)V
    :try_end_3e
    .catch Landroid/os/DeadObjectException; {:try_start_39 .. :try_end_3e} :catch_42
    .catchall {:try_start_39 .. :try_end_3e} :catchall_5a

    .line 209
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 202
    return-object p2

    .line 203
    .end local v6    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    .end local p1    # "cursor":Landroid/database/Cursor;
    :catch_42
    move-exception v0

    goto :goto_4d

    .line 209
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v5    # "queryArgs":Landroid/os/Bundle;
    .local p1, "uri":Landroid/net/Uri;
    .restart local p2    # "projection":[Ljava/lang/String;
    .restart local p3    # "queryArgs":Landroid/os/Bundle;
    :catchall_44
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "projection":[Ljava/lang/String;
    .end local p3    # "queryArgs":Landroid/os/Bundle;
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v4    # "projection":[Ljava/lang/String;
    .restart local v5    # "queryArgs":Landroid/os/Bundle;
    goto :goto_5b

    .line 203
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v5    # "queryArgs":Landroid/os/Bundle;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "projection":[Ljava/lang/String;
    .restart local p3    # "queryArgs":Landroid/os/Bundle;
    :catch_49
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 204
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "projection":[Ljava/lang/String;
    .end local p3    # "queryArgs":Landroid/os/Bundle;
    .local v0, "e":Landroid/os/DeadObjectException;
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v4    # "projection":[Ljava/lang/String;
    .restart local v5    # "queryArgs":Landroid/os/Bundle;
    :goto_4d
    :try_start_4d
    iget-boolean p1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez p1, :cond_58

    .line 205
    iget-object p1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 207
    :cond_58
    nop

    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v5    # "queryArgs":Landroid/os/Bundle;
    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_5a
    .catchall {:try_start_4d .. :try_end_5a} :catchall_5a

    .line 209
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v4    # "projection":[Ljava/lang/String;
    .restart local v5    # "queryArgs":Landroid/os/Bundle;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_5a
    move-exception v0

    :goto_5b
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 210
    throw v0
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
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

    .line 168
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "url":Landroid/net/Uri;
    .end local p2    # "projection":[Ljava/lang/String;
    .end local p3    # "selection":Ljava/lang/String;
    .end local p4    # "selectionArgs":[Ljava/lang/String;
    .end local p5    # "sortOrder":Ljava/lang/String;
    .local v1, "url":Landroid/net/Uri;
    .local v2, "projection":[Ljava/lang/String;
    .local v3, "selection":Ljava/lang/String;
    .local v4, "selectionArgs":[Ljava/lang/String;
    .local v5, "sortOrder":Ljava/lang/String;
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;
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

    .line 176
    nop

    .line 177
    invoke-static {p3, p4, p5}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 178
    .local v0, "queryArgs":Landroid/os/Bundle;
    invoke-virtual {p0, p1, p2, v0, p6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public whitelist refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z
    .registers 7
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 293
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    if-eqz p3, :cond_19

    .line 297
    :try_start_c
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 298
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v1

    move-object v0, v1

    .line 299
    invoke-virtual {p3, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 301
    :cond_19
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, p1, p2, v0}, Landroid/content/IContentProvider;->refresh(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Z

    move-result v1
    :try_end_21
    .catch Landroid/os/DeadObjectException; {:try_start_c .. :try_end_21} :catch_27
    .catchall {:try_start_c .. :try_end_21} :catchall_25

    .line 309
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 301
    return v1

    .line 309
    .end local v0    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    :catchall_25
    move-exception v0

    goto :goto_35

    .line 303
    :catch_27
    move-exception v0

    .line 304
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_28
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_33

    .line 305
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 307
    :cond_33
    nop

    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p1    # "url":Landroid/net/Uri;
    .end local p2    # "extras":Landroid/os/Bundle;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_25

    .line 309
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p1    # "url":Landroid/net/Uri;
    .restart local p2    # "extras":Landroid/os/Bundle;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_35
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 310
    throw v0
.end method

.method public whitelist release()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 627
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->closeInternal()Z

    move-result v0

    return v0
.end method

.method public whitelist setDetectNotResponding(J)V
    .registers 8
    .param p1, "timeoutMillis"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 128
    const-class v0, Landroid/content/ContentProviderClient;

    monitor-enter v0

    .line 129
    :try_start_3
    iput-wide p1, p0, Landroid/content/ContentProviderClient;->mAnrTimeout:J

    .line 131
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    if-lez v1, :cond_31

    .line 132
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    if-nez v1, :cond_17

    .line 133
    new-instance v1, Landroid/content/ContentProviderClient$NotRespondingRunnable;

    invoke-direct {v1, p0, v2}, Landroid/content/ContentProviderClient$NotRespondingRunnable;-><init>(Landroid/content/ContentProviderClient;Landroid/content/ContentProviderClient-IA;)V

    iput-object v1, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    .line 135
    :cond_17
    sget-object v1, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    if-nez v1, :cond_27

    .line 136
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    sput-object v1, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    .line 141
    :cond_27
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    goto :goto_3c

    .line 143
    :cond_31
    iput-object v2, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    .line 147
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->defaultBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 149
    :goto_3c
    monitor-exit v0

    .line 150
    return-void

    .line 149
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public final whitelist uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .param p1, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 274
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 276
    :try_start_9
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1}, Landroid/content/IContentProvider;->uncanonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_11} :catch_17
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    .line 283
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 276
    return-object v0

    .line 283
    :catchall_15
    move-exception v0

    goto :goto_25

    .line 277
    :catch_17
    move-exception v0

    .line 278
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_18
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_23

    .line 279
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 281
    :cond_23
    nop

    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p1    # "url":Landroid/net/Uri;
    throw v0
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_15

    .line 283
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p1    # "url":Landroid/net/Uri;
    :goto_25
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 284
    throw v0
.end method

.method public whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I
    .registers 7
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 415
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 417
    :try_start_9
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/content/IContentProvider;->update(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v0
    :try_end_11
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_11} :catch_17
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    .line 424
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 417
    return v0

    .line 424
    :catchall_15
    move-exception v0

    goto :goto_25

    .line 418
    :catch_17
    move-exception v0

    .line 419
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_18
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_23

    .line 420
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 422
    :cond_23
    nop

    .end local p0    # "this":Landroid/content/ContentProviderClient;
    .end local p1    # "url":Landroid/net/Uri;
    .end local p2    # "values":Landroid/content/ContentValues;
    .end local p3    # "extras":Landroid/os/Bundle;
    throw v0
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_15

    .line 424
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local p0    # "this":Landroid/content/ContentProviderClient;
    .restart local p1    # "url":Landroid/net/Uri;
    .restart local p2    # "values":Landroid/content/ContentValues;
    .restart local p3    # "extras":Landroid/os/Bundle;
    :goto_25
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    .line 425
    throw v0
.end method

.method public whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 406
    invoke-static {p3, p4}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method
