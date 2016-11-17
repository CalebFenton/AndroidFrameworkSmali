.class public Landroid/os/DropBoxManager;
.super Ljava/lang/Object;
.source "DropBoxManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/DropBoxManager$Entry;
    }
.end annotation


# static fields
.field public static final ACTION_DROPBOX_ENTRY_ADDED:Ljava/lang/String; = "android.intent.action.DROPBOX_ENTRY_ADDED"

.field public static final EXTRA_TAG:Ljava/lang/String; = "tag"

.field public static final EXTRA_TIME:Ljava/lang/String; = "time"

.field private static final HAS_BYTE_ARRAY:I = 0x8

.field public static final IS_EMPTY:I = 0x1

.field public static final IS_GZIPPED:I = 0x4

.field public static final IS_TEXT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DropBoxManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/android/internal/os/IDropBoxManagerService;


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 268
    iput-object v0, p0, Landroid/os/DropBoxManager;->mContext:Landroid/content/Context;

    #@6
    .line 269
    iput-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    #@8
    .line 267
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/os/IDropBoxManagerService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/os/IDropBoxManagerService;

    #@0
    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 258
    iput-object p1, p0, Landroid/os/DropBoxManager;->mContext:Landroid/content/Context;

    #@5
    .line 259
    iput-object p2, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    #@7
    .line 257
    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;[BI)V
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 301
    if-nez p2, :cond_0

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "data == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 303
    :cond_0
    :try_start_0
    iget-object v7, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    #@d
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    #@f
    const-wide/16 v2, 0x0

    #@11
    move-object v1, p1

    #@12
    move-object v4, p2

    #@13
    move v5, p3

    #@14
    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J[BI)V

    #@17
    invoke-interface {v7, v0}, Lcom/android/internal/os/IDropBoxManagerService;->add(Landroid/os/DropBoxManager$Entry;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 300
    return-void

    #@1b
    .line 304
    :catch_0
    move-exception v6

    #@1c
    .line 305
    .local v6, "e":Landroid/os/RemoteException;
    instance-of v0, v6, Landroid/os/TransactionTooLargeException;

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 306
    iget-object v0, p0, Landroid/os/DropBoxManager;->mContext:Landroid/content/Context;

    #@22
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@25
    move-result-object v0

    #@26
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@28
    const/16 v1, 0x18

    #@2a
    if-ge v0, v1, :cond_1

    #@2c
    .line 307
    const-string/jumbo v0, "DropBoxManager"

    #@2f
    const-string/jumbo v1, "App sent too much data, so it was ignored"

    #@32
    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@35
    .line 308
    return-void

    #@36
    .line 310
    :cond_1
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@39
    move-result-object v0

    #@3a
    throw v0
.end method

.method public addFile(Ljava/lang/String;Ljava/io/File;I)V
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 324
    if-nez p2, :cond_0

    #@2
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "file == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 325
    :cond_0
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    #@d
    const-wide/16 v2, 0x0

    #@f
    move-object v1, p1

    #@10
    move-object v4, p2

    #@11
    move v5, p3

    #@12
    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V

    #@15
    .line 327
    .local v0, "entry":Landroid/os/DropBoxManager$Entry;
    :try_start_0
    iget-object v1, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    #@17
    invoke-interface {v1, v0}, Lcom/android/internal/os/IDropBoxManagerService;->add(Landroid/os/DropBoxManager$Entry;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 331
    invoke-virtual {v0}, Landroid/os/DropBoxManager$Entry;->close()V

    #@1d
    .line 323
    return-void

    #@1e
    .line 328
    :catch_0
    move-exception v6

    #@1f
    .line 329
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@22
    move-result-object v1

    #@23
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    .line 330
    .end local v6    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@25
    .line 331
    invoke-virtual {v0}, Landroid/os/DropBoxManager$Entry;->close()V

    #@28
    .line 330
    throw v1
.end method

.method public addText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 282
    :try_start_0
    iget-object v1, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    #@2
    new-instance v2, Landroid/os/DropBoxManager$Entry;

    #@4
    const-wide/16 v4, 0x0

    #@6
    invoke-direct {v2, p1, v4, v5, p2}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    #@9
    invoke-interface {v1, v2}, Lcom/android/internal/os/IDropBoxManagerService;->add(Landroid/os/DropBoxManager$Entry;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 280
    return-void

    #@d
    .line 283
    :catch_0
    move-exception v0

    #@e
    .line 284
    .local v0, "e":Landroid/os/RemoteException;
    instance-of v1, v0, Landroid/os/TransactionTooLargeException;

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 285
    iget-object v1, p0, Landroid/os/DropBoxManager;->mContext:Landroid/content/Context;

    #@14
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@17
    move-result-object v1

    #@18
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@1a
    const/16 v2, 0x18

    #@1c
    if-ge v1, v2, :cond_0

    #@1e
    .line 286
    const-string/jumbo v1, "DropBoxManager"

    #@21
    const-string/jumbo v2, "App sent too much data, so it was ignored"

    #@24
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    .line 287
    return-void

    #@28
    .line 289
    :cond_0
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@2b
    move-result-object v1

    #@2c
    throw v1
.end method

.method public getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msec"    # J

    #@0
    .prologue
    .line 362
    :try_start_0
    iget-object v1, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    #@2
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/os/IDropBoxManagerService;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 363
    :catch_0
    move-exception v0

    #@8
    .line 364
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 345
    :try_start_0
    iget-object v1, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/os/IDropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 346
    :catch_0
    move-exception v0

    #@8
    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method
