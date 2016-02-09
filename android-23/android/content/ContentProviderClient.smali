.class public Landroid/content/ContentProviderClient;
.super Ljava/lang/Object;
.source "ContentProviderClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field private final mContentProvider:Landroid/content/IContentProvider;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mGuard:Ldalvik/system/CloseGuard;

.field private final mPackageName:Ljava/lang/String;

.field private mReleased:Z

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

.method constructor <init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Z)V
    .locals 2
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentProvider"    # Landroid/content/IContentProvider;
    .param p3, "stable"    # Z

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/content/ContentProviderClient;->mGuard:Ldalvik/system/CloseGuard;

    #@9
    .line 76
    iput-object p1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@b
    .line 77
    iput-object p2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@d
    .line 78
    iget-object v0, p1, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    #@f
    iput-object v0, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    #@11
    .line 79
    iput-boolean p3, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@13
    .line 81
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mGuard:Ldalvik/system/CloseGuard;

    #@15
    const-string/jumbo v1, "release"

    #@18
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@1b
    .line 75
    return-void
.end method

.method private afterRemote()V
    .locals 2

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 110
    sget-object v0, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    #@6
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@b
    .line 108
    :cond_0
    return-void
.end method

.method private beforeRemote()V
    .locals 4

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 104
    sget-object v0, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    #@6
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    #@8
    iget-wide v2, p0, Landroid/content/ContentProviderClient;->mAnrTimeout:J

    #@a
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@d
    .line 102
    :cond_0
    return-void
.end method

.method public static releaseQuietly(Landroid/content/ContentProviderClient;)V
    .locals 1
    .param p0, "client"    # Landroid/content/ContentProviderClient;

    #@0
    .prologue
    .line 490
    if-eqz p0, :cond_0

    #@2
    .line 492
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 489
    :cond_0
    :goto_0
    return-void

    #@6
    .line 493
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
    .line 415
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string/jumbo v1, "operations"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 417
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    #@9
    .line 419
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
    .line 426
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@14
    .line 419
    return-object v1

    #@15
    .line 420
    :catch_0
    move-exception v0

    #@16
    .line 421
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@18
    if-nez v1, :cond_0

    #@1a
    .line 422
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@1c
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@1e
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@21
    .line 424
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    .line 425
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    #@23
    .line 426
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@26
    .line 425
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
    .line 239
    const-string/jumbo v1, "url"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 240
    const-string/jumbo v1, "initialValues"

    #@9
    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 242
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    #@f
    .line 244
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
    .line 251
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@1a
    .line 244
    return v1

    #@1b
    .line 245
    :catch_0
    move-exception v0

    #@1c
    .line 246
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@1e
    if-nez v1, :cond_0

    #@20
    .line 247
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@22
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@24
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@27
    .line 249
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .line 250
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    #@29
    .line 251
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@2c
    .line 250
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
    .line 433
    const-string/jumbo v1, "method"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 435
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    #@9
    .line 437
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
    .line 444
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@14
    .line 437
    return-object v1

    #@15
    .line 438
    :catch_0
    move-exception v0

    #@16
    .line 439
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@18
    if-nez v1, :cond_0

    #@1a
    .line 440
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@1c
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@1e
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@21
    .line 442
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    .line 443
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    #@23
    .line 444
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@26
    .line 443
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
    .line 186
    const-string/jumbo v1, "url"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 188
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    #@9
    .line 190
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
    .line 197
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@14
    .line 190
    return-object v1

    #@15
    .line 191
    :catch_0
    move-exception v0

    #@16
    .line 192
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@18
    if-nez v1, :cond_0

    #@1a
    .line 193
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@1c
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@1e
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@21
    .line 195
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    .line 196
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    #@23
    .line 197
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@26
    .line 196
    throw v1
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
    .line 258
    const-string/jumbo v1, "url"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 260
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    #@9
    .line 262
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
    .line 269
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@14
    .line 262
    return v1

    #@15
    .line 263
    :catch_0
    move-exception v0

    #@16
    .line 264
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@18
    if-nez v1, :cond_0

    #@1a
    .line 265
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@1c
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@1e
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@21
    .line 267
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    .line 268
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    #@23
    .line 269
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@26
    .line 268
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
    .line 470
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mGuard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 471
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mGuard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@9
    .line 469
    :cond_0
    return-void
.end method

.method public getLocalContentProvider()Landroid/content/ContentProvider;
    .locals 1

    #@0
    .prologue
    .line 485
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
    .line 168
    const-string/jumbo v1, "url"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 169
    const-string/jumbo v1, "mimeTypeFilter"

    #@9
    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 171
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    #@f
    .line 173
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
    .line 180
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@18
    .line 173
    return-object v1

    #@19
    .line 174
    :catch_0
    move-exception v0

    #@1a
    .line 175
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@1c
    if-nez v1, :cond_0

    #@1e
    .line 176
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@20
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@22
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@25
    .line 178
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    .line 179
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    #@27
    .line 180
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@2a
    .line 179
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
    .line 150
    const-string/jumbo v1, "url"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 152
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    #@9
    .line 154
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
    .line 161
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@12
    .line 154
    return-object v1

    #@13
    .line 155
    :catch_0
    move-exception v0

    #@14
    .line 156
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@16
    if-nez v1, :cond_0

    #@18
    .line 157
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@1a
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@1c
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@1f
    .line 159
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    .line 160
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    #@21
    .line 161
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@24
    .line 160
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
    .line 221
    const-string/jumbo v1, "url"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 223
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    #@9
    .line 225
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
    .line 232
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@14
    .line 225
    return-object v1

    #@15
    .line 226
    :catch_0
    move-exception v0

    #@16
    .line 227
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@18
    if-nez v1, :cond_0

    #@1a
    .line 228
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@1c
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@1e
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@21
    .line 230
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    .line 231
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    #@23
    .line 232
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@26
    .line 231
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
    .line 343
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
    .line 355
    const-string/jumbo v2, "url"

    #@3
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 356
    const-string/jumbo v2, "mode"

    #@9
    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 358
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    #@f
    .line 360
    const/4 v1, 0x0

    #@10
    .line 361
    .local v1, "remoteSignal":Landroid/os/ICancellationSignal;
    if-eqz p3, :cond_0

    #@12
    .line 362
    :try_start_0
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    #@15
    .line 363
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@17
    invoke-interface {v2}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    #@1a
    move-result-object v1

    #@1b
    .line 364
    .local v1, "remoteSignal":Landroid/os/ICancellationSignal;
    invoke-virtual {p3, v1}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@1e
    .line 366
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
    .line 373
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@29
    .line 366
    return-object v2

    #@2a
    .line 367
    :catch_0
    move-exception v0

    #@2b
    .line 368
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v2, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@2d
    if-nez v2, :cond_1

    #@2f
    .line 369
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@31
    iget-object v3, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@33
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@36
    .line 371
    :cond_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    .line 372
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v2

    #@38
    .line 373
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@3b
    .line 372
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
    .line 300
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
    .line 312
    const-string/jumbo v0, "url"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 313
    const-string/jumbo v0, "mode"

    #@9
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 315
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    #@f
    .line 317
    const/4 v4, 0x0

    #@10
    .line 318
    .local v4, "remoteSignal":Landroid/os/ICancellationSignal;
    if-eqz p3, :cond_0

    #@12
    .line 319
    :try_start_0
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    #@15
    .line 320
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@17
    invoke-interface {v0}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    #@1a
    move-result-object v4

    #@1b
    .line 321
    .local v4, "remoteSignal":Landroid/os/ICancellationSignal;
    invoke-virtual {p3, v4}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@1e
    .line 323
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
    .line 330
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@2c
    .line 323
    return-object v0

    #@2d
    .line 324
    :catch_0
    move-exception v6

    #@2e
    .line 325
    .local v6, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@30
    if-nez v0, :cond_1

    #@32
    .line 326
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@34
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@36
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@39
    .line 328
    :cond_1
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    .line 329
    .end local v6    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v0

    #@3b
    .line 330
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@3e
    .line 329
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
    .line 381
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
    .line 388
    const-string/jumbo v0, "uri"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 389
    const-string/jumbo v0, "mimeType"

    #@9
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 391
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    #@f
    .line 393
    const/4 v5, 0x0

    #@10
    .line 394
    .local v5, "remoteSignal":Landroid/os/ICancellationSignal;
    if-eqz p4, :cond_0

    #@12
    .line 395
    :try_start_0
    invoke-virtual {p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    #@15
    .line 396
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@17
    invoke-interface {v0}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    #@1a
    move-result-object v5

    #@1b
    .line 397
    .local v5, "remoteSignal":Landroid/os/ICancellationSignal;
    invoke-virtual {p4, v5}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@1e
    .line 399
    .end local v5    # "remoteSignal":Landroid/os/ICancellationSignal;
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@20
    .line 400
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    #@22
    move-object v2, p1

    #@23
    move-object v3, p2

    #@24
    move-object v4, p3

    #@25
    .line 399
    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result-object v0

    #@29
    .line 407
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@2c
    .line 399
    return-object v0

    #@2d
    .line 401
    :catch_0
    move-exception v6

    #@2e
    .line 402
    .local v6, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@30
    if-nez v0, :cond_1

    #@32
    .line 403
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@34
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@36
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@39
    .line 405
    :cond_1
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    .line 406
    .end local v6    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v0

    #@3b
    .line 407
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@3e
    .line 406
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
    .line 118
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
    .locals 9
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
    .line 126
    const-string/jumbo v0, "url"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 128
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    #@9
    .line 130
    const/4 v7, 0x0

    #@a
    .line 131
    .local v7, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    if-eqz p6, :cond_0

    #@c
    .line 132
    :try_start_0
    invoke-virtual {p6}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    #@f
    .line 133
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@11
    invoke-interface {v0}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    #@14
    move-result-object v7

    #@15
    .line 134
    .local v7, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    invoke-virtual {p6, v7}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    #@18
    .line 136
    .end local v7    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@1a
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    #@1c
    move-object v2, p1

    #@1d
    move-object v3, p2

    #@1e
    move-object v4, p3

    #@1f
    move-object v5, p4

    #@20
    move-object v6, p5

    #@21
    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result-object v0

    #@25
    .line 144
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@28
    .line 136
    return-object v0

    #@29
    .line 138
    :catch_0
    move-exception v8

    #@2a
    .line 139
    .local v8, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@2c
    if-nez v0, :cond_1

    #@2e
    .line 140
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@30
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@32
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@35
    .line 142
    :cond_1
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    .line 143
    .end local v8    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v0

    #@37
    .line 144
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@3a
    .line 143
    throw v0
.end method

.method public release()Z
    .locals 2

    #@0
    .prologue
    .line 454
    monitor-enter p0

    #@1
    .line 455
    :try_start_0
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mReleased:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 456
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Already released"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 454
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0

    #@11
    .line 458
    :cond_0
    const/4 v0, 0x1

    #@12
    :try_start_1
    iput-boolean v0, p0, Landroid/content/ContentProviderClient;->mReleased:Z

    #@14
    .line 459
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mGuard:Ldalvik/system/CloseGuard;

    #@16
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@19
    .line 460
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 461
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@1f
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@21
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    move-result v0

    #@25
    monitor-exit p0

    #@26
    return v0

    #@27
    .line 463
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@29
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@2b
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2e
    move-result v0

    #@2f
    monitor-exit p0

    #@30
    return v0
.end method

.method public setDetectNotResponding(J)V
    .locals 5
    .param p1, "timeoutMillis"    # J

    #@0
    .prologue
    .line 86
    const-class v1, Landroid/content/ContentProviderClient;

    #@2
    monitor-enter v1

    #@3
    .line 87
    :try_start_0
    iput-wide p1, p0, Landroid/content/ContentProviderClient;->mAnrTimeout:J

    #@5
    .line 89
    const-wide/16 v2, 0x0

    #@7
    cmp-long v0, p1, v2

    #@9
    if-lez v0, :cond_2

    #@b
    .line 90
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    #@d
    if-nez v0, :cond_0

    #@f
    .line 91
    new-instance v0, Landroid/content/ContentProviderClient$NotRespondingRunnable;

    #@11
    const/4 v2, 0x0

    #@12
    invoke-direct {v0, p0, v2}, Landroid/content/ContentProviderClient$NotRespondingRunnable;-><init>(Landroid/content/ContentProviderClient;Landroid/content/ContentProviderClient$NotRespondingRunnable;)V

    #@15
    iput-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    #@17
    .line 93
    :cond_0
    sget-object v0, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    #@19
    if-nez v0, :cond_1

    #@1b
    .line 94
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
    .line 85
    return-void

    #@2a
    .line 97
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
    .line 86
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
    .line 203
    const-string/jumbo v1, "url"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 205
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    #@9
    .line 207
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
    .line 214
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@14
    .line 207
    return-object v1

    #@15
    .line 208
    :catch_0
    move-exception v0

    #@16
    .line 209
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@18
    if-nez v1, :cond_0

    #@1a
    .line 210
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@1c
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@1e
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@21
    .line 212
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    .line 213
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    #@23
    .line 214
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@26
    .line 213
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
    .line 276
    const-string/jumbo v0, "url"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 278
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    #@9
    .line 280
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
    .line 287
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@18
    .line 280
    return v0

    #@19
    .line 281
    :catch_0
    move-exception v6

    #@1a
    .line 282
    .local v6, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    #@1c
    if-nez v0, :cond_0

    #@1e
    .line 283
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    #@20
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    #@22
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    #@25
    .line 285
    :cond_0
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    .line 286
    .end local v6    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v0

    #@27
    .line 287
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    #@2a
    .line 286
    throw v0
.end method
