.class public Landroid/content/pm/PackageInstaller;
.super Ljava/lang/Object;
.source "PackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageInstaller$SessionCallback;,
        Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;,
        Landroid/content/pm/PackageInstaller$Session;,
        Landroid/content/pm/PackageInstaller$SessionParams;,
        Landroid/content/pm/PackageInstaller$SessionInfo;
    }
.end annotation


# static fields
.field public static final ACTION_CONFIRM_PERMISSIONS:Ljava/lang/String; = "android.content.pm.action.CONFIRM_PERMISSIONS"

.field public static final ACTION_SESSION_DETAILS:Ljava/lang/String; = "android.content.pm.action.SESSION_DETAILS"

.field public static final EXTRA_CALLBACK:Ljava/lang/String; = "android.content.pm.extra.CALLBACK"

.field public static final EXTRA_LEGACY_BUNDLE:Ljava/lang/String; = "android.content.pm.extra.LEGACY_BUNDLE"

.field public static final EXTRA_LEGACY_STATUS:Ljava/lang/String; = "android.content.pm.extra.LEGACY_STATUS"

.field public static final EXTRA_OTHER_PACKAGE_NAME:Ljava/lang/String; = "android.content.pm.extra.OTHER_PACKAGE_NAME"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.content.pm.extra.PACKAGE_NAME"

.field public static final EXTRA_PACKAGE_NAMES:Ljava/lang/String; = "android.content.pm.extra.PACKAGE_NAMES"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_SESSION_ID:Ljava/lang/String; = "android.content.pm.extra.SESSION_ID"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "android.content.pm.extra.STATUS"

.field public static final EXTRA_STATUS_MESSAGE:Ljava/lang/String; = "android.content.pm.extra.STATUS_MESSAGE"

.field public static final EXTRA_STORAGE_PATH:Ljava/lang/String; = "android.content.pm.extra.STORAGE_PATH"

.field public static final STATUS_FAILURE:I = 0x1

.field public static final STATUS_FAILURE_ABORTED:I = 0x3

.field public static final STATUS_FAILURE_BLOCKED:I = 0x2

.field public static final STATUS_FAILURE_CONFLICT:I = 0x5

.field public static final STATUS_FAILURE_INCOMPATIBLE:I = 0x7

.field public static final STATUS_FAILURE_INVALID:I = 0x4

.field public static final STATUS_FAILURE_STORAGE:I = 0x6

.field public static final STATUS_PENDING_USER_ACTION:I = -0x1

.field public static final STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PackageInstaller"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstaller:Landroid/content/pm/IPackageInstaller;

.field private final mInstallerPackageName:Ljava/lang/String;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageInstaller;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "installer"    # Landroid/content/pm/IPackageInstaller;
    .param p4, "installerPackageName"    # Ljava/lang/String;
    .param p5, "userId"    # I

    #@0
    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 267
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    #@a
    .line 272
    iput-object p1, p0, Landroid/content/pm/PackageInstaller;->mContext:Landroid/content/Context;

    #@c
    .line 273
    iput-object p2, p0, Landroid/content/pm/PackageInstaller;->mPm:Landroid/content/pm/PackageManager;

    #@e
    .line 274
    iput-object p3, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@10
    .line 275
    iput-object p4, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    #@12
    .line 276
    iput p5, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    #@14
    .line 271
    return-void
.end method


# virtual methods
.method public abandonSession(I)V
    .locals 2
    .param p1, "sessionId"    # I

    #@0
    .prologue
    .line 371
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@2
    invoke-interface {v1, p1}, Landroid/content/pm/IPackageInstaller;->abandonSession(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 369
    return-void

    #@6
    .line 372
    :catch_0
    move-exception v0

    #@7
    .line 373
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public addSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 575
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    #@3
    .line 574
    return-void
.end method

.method public addSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 589
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V

    #@3
    .line 588
    return-void
.end method

.method public createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I
    .locals 5
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 299
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@2
    iget-object v3, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    #@4
    iget v4, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    #@6
    invoke-interface {v2, p1, v3, v4}, Landroid/content/pm/IPackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v2

    #@a
    return v2

    #@b
    .line 303
    :catch_0
    move-exception v0

    #@c
    .line 304
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@f
    move-result-object v2

    #@10
    throw v2

    #@11
    .line 300
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@12
    .line 301
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    #@15
    .line 302
    throw v1
.end method

.method public getAllSessions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 396
    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@5
    move-result-object v1

    #@6
    .line 397
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    const-string/jumbo v2, "com.google.android.googlequicksearchbox"

    #@9
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 398
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@13
    const v3, 0x11e7bdee

    #@16
    if-gt v2, v3, :cond_0

    #@18
    .line 399
    const-string/jumbo v2, "PackageInstaller"

    #@1b
    const-string/jumbo v3, "Ignoring callback request from old prebuilt"

    #@1e
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 400
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    #@23
    return-object v2

    #@24
    .line 404
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@26
    iget v3, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    #@28
    invoke-interface {v2, v3}, Landroid/content/pm/IPackageInstaller;->getAllSessions(I)Landroid/content/pm/ParceledListSlice;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    move-result-object v2

    #@30
    return-object v2

    #@31
    .line 405
    :catch_0
    move-exception v0

    #@32
    .line 406
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@35
    move-result-object v2

    #@36
    throw v2
.end method

.method public getMySessions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 415
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@2
    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    #@4
    iget v3, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    #@6
    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageInstaller;->getMySessions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 416
    :catch_0
    move-exception v0

    #@10
    .line 417
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@13
    move-result-object v1

    #@14
    throw v1
.end method

.method public getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 2
    .param p1, "sessionId"    # I

    #@0
    .prologue
    .line 386
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@2
    invoke-interface {v1, p1}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 387
    :catch_0
    move-exception v0

    #@8
    .line 388
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public openSession(I)Landroid/content/pm/PackageInstaller$Session;
    .locals 4
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 319
    :try_start_0
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    #@2
    iget-object v3, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@4
    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    #@7
    move-result-object v3

    #@8
    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    return-object v2

    #@c
    .line 323
    :catch_0
    move-exception v0

    #@d
    .line 324
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@10
    move-result-object v2

    #@11
    throw v2

    #@12
    .line 320
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@13
    .line 321
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    #@16
    .line 322
    throw v1
.end method

.method public registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;

    #@0
    .prologue
    .line 583
    new-instance v0, Landroid/os/Handler;

    #@2
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@5
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V

    #@8
    .line 582
    return-void
.end method

.method public registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V
    .locals 6
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 601
    iget-object v3, p0, Landroid/content/pm/PackageInstaller;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@5
    move-result-object v2

    #@6
    .line 602
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    const-string/jumbo v3, "com.google.android.googlequicksearchbox"

    #@9
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 603
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@13
    const v4, 0x11e7bdee

    #@16
    if-gt v3, v4, :cond_0

    #@18
    .line 604
    const-string/jumbo v3, "PackageInstaller"

    #@1b
    const-string/jumbo v4, "Ignoring callback request from old prebuilt"

    #@1e
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 605
    return-void

    #@22
    .line 608
    :cond_0
    iget-object v4, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    #@24
    monitor-enter v4

    #@25
    .line 609
    :try_start_0
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;

    #@27
    .line 610
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@2a
    move-result-object v3

    #@2b
    .line 609
    invoke-direct {v0, p1, v3}, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;-><init>(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 612
    .local v0, "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    :try_start_1
    iget-object v3, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@30
    iget v5, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    #@32
    invoke-interface {v3, v0, v5}, Landroid/content/pm/IPackageInstaller;->registerCallback(Landroid/content/pm/IPackageInstallerCallback;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    .line 616
    :try_start_2
    iget-object v3, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3a
    monitor-exit v4

    #@3b
    .line 599
    return-void

    #@3c
    .line 613
    :catch_0
    move-exception v1

    #@3d
    .line 614
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@40
    move-result-object v3

    #@41
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@42
    .line 608
    .end local v0    # "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@43
    monitor-exit v4

    #@44
    throw v3
.end method

.method public removeSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 623
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller;->unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    #@3
    .line 622
    return-void
.end method

.method public setPermissionsResult(IZ)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "accepted"    # Z

    #@0
    .prologue
    .line 437
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageInstaller;->setPermissionsResult(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 435
    return-void

    #@6
    .line 438
    :catch_0
    move-exception v0

    #@7
    .line 439
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public uninstall(Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "statusReceiver"    # Landroid/content/IntentSender;

    #@0
    .prologue
    .line 428
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@2
    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    #@4
    iget v5, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    #@6
    const/4 v3, 0x0

    #@7
    move-object v1, p1

    #@8
    move-object v4, p2

    #@9
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageInstaller;->uninstall(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 426
    return-void

    #@d
    .line 429
    :catch_0
    move-exception v6

    #@e
    .line 430
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@11
    move-result-object v0

    #@12
    throw v0
.end method

.method public unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;

    #@0
    .prologue
    .line 630
    iget-object v4, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    #@2
    monitor-enter v4

    #@3
    .line 631
    :try_start_0
    iget-object v3, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    .line 632
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;

    #@15
    .line 633
    .local v0, "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    iget-object v3, v0, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    if-ne v3, p1, :cond_0

    #@19
    .line 635
    :try_start_1
    iget-object v3, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@1b
    invoke-interface {v3, v0}, Landroid/content/pm/IPackageInstaller;->unregisterCallback(Landroid/content/pm/IPackageInstallerCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .line 639
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@21
    goto :goto_0

    #@22
    .line 630
    .end local v0    # "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;>;"
    :catchall_0
    move-exception v3

    #@23
    monitor-exit v4

    #@24
    throw v3

    #@25
    .line 636
    .restart local v0    # "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;>;"
    :catch_0
    move-exception v1

    #@26
    .line 637
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@29
    move-result-object v3

    #@2a
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2b
    .end local v0    # "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    monitor-exit v4

    #@2c
    .line 629
    return-void
.end method

.method public updateSessionAppIcon(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "appIcon"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 338
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageInstaller;->updateSessionAppIcon(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 336
    return-void

    #@6
    .line 339
    :catch_0
    move-exception v0

    #@7
    .line 340
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public updateSessionAppLabel(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "appLabel"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 353
    if-eqz p2, :cond_0

    #@2
    :try_start_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 354
    :goto_0
    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@8
    invoke-interface {v2, p1, v1}, Landroid/content/pm/IPackageInstaller;->updateSessionAppLabel(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 351
    return-void

    #@c
    .line 353
    :cond_0
    const/4 v1, 0x0

    #@d
    .local v1, "val":Ljava/lang/String;
    goto :goto_0

    #@e
    .line 355
    .end local v1    # "val":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@f
    .line 356
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@12
    move-result-object v2

    #@13
    throw v2
.end method
