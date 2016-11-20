.class public Lcom/android/server/clipboard/ClipboardService;
.super Landroid/content/IClipboard$Stub;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/clipboard/ClipboardService$ListenerInfo;,
        Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardService"


# instance fields
.field private final mAm:Landroid/app/IActivityManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mClipboards:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPermissionOwner:Landroid/os/IBinder;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mUm:Landroid/os/IUserManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/clipboard/ClipboardService;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->removeClipboard(I)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Landroid/content/IClipboard$Stub;-><init>()V

    #@3
    .line 92
    new-instance v3, Landroid/util/SparseArray;

    #@5
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    #@a
    .line 98
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    #@c
    .line 99
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@f
    move-result-object v3

    #@10
    iput-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    #@12
    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@15
    move-result-object v3

    #@16
    iput-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    #@18
    .line 101
    const-string/jumbo v3, "user"

    #@1b
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Landroid/os/IUserManager;

    #@21
    iput-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    #@23
    .line 102
    const-string/jumbo v3, "appops"

    #@26
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@29
    move-result-object v3

    #@2a
    check-cast v3, Landroid/app/AppOpsManager;

    #@2c
    iput-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    #@2e
    .line 103
    const/4 v1, 0x0

    #@2f
    .line 105
    .local v1, "permOwner":Landroid/os/IBinder;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    #@31
    const-string/jumbo v4, "clipboard"

    #@34
    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    move-result-object v1

    #@38
    .line 109
    .end local v1    # "permOwner":Landroid/os/IBinder;
    :goto_0
    iput-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    #@3a
    .line 112
    new-instance v2, Landroid/content/IntentFilter;

    #@3c
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    #@3f
    .line 113
    .local v2, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.USER_REMOVED"

    #@42
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@45
    .line 114
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    #@47
    new-instance v4, Lcom/android/server/clipboard/ClipboardService$1;

    #@49
    invoke-direct {v4, p0}, Lcom/android/server/clipboard/ClipboardService$1;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    #@4c
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@4f
    .line 97
    return-void

    #@50
    .line 106
    .end local v2    # "userFilter":Landroid/content/IntentFilter;
    .restart local v1    # "permOwner":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    #@51
    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "clipboard"

    #@54
    const-string/jumbo v4, "AM dead"

    #@57
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5a
    goto :goto_0
.end method

.method private final addActiveOwnerLocked(ILjava/lang/String;)V
    .locals 12
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 373
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@3
    move-result-object v7

    #@4
    .line 374
    .local v7, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@7
    move-result v8

    #@8
    .line 375
    .local v8, "targetUserHandle":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v4

    #@c
    .line 377
    .local v4, "oldIdentity":J
    const/4 v9, 0x0

    #@d
    :try_start_0
    invoke-interface {v7, p2, v9, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    #@10
    move-result-object v6

    #@11
    .line 378
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    if-nez v6, :cond_1

    #@13
    .line 379
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@15
    new-instance v10, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v11, "Unknown package "

    #@1d
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v10

    #@21
    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v10

    #@25
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v10

    #@29
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v9
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 385
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    #@2e
    .line 388
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 390
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    #@34
    move-result-object v1

    #@35
    .line 391
    .local v1, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    #@37
    if-eqz v9, :cond_0

    #@39
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    #@3b
    invoke-virtual {v9, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@3e
    move-result v9

    #@3f
    if-eqz v9, :cond_3

    #@41
    .line 372
    :cond_0
    :goto_1
    return-void

    #@42
    .line 381
    .end local v1    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .restart local v6    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    :try_start_1
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@44
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    #@46
    invoke-static {v9, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    #@49
    move-result v9

    #@4a
    if-nez v9, :cond_2

    #@4c
    .line 382
    new-instance v9, Ljava/lang/SecurityException;

    #@4e
    new-instance v10, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v11, "Calling uid "

    #@56
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v10

    #@5a
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v10

    #@5e
    .line 383
    const-string/jumbo v11, " does not own package "

    #@61
    .line 382
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v10

    #@65
    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v10

    #@69
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v10

    #@6d
    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@70
    throw v9
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@71
    .line 387
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v9

    #@72
    .line 388
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@75
    .line 387
    throw v9

    #@76
    .line 388
    .restart local v6    # "pi":Landroid/content/pm/PackageInfo;
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@79
    goto :goto_0

    #@7a
    .line 392
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v1    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :cond_3
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    #@7c
    invoke-virtual {v9}, Landroid/content/ClipData;->getItemCount()I

    #@7f
    move-result v0

    #@80
    .line 393
    .local v0, "N":I
    const/4 v3, 0x0

    #@81
    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_4

    #@83
    .line 394
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    #@85
    invoke-virtual {v9, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    #@88
    move-result-object v9

    #@89
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@8c
    move-result v10

    #@8d
    invoke-direct {p0, v9, p2, v10}, Lcom/android/server/clipboard/ClipboardService;->grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;I)V

    #@90
    .line 393
    add-int/lit8 v3, v3, 0x1

    #@92
    goto :goto_2

    #@93
    .line 396
    :cond_4
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    #@95
    invoke-virtual {v9, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@98
    goto :goto_1
.end method

.method private final checkDataOwnerLocked(Landroid/content/ClipData;I)V
    .locals 3
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 343
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    #@3
    move-result v0

    #@4
    .line 344
    .local v0, "N":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@7
    .line 345
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    #@a
    move-result-object v2

    #@b
    invoke-direct {p0, v2, p2}, Lcom/android/server/clipboard/ClipboardService;->checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V

    #@e
    .line 344
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 342
    :cond_0
    return-void
.end method

.method private final checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V
    .locals 2
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 333
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    #@3
    move-result-object v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 334
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    #@9
    move-result-object v1

    #@a
    invoke-direct {p0, v1, p2}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    #@d
    .line 336
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    #@10
    move-result-object v0

    #@11
    .line 337
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    #@13
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@16
    move-result-object v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 338
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {p0, v1, p2}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    #@20
    .line 332
    :cond_1
    return-void
.end method

.method private final checkUriOwnerLocked(Landroid/net/Uri;I)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 317
    const-string/jumbo v0, "content"

    #@3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 318
    return-void

    #@e
    .line 320
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@11
    move-result-wide v8

    #@12
    .line 323
    .local v8, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    #@14
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@17
    move-result-object v3

    #@18
    .line 325
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    #@1b
    move-result v1

    #@1c
    invoke-static {p1, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    #@1f
    move-result v5

    #@20
    .line 323
    const/4 v2, 0x0

    #@21
    .line 324
    const/4 v4, 0x1

    #@22
    move v1, p2

    #@23
    .line 323
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 328
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 316
    :goto_0
    return-void

    #@2a
    .line 326
    :catch_0
    move-exception v6

    #@2b
    .line 328
    .local v6, "e":Landroid/os/RemoteException;
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2e
    goto :goto_0

    #@2f
    .line 327
    .end local v6    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    #@30
    .line 328
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@33
    .line 327
    throw v0
.end method

.method private getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .locals 1

    #@0
    .prologue
    .line 140
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 144
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    #@b
    .line 146
    .local v0, "puc":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    if-nez v0, :cond_0

    #@d
    .line 147
    new-instance v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    #@f
    .end local v0    # "puc":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    invoke-direct {v0, p0, p1}, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;-><init>(Lcom/android/server/clipboard/ClipboardService;I)V

    #@12
    .line 148
    .restart local v0    # "puc":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :cond_0
    monitor-exit v2

    #@18
    .line 150
    return-object v0

    #@19
    .line 144
    .end local v0    # "puc":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method private final grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;I)V
    .locals 2
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 363
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    #@3
    move-result-object v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 364
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    #@9
    move-result-object v1

    #@a
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->grantUriLocked(Landroid/net/Uri;Ljava/lang/String;I)V

    #@d
    .line 366
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    #@10
    move-result-object v0

    #@11
    .line 367
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    #@13
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@16
    move-result-object v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 368
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->grantUriLocked(Landroid/net/Uri;Ljava/lang/String;I)V

    #@20
    .line 362
    :cond_1
    return-void
.end method

.method private final grantUriLocked(Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 350
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v10

    #@4
    .line 352
    .local v10, "ident":J
    :try_start_0
    invoke-static {p1, p3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    #@7
    move-result v6

    #@8
    .line 353
    .local v6, "sourceUserId":I
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@b
    move-result-object p1

    #@c
    .line 354
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    #@e
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    #@10
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@13
    move-result v2

    #@14
    .line 355
    const/4 v5, 0x1

    #@15
    move-object v3, p2

    #@16
    move-object v4, p1

    #@17
    move v7, p3

    #@18
    .line 354
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 358
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 349
    .end local v6    # "sourceUserId":I
    :goto_0
    return-void

    #@1f
    .line 356
    :catch_0
    move-exception v8

    #@20
    .line 358
    .local v8, "e":Landroid/os/RemoteException;
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@23
    goto :goto_0

    #@24
    .line 357
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    #@25
    .line 358
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@28
    .line 357
    throw v0
.end method

.method private removeClipboard(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    #@2
    monitor-enter v1

    #@3
    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 154
    return-void

    #@a
    .line 155
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method private final revokeItemLocked(Landroid/content/ClipData$Item;)V
    .locals 2
    .param p1, "item"    # Landroid/content/ClipData$Item;

    #@0
    .prologue
    .line 416
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    #@3
    move-result-object v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 417
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    #@9
    move-result-object v1

    #@a
    invoke-direct {p0, v1}, Lcom/android/server/clipboard/ClipboardService;->revokeUriLocked(Landroid/net/Uri;)V

    #@d
    .line 419
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    #@10
    move-result-object v0

    #@11
    .line 420
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    #@13
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@16
    move-result-object v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 421
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {p0, v1}, Lcom/android/server/clipboard/ClipboardService;->revokeUriLocked(Landroid/net/Uri;)V

    #@20
    .line 415
    :cond_1
    return-void
.end method

.method private final revokeUriLocked(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 402
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v4

    #@4
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    #@7
    move-result v4

    #@8
    .line 401
    invoke-static {p1, v4}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    #@b
    move-result v1

    #@c
    .line 403
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@f
    move-result-wide v2

    #@10
    .line 405
    .local v2, "ident":J
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@13
    move-result-object p1

    #@14
    .line 406
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    #@16
    iget-object v5, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    #@18
    .line 407
    const/4 v6, 0x3

    #@19
    .line 406
    invoke-interface {v4, v5, p1, v6, v1}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 411
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1f
    .line 400
    :goto_0
    return-void

    #@20
    .line 409
    :catch_0
    move-exception v0

    #@21
    .line 411
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    goto :goto_0

    #@25
    .line 410
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@26
    .line 411
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 410
    throw v4
.end method

.method private final revokeUris(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V
    .locals 3
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    #@0
    .prologue
    .line 426
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 427
    return-void

    #@5
    .line 429
    :cond_0
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    #@7
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    #@a
    move-result v0

    #@b
    .line 430
    .local v0, "N":I
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@e
    .line 431
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    #@10
    invoke-virtual {v2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    #@13
    move-result-object v2

    #@14
    invoke-direct {p0, v2}, Lcom/android/server/clipboard/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    #@17
    .line 430
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 425
    :cond_1
    return-void
.end method


# virtual methods
.method public addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 289
    monitor-enter p0

    #@1
    .line 290
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    #@4
    move-result-object v0

    #@5
    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    #@7
    .line 291
    new-instance v1, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    #@9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@c
    move-result v2

    #@d
    invoke-direct {v1, p0, v2, p2}, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;-><init>(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V

    #@10
    .line 290
    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit p0

    #@14
    .line 288
    return-void

    #@15
    .line 289
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 256
    monitor-enter p0

    #@1
    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    #@3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v1

    #@7
    const/16 v2, 0x1d

    #@9
    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 259
    const/4 v0, 0x0

    #@10
    monitor-exit p0

    #@11
    return-object v0

    #@12
    .line 261
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@15
    move-result v0

    #@16
    invoke-direct {p0, v0, p1}, Lcom/android/server/clipboard/ClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V

    #@19
    .line 262
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    #@1c
    move-result-object v0

    #@1d
    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    monitor-exit p0

    #@20
    return-object v0

    #@21
    .line 256
    :catchall_0
    move-exception v0

    #@22
    monitor-exit p0

    #@23
    throw v0
.end method

.method public getPrimaryClipDescription(Ljava/lang/String;)Landroid/content/ClipDescription;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 267
    monitor-enter p0

    #@2
    .line 268
    :try_start_0
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    #@4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v3

    #@8
    const/16 v4, 0x1d

    #@a
    invoke-virtual {v2, v4, v3, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    monitor-exit p0

    #@11
    .line 270
    return-object v1

    #@12
    .line 272
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    #@15
    move-result-object v0

    #@16
    .line 273
    .local v0, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v2, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    #@18
    if-eqz v2, :cond_1

    #@1a
    iget-object v1, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    #@1c
    invoke-virtual {v1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    move-result-object v1

    #@20
    :cond_1
    monitor-exit p0

    #@21
    return-object v1

    #@22
    .line 267
    .end local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :catchall_0
    move-exception v1

    #@23
    monitor-exit p0

    #@24
    throw v1
.end method

.method getRelatedProfiles(I)Ljava/util/List;
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 214
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 216
    .local v2, "origId":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    #@6
    const/4 v5, 0x1

    #@7
    invoke-interface {v4, p1, v5}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result-object v1

    #@b
    .line 221
    .local v1, "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@e
    .line 223
    return-object v1

    #@f
    .line 217
    .end local v1    # "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v0

    #@10
    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v4, "ClipboardService"

    #@13
    new-instance v5, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v6, "Remote Exception calling UserManager: "

    #@1b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    .line 219
    const/4 v4, 0x0

    #@2b
    .line 221
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2e
    .line 219
    return-object v4

    #@2f
    .line 220
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@30
    .line 221
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@33
    .line 220
    throw v4
.end method

.method public hasClipboardText(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 302
    monitor-enter p0

    #@2
    .line 303
    :try_start_0
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    #@4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v4

    #@8
    const/16 v5, 0x1d

    #@a
    invoke-virtual {v3, v5, v4, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    monitor-exit p0

    #@11
    .line 305
    return v2

    #@12
    .line 307
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    #@15
    move-result-object v0

    #@16
    .line 308
    .local v0, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v3, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    #@18
    if-eqz v3, :cond_2

    #@1a
    .line 309
    iget-object v3, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-virtual {v3, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    #@24
    move-result-object v1

    #@25
    .line 310
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    #@27
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    move-result v3

    #@2b
    if-lez v3, :cond_1

    #@2d
    const/4 v2, 0x1

    #@2e
    :cond_1
    monitor-exit p0

    #@2f
    return v2

    #@30
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_2
    monitor-exit p0

    #@31
    .line 312
    return v2

    #@32
    .line 302
    .end local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :catchall_0
    move-exception v2

    #@33
    monitor-exit p0

    #@34
    throw v2
.end method

.method public hasPrimaryClip(Ljava/lang/String;)Z
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 278
    monitor-enter p0

    #@2
    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    #@4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v2

    #@8
    const/16 v3, 0x1d

    #@a
    invoke-virtual {v1, v3, v2, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    monitor-exit p0

    #@11
    .line 281
    return v0

    #@12
    .line 283
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    #@15
    move-result-object v1

    #@16
    iget-object v1, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    if-eqz v1, :cond_1

    #@1a
    const/4 v0, 0x1

    #@1b
    :cond_1
    monitor-exit p0

    #@1c
    return v0

    #@1d
    .line 278
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit p0

    #@1f
    throw v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IClipboard$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v1

    #@4
    return v1

    #@5
    .line 130
    :catch_0
    move-exception v0

    #@6
    .line 131
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 132
    const-string/jumbo v1, "clipboard"

    #@d
    const-string/jumbo v2, "Exception: "

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    .line 134
    :cond_0
    throw v0
.end method

.method public removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;

    #@0
    .prologue
    .line 296
    monitor-enter p0

    #@1
    .line 297
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    #@4
    move-result-object v0

    #@5
    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    #@7
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 295
    return-void

    #@c
    .line 296
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V
    .locals 13
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 161
    monitor-enter p0

    #@1
    .line 162
    if-eqz p1, :cond_0

    #@3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    #@6
    move-result v10

    #@7
    if-gtz v10, :cond_0

    #@9
    .line 163
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v11, "No items"

    #@e
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 161
    .end local p1    # "clip":Landroid/content/ClipData;
    :catchall_0
    move-exception v10

    #@13
    :goto_0
    monitor-exit p0

    #@14
    throw v10

    #@15
    .line 165
    .restart local p1    # "clip":Landroid/content/ClipData;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@18
    move-result v0

    #@19
    .line 166
    .local v0, "callingUid":I
    iget-object v10, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    #@1b
    const/16 v11, 0x1e

    #@1d
    invoke-virtual {v10, v11, v0, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    move-result v10

    #@21
    if-eqz v10, :cond_1

    #@23
    monitor-exit p0

    #@24
    .line 168
    return-void

    #@25
    .line 170
    :cond_1
    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/android/server/clipboard/ClipboardService;->checkDataOwnerLocked(Landroid/content/ClipData;I)V

    #@28
    .line 171
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@2b
    move-result v9

    #@2c
    .line 172
    .local v9, "userId":I
    invoke-direct {p0, v9}, Lcom/android/server/clipboard/ClipboardService;->getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    #@2f
    move-result-object v3

    #@30
    .line 173
    .local v3, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    invoke-direct {p0, v3}, Lcom/android/server/clipboard/ClipboardService;->revokeUris(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V

    #@33
    .line 174
    invoke-virtual {p0, v3, p1}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;)V

    #@36
    .line 175
    invoke-virtual {p0, v9}, Lcom/android/server/clipboard/ClipboardService;->getRelatedProfiles(I)Ljava/util/List;

    #@39
    move-result-object v7

    #@3a
    .line 176
    .local v7, "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v7, :cond_6

    #@3c
    .line 177
    invoke-interface {v7}, Ljava/util/List;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3f
    move-result v8

    #@40
    .line 178
    .local v8, "size":I
    const/4 v10, 0x1

    #@41
    if-le v8, v10, :cond_6

    #@43
    .line 179
    const/4 v1, 0x0

    #@44
    .line 181
    .local v1, "canCopy":Z
    :try_start_3
    iget-object v10, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    #@46
    invoke-interface {v10, v9}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;

    #@49
    move-result-object v10

    #@4a
    .line 182
    const-string/jumbo v11, "no_cross_profile_copy_paste"

    #@4d
    .line 181
    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@50
    move-result v10

    #@51
    if-eqz v10, :cond_3

    #@53
    const/4 v1, 0x0

    #@54
    .line 188
    :goto_1
    if-nez v1, :cond_4

    #@56
    .line 189
    const/4 p1, 0x0

    #@57
    .line 201
    .end local p1    # "clip":Landroid/content/ClipData;
    :goto_2
    const/4 v5, 0x0

    #@58
    .local v5, "i":I
    :goto_3
    if-ge v5, v8, :cond_6

    #@5a
    .line 202
    :try_start_4
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5d
    move-result-object v10

    #@5e
    check-cast v10, Landroid/content/pm/UserInfo;

    #@60
    iget v6, v10, Landroid/content/pm/UserInfo;->id:I

    #@62
    .line 203
    .local v6, "id":I
    if-eq v6, v9, :cond_2

    #@64
    .line 204
    invoke-direct {p0, v6}, Lcom/android/server/clipboard/ClipboardService;->getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    #@67
    move-result-object v10

    #@68
    invoke-virtual {p0, v10, p1}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;)V

    #@6b
    .line 201
    :cond_2
    add-int/lit8 v5, v5, 0x1

    #@6d
    goto :goto_3

    #@6e
    .line 181
    .end local v5    # "i":I
    .end local v6    # "id":I
    .restart local p1    # "clip":Landroid/content/ClipData;
    :cond_3
    const/4 v1, 0x1

    #@6f
    goto :goto_1

    #@70
    .line 183
    :catch_0
    move-exception v4

    #@71
    .line 184
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v10, "ClipboardService"

    #@74
    new-instance v11, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v12, "Remote Exception calling UserManager: "

    #@7c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v11

    #@80
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v11

    #@84
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v11

    #@88
    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8b
    goto :goto_1

    #@8c
    .line 195
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_4
    new-instance v2, Landroid/content/ClipData;

    #@8e
    invoke-direct {v2, p1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@91
    .line 196
    .end local p1    # "clip":Landroid/content/ClipData;
    .local v2, "clip":Landroid/content/ClipData;
    :try_start_5
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    #@94
    move-result v10

    #@95
    add-int/lit8 v5, v10, -0x1

    #@97
    .restart local v5    # "i":I
    :goto_4
    if-ltz v5, :cond_5

    #@99
    .line 197
    new-instance v10, Landroid/content/ClipData$Item;

    #@9b
    invoke-virtual {v2, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    #@9e
    move-result-object v11

    #@9f
    invoke-direct {v10, v11}, Landroid/content/ClipData$Item;-><init>(Landroid/content/ClipData$Item;)V

    #@a2
    invoke-virtual {v2, v5, v10}, Landroid/content/ClipData;->setItemAt(ILandroid/content/ClipData$Item;)V

    #@a5
    .line 196
    add-int/lit8 v5, v5, -0x1

    #@a7
    goto :goto_4

    #@a8
    .line 199
    :cond_5
    invoke-virtual {v2, v9}, Landroid/content/ClipData;->fixUrisLight(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@ab
    move-object p1, v2

    #@ac
    .end local v2    # "clip":Landroid/content/ClipData;
    .restart local p1    # "clip":Landroid/content/ClipData;
    goto :goto_2

    #@ad
    .end local v1    # "canCopy":Z
    .end local v5    # "i":I
    .end local v8    # "size":I
    .end local p1    # "clip":Landroid/content/ClipData;
    :cond_6
    monitor-exit p0

    #@ae
    .line 160
    return-void

    #@af
    .line 161
    .restart local v1    # "canCopy":Z
    .restart local v2    # "clip":Landroid/content/ClipData;
    .restart local v8    # "size":I
    :catchall_1
    move-exception v10

    #@b0
    move-object p1, v2

    #@b1
    .end local v2    # "clip":Landroid/content/ClipData;
    .restart local p1    # "clip":Landroid/content/ClipData;
    goto/16 :goto_0
.end method

.method setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;)V
    .locals 10
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .param p2, "clip"    # Landroid/content/ClipData;

    #@0
    .prologue
    .line 227
    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    #@2
    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    #@5
    .line 228
    if-nez p2, :cond_0

    #@7
    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    #@9
    if-nez v6, :cond_0

    #@b
    .line 229
    return-void

    #@c
    .line 231
    :cond_0
    iput-object p2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    #@e
    .line 232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@11
    move-result-wide v2

    #@12
    .line 233
    .local v2, "ident":J
    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    #@14
    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@17
    move-result v5

    #@18
    .line 235
    .local v5, "n":I
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_2

    #@1b
    .line 238
    :try_start_0
    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    #@1d
    invoke-virtual {v6, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    #@20
    move-result-object v4

    #@21
    .line 237
    check-cast v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    #@23
    .line 239
    .local v4, "li":Lcom/android/server/clipboard/ClipboardService$ListenerInfo;
    iget-object v6, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    #@25
    iget v7, v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mUid:I

    #@27
    .line 240
    iget-object v8, v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    #@29
    .line 239
    const/16 v9, 0x1d

    #@2b
    invoke-virtual {v6, v9, v7, v8}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    #@2e
    move-result v6

    #@2f
    if-nez v6, :cond_1

    #@31
    .line 241
    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    #@33
    invoke-virtual {v6, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@36
    move-result-object v6

    #@37
    check-cast v6, Landroid/content/IOnPrimaryClipChangedListener;

    #@39
    invoke-interface {v6}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    .line 235
    .end local v4    # "li":Lcom/android/server/clipboard/ClipboardService$ListenerInfo;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 250
    :cond_2
    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    #@41
    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@44
    .line 251
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@47
    .line 226
    return-void

    #@48
    .line 249
    :catchall_0
    move-exception v6

    #@49
    .line 250
    iget-object v7, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    #@4b
    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@4e
    .line 251
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@51
    .line 249
    throw v6

    #@52
    .line 244
    :catch_0
    move-exception v0

    #@53
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method
