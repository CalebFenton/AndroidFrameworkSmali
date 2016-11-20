.class public final Lcom/android/commands/pm/Pm;
.super Ljava/lang/Object;
.source "Pm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/pm/Pm$ClearCacheObserver;,
        Lcom/android/commands/pm/Pm$ClearDataObserver;,
        Lcom/android/commands/pm/Pm$InstallParams;,
        Lcom/android/commands/pm/Pm$LocalIntentReceiver;,
        Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;
    }
.end annotation


# static fields
.field private static final PM_NOT_RUNNING_ERR:Ljava/lang/String; = "Error: Could not access the Package Manager.  Is the system running?"

.field private static final TAG:Ljava/lang/String; = "Pm"


# instance fields
.field mAm:Landroid/accounts/IAccountManager;

.field private mArgs:[Ljava/lang/String;

.field private mCurArgData:Ljava/lang/String;

.field mInstaller:Landroid/content/pm/IPackageInstaller;

.field private mNextArg:I

.field mPm:Landroid/content/pm/IPackageManager;

.field mUm:Landroid/os/IUserManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static checkAbiArgument(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "abi"    # Ljava/lang/String;

    #@0
    .prologue
    .line 337
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 338
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v3, "Missing ABI argument"

    #@b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 340
    :cond_0
    const-string/jumbo v2, "-"

    #@12
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 341
    return-object p0

    #@19
    .line 343
    :cond_1
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    #@1b
    .line 344
    .local v1, "supportedAbis":[Ljava/lang/String;
    const/4 v2, 0x0

    #@1c
    array-length v3, v1

    #@1d
    :goto_0
    if-ge v2, v3, :cond_3

    #@1f
    aget-object v0, v1, v2

    #@21
    .line 345
    .local v0, "supportedAbi":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_2

    #@27
    .line 346
    return-object p0

    #@28
    .line 344
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 349
    .end local v0    # "supportedAbi":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2d
    new-instance v3, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v4, "ABI "

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    const-string/jumbo v4, " not supported on this device"

    #@40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v2
.end method

.method private displayPackageFilePath(Ljava/lang/String;I)I
    .locals 9
    .param p1, "pckg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1419
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@3
    const/4 v5, 0x0

    #@4
    invoke-interface {v3, p1, v5, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    #@7
    move-result-object v1

    #@8
    .line 1420
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_1

    #@a
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 1421
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@10
    const-string/jumbo v5, "package:"

    #@13
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@16
    .line 1422
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@18
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1a
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@1c
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1f
    .line 1423
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@21
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@23
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@26
    move-result v3

    #@27
    if-nez v3, :cond_0

    #@29
    .line 1424
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2b
    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@2d
    array-length v6, v5

    #@2e
    move v3, v4

    #@2f
    :goto_0
    if-ge v3, v6, :cond_0

    #@31
    aget-object v2, v5, v3

    #@33
    .line 1425
    .local v2, "splitSourceDir":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@35
    const-string/jumbo v8, "package:"

    #@38
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@3b
    .line 1426
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3d
    invoke-virtual {v7, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    .line 1424
    add-int/lit8 v3, v3, 0x1

    #@42
    goto :goto_0

    #@43
    .line 1429
    .end local v2    # "splitSourceDir":Ljava/lang/String;
    :cond_0
    return v4

    #@44
    .line 1431
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    #@45
    .line 1432
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@47
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4e
    .line 1433
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@50
    const-string/jumbo v4, "Error: Could not access the Package Manager.  Is the system running?"

    #@53
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@56
    .line 1435
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v3, 0x1

    #@57
    return v3
.end method

.method private doAbandonSession(IZ)I
    .locals 4
    .param p1, "sessionId"    # I
    .param p2, "logSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 612
    const/4 v0, 0x0

    #@1
    .line 614
    .local v0, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_0
    new-instance v1, Landroid/content/pm/PackageInstaller$Session;

    #@3
    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@5
    invoke-interface {v2, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    #@8
    move-result-object v2

    #@9
    invoke-direct {v1, v2}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 615
    .local v1, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_1
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->abandon()V

    #@f
    .line 616
    .end local v0    # "session":Landroid/content/pm/PackageInstaller$Session;
    if-eqz p2, :cond_0

    #@11
    .line 617
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@13
    const-string/jumbo v3, "Success"

    #@16
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@19
    .line 619
    :cond_0
    const/4 v2, 0x0

    #@1a
    .line 621
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1d
    .line 619
    return v2

    #@1e
    .line 620
    .end local v1    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v0    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_0
    move-exception v2

    #@1f
    .line 621
    .end local v0    # "session":Landroid/content/pm/PackageInstaller$Session;
    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@22
    .line 620
    throw v2

    #@23
    .restart local v1    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_1
    move-exception v2

    #@24
    move-object v0, v1

    #@25
    .end local v1    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v0, "session":Landroid/content/pm/PackageInstaller$Session;
    goto :goto_0
.end method

.method private doCommitSession(IZ)I
    .locals 8
    .param p1, "sessionId"    # I
    .param p2, "logSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 586
    const/4 v2, 0x0

    #@1
    .line 588
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_0
    new-instance v3, Landroid/content/pm/PackageInstaller$Session;

    #@3
    .line 589
    iget-object v5, p0, Lcom/android/commands/pm/Pm;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@5
    invoke-interface {v5, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    #@8
    move-result-object v5

    #@9
    .line 588
    invoke-direct {v3, v5}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@c
    .line 591
    .local v3, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_1
    new-instance v0, Lcom/android/commands/pm/Pm$LocalIntentReceiver;

    #@e
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    const/4 v5, 0x0

    #@f
    invoke-direct {v0, v5}, Lcom/android/commands/pm/Pm$LocalIntentReceiver;-><init>(Lcom/android/commands/pm/Pm$LocalIntentReceiver;)V

    #@12
    .line 592
    .local v0, "receiver":Lcom/android/commands/pm/Pm$LocalIntentReceiver;
    invoke-virtual {v0}, Lcom/android/commands/pm/Pm$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    #@15
    move-result-object v5

    #@16
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    #@19
    .line 594
    invoke-virtual {v0}, Lcom/android/commands/pm/Pm$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    #@1c
    move-result-object v1

    #@1d
    .line 595
    .local v1, "result":Landroid/content/Intent;
    const-string/jumbo v5, "android.content.pm.extra.STATUS"

    #@20
    .line 596
    const/4 v6, 0x1

    #@21
    .line 595
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@24
    move-result v4

    #@25
    .line 597
    .local v4, "status":I
    if-nez v4, :cond_1

    #@27
    .line 598
    if-eqz p2, :cond_0

    #@29
    .line 599
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2b
    const-string/jumbo v6, "Success"

    #@2e
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    .line 607
    :cond_0
    :goto_0
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@34
    .line 605
    return v4

    #@35
    .line 602
    :cond_1
    :try_start_2
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@37
    new-instance v6, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v7, "Failure ["

    #@3f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v6

    #@43
    .line 603
    const-string/jumbo v7, "android.content.pm.extra.STATUS_MESSAGE"

    #@46
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@49
    move-result-object v7

    #@4a
    .line 602
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v6

    #@4e
    .line 603
    const-string/jumbo v7, "]"

    #@51
    .line 602
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v6

    #@55
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v6

    #@59
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5c
    goto :goto_0

    #@5d
    .line 606
    .end local v0    # "receiver":Lcom/android/commands/pm/Pm$LocalIntentReceiver;
    .end local v1    # "result":Landroid/content/Intent;
    .end local v4    # "status":I
    :catchall_0
    move-exception v5

    #@5e
    move-object v2, v3

    #@5f
    .line 607
    .end local v3    # "session":Landroid/content/pm/PackageInstaller$Session;
    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@62
    .line 606
    throw v5

    #@63
    .restart local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_1
    move-exception v5

    #@64
    goto :goto_1
.end method

.method private doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I
    .locals 2
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 520
    const-string/jumbo v1, "runInstallCreate"

    #@3
    invoke-direct {p0, p3, v1}, Lcom/android/commands/pm/Pm;->translateUserId(ILjava/lang/String;)I

    #@6
    move-result p3

    #@7
    .line 521
    const/4 v1, -0x1

    #@8
    if-ne p3, v1, :cond_0

    #@a
    .line 522
    const/4 p3, 0x0

    #@b
    .line 523
    iget v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@d
    or-int/lit8 v1, v1, 0x40

    #@f
    iput v1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@11
    .line 526
    :cond_0
    iget-object v1, p0, Lcom/android/commands/pm/Pm;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@13
    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    #@16
    move-result v0

    #@17
    .line 527
    .local v0, "sessionId":I
    return v0
.end method

.method private doWriteSession(ILjava/lang/String;JLjava/lang/String;Z)I
    .locals 19
    .param p1, "sessionId"    # I
    .param p2, "inPath"    # Ljava/lang/String;
    .param p3, "sizeBytes"    # J
    .param p5, "splitName"    # Ljava/lang/String;
    .param p6, "logSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 532
    const-string/jumbo v3, "-"

    #@3
    move-object/from16 v0, p2

    #@5
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_2

    #@b
    .line 533
    const/16 p2, 0x0

    #@d
    .line 541
    .end local p2    # "inPath":Ljava/lang/String;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    #@f
    iget-object v3, v0, Lcom/android/commands/pm/Pm;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@11
    move/from16 v0, p1

    #@13
    invoke-interface {v3, v0}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    #@16
    move-result-object v15

    #@17
    .line 543
    .local v15, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    const/16 v17, 0x0

    #@19
    .line 544
    .local v17, "session":Landroid/content/pm/PackageInstaller$Session;
    const/4 v13, 0x0

    #@1a
    .line 545
    .local v13, "in":Ljava/io/InputStream;
    const/16 v16, 0x0

    #@1c
    .line 547
    .local v16, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    #@1e
    .line 548
    move-object/from16 v0, p0

    #@20
    iget-object v3, v0, Lcom/android/commands/pm/Pm;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@22
    move/from16 v0, p1

    #@24
    invoke-interface {v3, v0}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    #@27
    move-result-object v3

    #@28
    .line 547
    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 550
    .end local v17    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    if-eqz p2, :cond_3

    #@2d
    .line 551
    :try_start_1
    new-instance v14, Ljava/io/FileInputStream;

    #@2f
    move-object/from16 v0, p2

    #@31
    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    #@34
    .local v14, "in":Ljava/io/InputStream;
    move-object v13, v14

    #@35
    .line 555
    .end local v14    # "in":Ljava/io/InputStream;
    .local v13, "in":Ljava/io/InputStream;
    :goto_1
    const-wide/16 v4, 0x0

    #@37
    move-object/from16 v3, p5

    #@39
    move-wide/from16 v6, p3

    #@3b
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    #@3e
    move-result-object v16

    #@3f
    .line 557
    .local v16, "out":Ljava/io/OutputStream;
    const/16 v18, 0x0

    #@41
    .line 558
    .local v18, "total":I
    const/high16 v3, 0x10000

    #@43
    new-array v8, v3, [B

    #@45
    .line 560
    .local v8, "buffer":[B
    :cond_1
    :goto_2
    invoke-virtual {v13, v8}, Ljava/io/InputStream;->read([B)I

    #@48
    move-result v9

    #@49
    .local v9, "c":I
    const/4 v3, -0x1

    #@4a
    if-eq v9, v3, :cond_4

    #@4c
    .line 561
    add-int v18, v18, v9

    #@4e
    .line 562
    const/4 v3, 0x0

    #@4f
    move-object/from16 v0, v16

    #@51
    invoke-virtual {v0, v8, v3, v9}, Ljava/io/OutputStream;->write([BII)V

    #@54
    .line 564
    iget-wide v4, v15, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    #@56
    const-wide/16 v6, 0x0

    #@58
    cmp-long v3, v4, v6

    #@5a
    if-lez v3, :cond_1

    #@5c
    .line 565
    int-to-float v3, v9

    #@5d
    iget-wide v4, v15, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    #@5f
    long-to-float v4, v4

    #@60
    div-float v12, v3, v4

    #@62
    .line 566
    .local v12, "fraction":F
    invoke-virtual {v2, v12}, Landroid/content/pm/PackageInstaller$Session;->addProgress(F)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@65
    goto :goto_2

    #@66
    .line 575
    .end local v8    # "buffer":[B
    .end local v9    # "c":I
    .end local v12    # "fraction":F
    .end local v13    # "in":Ljava/io/InputStream;
    .end local v16    # "out":Ljava/io/OutputStream;
    .end local v18    # "total":I
    :catch_0
    move-exception v10

    #@67
    .line 576
    .local v10, "e":Ljava/io/IOException;
    :goto_3
    :try_start_2
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@69
    new-instance v4, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v5, "Error: failed to write; "

    #@71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v4

    #@75
    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@78
    move-result-object v5

    #@79
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v4

    #@81
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@84
    .line 577
    const/4 v3, 0x1

    #@85
    .line 579
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@88
    .line 580
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@8b
    .line 581
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@8e
    .line 577
    return v3

    #@8f
    .line 534
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v10    # "e":Ljava/io/IOException;
    .end local v15    # "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    .restart local p2    # "inPath":Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_0

    #@91
    .line 535
    new-instance v11, Ljava/io/File;

    #@93
    move-object/from16 v0, p2

    #@95
    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@98
    .line 536
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    #@9b
    move-result v3

    #@9c
    if-eqz v3, :cond_0

    #@9e
    .line 537
    invoke-virtual {v11}, Ljava/io/File;->length()J

    #@a1
    move-result-wide p3

    #@a2
    goto/16 :goto_0

    #@a4
    .line 553
    .end local v11    # "file":Ljava/io/File;
    .end local p2    # "inPath":Ljava/lang/String;
    .restart local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v13, "in":Ljava/io/InputStream;
    .restart local v15    # "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    .local v16, "out":Ljava/io/OutputStream;
    :cond_3
    :try_start_3
    new-instance v14, Lcom/android/internal/util/SizedInputStream;

    #@a6
    sget-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    #@a8
    move-wide/from16 v0, p3

    #@aa
    invoke-direct {v14, v3, v0, v1}, Lcom/android/internal/util/SizedInputStream;-><init>(Ljava/io/InputStream;J)V

    #@ad
    .restart local v14    # "in":Ljava/io/InputStream;
    move-object v13, v14

    #@ae
    .end local v14    # "in":Ljava/io/InputStream;
    .local v13, "in":Ljava/io/InputStream;
    goto :goto_1

    #@af
    .line 569
    .restart local v8    # "buffer":[B
    .restart local v9    # "c":I
    .local v16, "out":Ljava/io/OutputStream;
    .restart local v18    # "total":I
    :cond_4
    move-object/from16 v0, v16

    #@b1
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V

    #@b4
    .line 571
    if-eqz p6, :cond_5

    #@b6
    .line 572
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@b8
    new-instance v4, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v5, "Success: streamed "

    #@c0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v4

    #@c4
    move/from16 v0, v18

    #@c6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v4

    #@ca
    const-string/jumbo v5, " bytes"

    #@cd
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v4

    #@d1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d4
    move-result-object v4

    #@d5
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@d8
    .line 574
    :cond_5
    const/4 v3, 0x0

    #@d9
    .line 579
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@dc
    .line 580
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@df
    .line 581
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@e2
    .line 574
    return v3

    #@e3
    .line 578
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v8    # "buffer":[B
    .end local v9    # "c":I
    .end local v18    # "total":I
    .local v13, "in":Ljava/io/InputStream;
    .local v16, "out":Ljava/io/OutputStream;
    .restart local v17    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_0
    move-exception v3

    #@e4
    move-object/from16 v2, v17

    #@e6
    .line 579
    .end local v13    # "in":Ljava/io/InputStream;
    .end local v16    # "out":Ljava/io/OutputStream;
    .end local v17    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    :goto_4
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@e9
    .line 580
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@ec
    .line 581
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@ef
    .line 578
    throw v3

    #@f0
    :catchall_1
    move-exception v3

    #@f1
    goto :goto_4

    #@f2
    .line 575
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v13    # "in":Ljava/io/InputStream;
    .restart local v16    # "out":Ljava/io/OutputStream;
    .restart local v17    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catch_1
    move-exception v10

    #@f3
    .restart local v10    # "e":Ljava/io/IOException;
    move-object/from16 v2, v17

    #@f5
    .restart local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    goto/16 :goto_3
.end method

.method private static enabledSettingToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    #@0
    .prologue
    .line 1153
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1165
    const-string/jumbo v0, "unknown"

    #@6
    return-object v0

    #@7
    .line 1155
    :pswitch_0
    const-string/jumbo v0, "default"

    #@a
    return-object v0

    #@b
    .line 1157
    :pswitch_1
    const-string/jumbo v0, "enabled"

    #@e
    return-object v0

    #@f
    .line 1159
    :pswitch_2
    const-string/jumbo v0, "disabled"

    #@12
    return-object v0

    #@13
    .line 1161
    :pswitch_3
    const-string/jumbo v0, "disabled-user"

    #@16
    return-object v0

    #@17
    .line 1163
    :pswitch_4
    const-string/jumbo v0, "disabled-until-used"

    #@1a
    return-object v0

    #@1b
    .line 1153
    nop

    #@1c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static isNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1170
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 1174
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 1171
    :catch_0
    move-exception v0

    #@6
    .line 1172
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    #@7
    return v1
.end method

.method private linkStateToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # I

    #@0
    .prologue
    .line 832
    packed-switch p1, :pswitch_data_0

    #@3
    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "Unknown link state: "

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 833
    :pswitch_0
    const-string/jumbo v0, "undefined"

    #@1b
    return-object v0

    #@1c
    .line 834
    :pswitch_1
    const-string/jumbo v0, "ask"

    #@1f
    return-object v0

    #@20
    .line 835
    :pswitch_2
    const-string/jumbo v0, "always"

    #@23
    return-object v0

    #@24
    .line 836
    :pswitch_3
    const-string/jumbo v0, "never"

    #@27
    return-object v0

    #@28
    .line 837
    :pswitch_4
    const-string/jumbo v0, "always ask"

    #@2b
    return-object v0

    #@2c
    .line 832
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 93
    const/4 v1, 0x1

    #@1
    .line 95
    .local v1, "exitCode":I
    :try_start_0
    new-instance v2, Lcom/android/commands/pm/Pm;

    #@3
    invoke-direct {v2}, Lcom/android/commands/pm/Pm;-><init>()V

    #@6
    invoke-virtual {v2, p0}, Lcom/android/commands/pm/Pm;->run([Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    .line 103
    :cond_0
    :goto_0
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    #@d
    .line 92
    return-void

    #@e
    .line 96
    :catch_0
    move-exception v0

    #@f
    .line 97
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Pm"

    #@12
    const-string/jumbo v3, "Error"

    #@15
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    .line 98
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1a
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v4, "Error: "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@31
    .line 99
    instance-of v2, v0, Landroid/os/RemoteException;

    #@33
    if-eqz v2, :cond_0

    #@35
    .line 100
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@37
    const-string/jumbo v3, "Error: Could not access the Package Manager.  Is the system running?"

    #@3a
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3d
    goto :goto_0
.end method

.method private makeInstallParams()Lcom/android/commands/pm/Pm$InstallParams;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 437
    new-instance v2, Landroid/content/pm/PackageInstaller$SessionParams;

    #@3
    const/4 v3, 0x1

    #@4
    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    #@7
    .line 438
    .local v2, "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    new-instance v1, Lcom/android/commands/pm/Pm$InstallParams;

    #@9
    invoke-direct {v1, v6}, Lcom/android/commands/pm/Pm$InstallParams;-><init>(Lcom/android/commands/pm/Pm$InstallParams;)V

    #@c
    .line 439
    .local v1, "params":Lcom/android/commands/pm/Pm$InstallParams;
    iput-object v2, v1, Lcom/android/commands/pm/Pm$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    #@e
    .line 441
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_14

    #@14
    .line 442
    const-string/jumbo v3, "-l"

    #@17
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_1

    #@1d
    .line 444
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@1f
    or-int/lit8 v3, v3, 0x1

    #@21
    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@23
    goto :goto_0

    #@24
    .line 442
    :cond_1
    const-string/jumbo v3, "-r"

    #@27
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_2

    #@2d
    .line 447
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@2f
    or-int/lit8 v3, v3, 0x2

    #@31
    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@33
    goto :goto_0

    #@34
    .line 442
    :cond_2
    const-string/jumbo v3, "-i"

    #@37
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v3

    #@3b
    if-eqz v3, :cond_3

    #@3d
    .line 450
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    iput-object v3, v1, Lcom/android/commands/pm/Pm$InstallParams;->installerPackageName:Ljava/lang/String;

    #@43
    .line 451
    iget-object v3, v1, Lcom/android/commands/pm/Pm$InstallParams;->installerPackageName:Ljava/lang/String;

    #@45
    if-nez v3, :cond_0

    #@47
    .line 452
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@49
    const-string/jumbo v4, "Missing installer package"

    #@4c
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v3

    #@50
    .line 442
    :cond_3
    const-string/jumbo v3, "-t"

    #@53
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v3

    #@57
    if-eqz v3, :cond_4

    #@59
    .line 456
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@5b
    or-int/lit8 v3, v3, 0x4

    #@5d
    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@5f
    goto :goto_0

    #@60
    .line 442
    :cond_4
    const-string/jumbo v3, "-s"

    #@63
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v3

    #@67
    if-eqz v3, :cond_5

    #@69
    .line 459
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@6b
    or-int/lit8 v3, v3, 0x8

    #@6d
    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@6f
    goto :goto_0

    #@70
    .line 442
    :cond_5
    const-string/jumbo v3, "-f"

    #@73
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v3

    #@77
    if-eqz v3, :cond_6

    #@79
    .line 462
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@7b
    or-int/lit8 v3, v3, 0x10

    #@7d
    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@7f
    goto :goto_0

    #@80
    .line 442
    :cond_6
    const-string/jumbo v3, "-d"

    #@83
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@86
    move-result v3

    #@87
    if-eqz v3, :cond_7

    #@89
    .line 465
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@8b
    or-int/lit16 v3, v3, 0x80

    #@8d
    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@8f
    goto/16 :goto_0

    #@91
    .line 442
    :cond_7
    const-string/jumbo v3, "-g"

    #@94
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@97
    move-result v3

    #@98
    if-eqz v3, :cond_8

    #@9a
    .line 468
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@9c
    or-int/lit16 v3, v3, 0x100

    #@9e
    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@a0
    goto/16 :goto_0

    #@a2
    .line 442
    :cond_8
    const-string/jumbo v3, "--dont-kill"

    #@a5
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a8
    move-result v3

    #@a9
    if-eqz v3, :cond_9

    #@ab
    .line 471
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@ad
    or-int/lit16 v3, v3, 0x1000

    #@af
    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@b1
    goto/16 :goto_0

    #@b3
    .line 442
    :cond_9
    const-string/jumbo v3, "--originating-uri"

    #@b6
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b9
    move-result v3

    #@ba
    if-eqz v3, :cond_a

    #@bc
    .line 474
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@bf
    move-result-object v3

    #@c0
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@c3
    move-result-object v3

    #@c4
    iput-object v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    #@c6
    goto/16 :goto_0

    #@c8
    .line 442
    :cond_a
    const-string/jumbo v3, "--referrer"

    #@cb
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ce
    move-result v3

    #@cf
    if-eqz v3, :cond_b

    #@d1
    .line 477
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@d4
    move-result-object v3

    #@d5
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@d8
    move-result-object v3

    #@d9
    iput-object v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    #@db
    goto/16 :goto_0

    #@dd
    .line 442
    :cond_b
    const-string/jumbo v3, "-p"

    #@e0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e3
    move-result v3

    #@e4
    if-eqz v3, :cond_c

    #@e6
    .line 480
    const/4 v3, 0x2

    #@e7
    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    #@e9
    .line 481
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@ec
    move-result-object v3

    #@ed
    iput-object v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@ef
    .line 482
    iget-object v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    #@f1
    if-nez v3, :cond_0

    #@f3
    .line 483
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@f5
    const-string/jumbo v4, "Missing inherit package name"

    #@f8
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@fb
    throw v3

    #@fc
    .line 442
    :cond_c
    const-string/jumbo v3, "-S"

    #@ff
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@102
    move-result v3

    #@103
    if-eqz v3, :cond_d

    #@105
    .line 487
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@108
    move-result-object v3

    #@109
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@10c
    move-result-wide v4

    #@10d
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    #@110
    goto/16 :goto_0

    #@112
    .line 442
    :cond_d
    const-string/jumbo v3, "--abi"

    #@115
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@118
    move-result v3

    #@119
    if-eqz v3, :cond_e

    #@11b
    .line 490
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@11e
    move-result-object v3

    #@11f
    invoke-static {v3}, Lcom/android/commands/pm/Pm;->checkAbiArgument(Ljava/lang/String;)Ljava/lang/String;

    #@122
    move-result-object v3

    #@123
    iput-object v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    #@125
    goto/16 :goto_0

    #@127
    .line 442
    :cond_e
    const-string/jumbo v3, "--ephemeral"

    #@12a
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12d
    move-result v3

    #@12e
    if-eqz v3, :cond_f

    #@130
    .line 493
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@132
    or-int/lit16 v3, v3, 0x800

    #@134
    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@136
    goto/16 :goto_0

    #@138
    .line 442
    :cond_f
    const-string/jumbo v3, "--user"

    #@13b
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13e
    move-result v3

    #@13f
    if-eqz v3, :cond_10

    #@141
    .line 496
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@144
    move-result-object v3

    #@145
    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    #@148
    move-result v3

    #@149
    iput v3, v1, Lcom/android/commands/pm/Pm$InstallParams;->userId:I

    #@14b
    goto/16 :goto_0

    #@14d
    .line 442
    :cond_10
    const-string/jumbo v3, "--install-location"

    #@150
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@153
    move-result v3

    #@154
    if-eqz v3, :cond_11

    #@156
    .line 499
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@159
    move-result-object v3

    #@15a
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@15d
    move-result v3

    #@15e
    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    #@160
    goto/16 :goto_0

    #@162
    .line 442
    :cond_11
    const-string/jumbo v3, "--force-uuid"

    #@165
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@168
    move-result v3

    #@169
    if-eqz v3, :cond_12

    #@16b
    .line 502
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@16d
    or-int/lit16 v3, v3, 0x200

    #@16f
    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@171
    .line 503
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@174
    move-result-object v3

    #@175
    iput-object v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    #@177
    .line 504
    const-string/jumbo v3, "internal"

    #@17a
    iget-object v4, v2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    #@17c
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17f
    move-result v3

    #@180
    if-eqz v3, :cond_0

    #@182
    .line 505
    iput-object v6, v2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    #@184
    goto/16 :goto_0

    #@186
    .line 442
    :cond_12
    const-string/jumbo v3, "--force-sdk"

    #@189
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18c
    move-result v3

    #@18d
    if-eqz v3, :cond_13

    #@18f
    .line 509
    iget v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@191
    or-int/lit16 v3, v3, 0x2000

    #@193
    iput v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    #@195
    goto/16 :goto_0

    #@197
    .line 512
    :cond_13
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@199
    new-instance v4, Ljava/lang/StringBuilder;

    #@19b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19e
    const-string/jumbo v5, "Unknown option "

    #@1a1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v4

    #@1a5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v4

    #@1a9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ac
    move-result-object v4

    #@1ad
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b0
    throw v3

    #@1b1
    .line 515
    :cond_14
    return-object v1
.end method

.method private nextArg()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1476
    iget v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    #@2
    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    #@4
    array-length v2, v2

    #@5
    if-lt v1, v2, :cond_0

    #@7
    .line 1477
    const/4 v1, 0x0

    #@8
    return-object v1

    #@9
    .line 1479
    :cond_0
    iget-object v1, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    #@b
    iget v2, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    #@d
    aget-object v0, v1, v2

    #@f
    .line 1480
    .local v0, "arg":Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    #@11
    add-int/lit8 v1, v1, 0x1

    #@13
    iput v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    #@15
    .line 1481
    return-object v0
.end method

.method private nextOption()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x0

    #@3
    .line 1439
    iget v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    #@5
    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    #@7
    array-length v2, v2

    #@8
    if-lt v1, v2, :cond_0

    #@a
    .line 1440
    return-object v3

    #@b
    .line 1442
    :cond_0
    iget-object v1, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    #@d
    iget v2, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    #@f
    aget-object v0, v1, v2

    #@11
    .line 1443
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v1, "-"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_1

    #@1a
    .line 1444
    return-object v3

    #@1b
    .line 1446
    :cond_1
    iget v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    #@1d
    add-int/lit8 v1, v1, 0x1

    #@1f
    iput v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    #@21
    .line 1447
    const-string/jumbo v1, "--"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_2

    #@2a
    .line 1448
    return-object v3

    #@2b
    .line 1450
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@2e
    move-result v1

    #@2f
    if-le v1, v5, :cond_4

    #@31
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    #@34
    move-result v1

    #@35
    const/16 v2, 0x2d

    #@37
    if-eq v1, v2, :cond_4

    #@39
    .line 1451
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@3c
    move-result v1

    #@3d
    if-le v1, v4, :cond_3

    #@3f
    .line 1452
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    iput-object v1, p0, Lcom/android/commands/pm/Pm;->mCurArgData:Ljava/lang/String;

    #@45
    .line 1453
    const/4 v1, 0x0

    #@46
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    return-object v1

    #@4b
    .line 1455
    :cond_3
    iput-object v3, p0, Lcom/android/commands/pm/Pm;->mCurArgData:Ljava/lang/String;

    #@4d
    .line 1456
    return-object v0

    #@4e
    .line 1459
    :cond_4
    iput-object v3, p0, Lcom/android/commands/pm/Pm;->mCurArgData:Ljava/lang/String;

    #@50
    .line 1460
    return-object v0
.end method

.method private nextOptionData()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1464
    iget-object v1, p0, Lcom/android/commands/pm/Pm;->mCurArgData:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1465
    iget-object v1, p0, Lcom/android/commands/pm/Pm;->mCurArgData:Ljava/lang/String;

    #@7
    return-object v1

    #@8
    .line 1467
    :cond_0
    iget v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    #@a
    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    #@c
    array-length v2, v2

    #@d
    if-lt v1, v2, :cond_1

    #@f
    .line 1468
    return-object v3

    #@10
    .line 1470
    :cond_1
    iget-object v1, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    #@12
    iget v2, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    #@14
    aget-object v0, v1, v2

    #@16
    .line 1471
    .local v0, "data":Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    #@18
    add-int/lit8 v1, v1, 0x1

    #@1a
    iput v1, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    #@1c
    .line 1472
    return-object v0
.end method

.method private runClear()I
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 1108
    const/4 v6, 0x0

    #@2
    .line 1109
    .local v6, "userId":I
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    .line 1110
    .local v3, "option":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@8
    const-string/jumbo v7, "--user"

    #@b
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v7

    #@f
    if-eqz v7, :cond_0

    #@11
    .line 1111
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    .line 1112
    .local v4, "optionData":Ljava/lang/String;
    if-eqz v4, :cond_1

    #@17
    invoke-static {v4}, Lcom/android/commands/pm/Pm;->isNumber(Ljava/lang/String;)Z

    #@1a
    move-result v7

    #@1b
    if-eqz v7, :cond_1

    #@1d
    .line 1116
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@20
    move-result v6

    #@21
    .line 1120
    .end local v4    # "optionData":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    .line 1121
    .local v5, "pkg":Ljava/lang/String;
    if-nez v5, :cond_2

    #@27
    .line 1122
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@29
    const-string/jumbo v8, "Error: no package specified"

    #@2c
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2f
    .line 1123
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@32
    move-result v7

    #@33
    return v7

    #@34
    .line 1113
    .end local v5    # "pkg":Ljava/lang/String;
    .restart local v4    # "optionData":Ljava/lang/String;
    :cond_1
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@36
    const-string/jumbo v8, "Error: no USER_ID specified"

    #@39
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3c
    .line 1114
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@3f
    move-result v7

    #@40
    return v7

    #@41
    .line 1126
    .end local v4    # "optionData":Ljava/lang/String;
    .restart local v5    # "pkg":Ljava/lang/String;
    :cond_2
    new-instance v2, Lcom/android/commands/pm/Pm$ClearDataObserver;

    #@43
    invoke-direct {v2}, Lcom/android/commands/pm/Pm$ClearDataObserver;-><init>()V

    #@46
    .line 1128
    .local v2, "obs":Lcom/android/commands/pm/Pm$ClearDataObserver;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@49
    move-result-object v7

    #@4a
    invoke-interface {v7, v5, v2, v6}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    #@4d
    .line 1129
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@4e
    .line 1130
    :goto_0
    :try_start_1
    iget-boolean v7, v2, Lcom/android/commands/pm/Pm$ClearDataObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    if-nez v7, :cond_3

    #@52
    .line 1132
    :try_start_2
    invoke-virtual {v2}, Lcom/android/commands/pm/Pm$ClearDataObserver;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@55
    goto :goto_0

    #@56
    .line 1133
    :catch_0
    move-exception v1

    #@57
    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@58
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :try_start_3
    monitor-exit v2

    #@59
    .line 1138
    iget-boolean v7, v2, Lcom/android/commands/pm/Pm$ClearDataObserver;->result:Z

    #@5b
    if-eqz v7, :cond_4

    #@5d
    .line 1139
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5f
    const-string/jumbo v8, "Success"

    #@62
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@65
    .line 1140
    const/4 v7, 0x0

    #@66
    return v7

    #@67
    .line 1129
    :catchall_0
    move-exception v7

    #@68
    monitor-exit v2

    #@69
    throw v7
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@6a
    .line 1145
    :catch_1
    move-exception v0

    #@6b
    .line 1146
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@6d
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@70
    move-result-object v8

    #@71
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@74
    .line 1147
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@76
    const-string/jumbo v8, "Error: Could not access the Package Manager.  Is the system running?"

    #@79
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7c
    .line 1148
    return v9

    #@7d
    .line 1142
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    :try_start_4
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@7f
    const-string/jumbo v8, "Failed"

    #@82
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    #@85
    .line 1143
    return v9
.end method

.method private runDump()I
    .locals 3

    #@0
    .prologue
    .line 669
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 670
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 671
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@8
    const-string/jumbo v2, "Error: no package specified"

    #@b
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e
    .line 672
    const/4 v1, 0x1

    #@f
    return v1

    #@10
    .line 674
    :cond_0
    sget-object v1, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    #@12
    invoke-static {v1, v0}, Landroid/app/ActivityManager;->dumpPackageStateStatic(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    #@15
    .line 675
    const/4 v1, 0x0

    #@16
    return v1
.end method

.method private runGetAppLink()I
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 786
    const/4 v4, 0x0

    #@3
    .line 789
    .local v4, "userId":I
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    .local v2, "opt":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@9
    .line 790
    const-string/jumbo v5, "--user"

    #@c
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v5

    #@10
    if-eqz v5, :cond_1

    #@12
    .line 791
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@15
    move-result-object v5

    #@16
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@19
    move-result v4

    #@1a
    .line 792
    if-gez v4, :cond_0

    #@1c
    .line 793
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1e
    const-string/jumbo v6, "Error: user must be >= 0"

    #@21
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@24
    .line 794
    return v8

    #@25
    .line 797
    :cond_1
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@27
    new-instance v6, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v7, "Error: unknown option: "

    #@2f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v6

    #@37
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3e
    .line 798
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@41
    move-result v5

    #@42
    return v5

    #@43
    .line 803
    :cond_2
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    .line 804
    .local v3, "pkg":Ljava/lang/String;
    if-nez v3, :cond_3

    #@49
    .line 805
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4b
    const-string/jumbo v6, "Error: no package specified."

    #@4e
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@51
    .line 806
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@54
    move-result v5

    #@55
    return v5

    #@56
    .line 810
    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@58
    const/4 v6, 0x0

    #@59
    invoke-interface {v5, v3, v6, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    #@5c
    move-result-object v1

    #@5d
    .line 811
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_4

    #@5f
    .line 812
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@61
    new-instance v6, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v7, "Error: package "

    #@69
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v6

    #@6d
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v6

    #@71
    const-string/jumbo v7, " not found."

    #@74
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v6

    #@78
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v6

    #@7c
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7f
    .line 813
    return v8

    #@80
    .line 816
    :cond_4
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@82
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@84
    and-int/lit8 v5, v5, 0x10

    #@86
    if-nez v5, :cond_5

    #@88
    .line 817
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@8a
    new-instance v6, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v7, "Error: package "

    #@92
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v6

    #@96
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v6

    #@9a
    const-string/jumbo v7, " does not handle web links."

    #@9d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v6

    #@a1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v6

    #@a5
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a8
    .line 818
    return v8

    #@a9
    .line 821
    :cond_5
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@ab
    iget-object v6, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@ad
    invoke-interface {v6, v3, v4}, Landroid/content/pm/IPackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I

    #@b0
    move-result v6

    #@b1
    invoke-direct {p0, v6}, Lcom/android/commands/pm/Pm;->linkStateToString(I)Ljava/lang/String;

    #@b4
    move-result-object v6

    #@b5
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@b8
    .line 828
    return v7

    #@b9
    .line 822
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    #@ba
    .line 823
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@bc
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@bf
    move-result-object v6

    #@c0
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c3
    .line 824
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@c5
    const-string/jumbo v6, "Error: Could not access the Package Manager.  Is the system running?"

    #@c8
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@cb
    .line 825
    return v8
.end method

.method private runGetInstallLocation()I
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 871
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@4
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getInstallLocation()I

    #@7
    move-result v1

    #@8
    .line 872
    .local v1, "loc":I
    const-string/jumbo v2, "invalid"

    #@b
    .line 873
    .local v2, "locStr":Ljava/lang/String;
    if-nez v1, :cond_1

    #@d
    .line 874
    const-string/jumbo v2, "auto"

    #@10
    .line 880
    :cond_0
    :goto_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@12
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    const-string/jumbo v5, "["

    #@1e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    const-string/jumbo v5, "]"

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@34
    .line 881
    return v6

    #@35
    .line 875
    :cond_1
    if-ne v1, v7, :cond_2

    #@37
    .line 876
    const-string/jumbo v2, "internal"

    #@3a
    goto :goto_0

    #@3b
    .line 877
    :cond_2
    const/4 v3, 0x2

    #@3c
    if-ne v1, v3, :cond_0

    #@3e
    .line 878
    const-string/jumbo v2, "external"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    goto :goto_0

    #@42
    .line 882
    .end local v1    # "loc":I
    .end local v2    # "locStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@43
    .line 883
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@45
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4c
    .line 884
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4e
    const-string/jumbo v4, "Error: Could not access the Package Manager.  Is the system running?"

    #@51
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@54
    .line 885
    return v7
.end method

.method private runGrantRevokePermission(Z)I
    .locals 11
    .param p1, "grant"    # Z

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    .line 1255
    const/4 v6, 0x0

    #@2
    .line 1257
    .local v6, "userId":I
    const/4 v3, 0x0

    #@3
    .line 1258
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    .local v3, "opt":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@9
    .line 1259
    const-string/jumbo v7, "--user"

    #@c
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v7

    #@10
    if-eqz v7, :cond_0

    #@12
    .line 1260
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@15
    move-result-object v7

    #@16
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@19
    move-result v6

    #@1a
    goto :goto_0

    #@1b
    .line 1264
    :cond_1
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    .line 1265
    .local v5, "pkg":Ljava/lang/String;
    if-nez v5, :cond_2

    #@21
    .line 1266
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@23
    const-string/jumbo v8, "Error: no package specified"

    #@26
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@29
    .line 1267
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@2c
    move-result v7

    #@2d
    return v7

    #@2e
    .line 1269
    :cond_2
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    .line 1270
    .local v4, "perm":Ljava/lang/String;
    if-nez v4, :cond_3

    #@34
    .line 1271
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@36
    const-string/jumbo v8, "Error: no permission specified"

    #@39
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3c
    .line 1272
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@3f
    move-result v7

    #@40
    return v7

    #@41
    .line 1276
    :cond_3
    if-eqz p1, :cond_4

    #@43
    .line 1277
    :try_start_0
    iget-object v7, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@45
    invoke-interface {v7, v5, v4, v6}, Landroid/content/pm/IPackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    #@48
    .line 1281
    :goto_1
    const/4 v7, 0x0

    #@49
    return v7

    #@4a
    .line 1279
    :cond_4
    iget-object v7, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@4c
    invoke-interface {v7, v5, v4, v6}, Landroid/content/pm/IPackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    #@4f
    goto :goto_1

    #@50
    .line 1282
    :catch_0
    move-exception v0

    #@51
    .line 1283
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@53
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@56
    move-result-object v8

    #@57
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5a
    .line 1284
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5c
    const-string/jumbo v8, "Error: Could not access the Package Manager.  Is the system running?"

    #@5f
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@62
    .line 1285
    return v10

    #@63
    .line 1289
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    #@64
    .line 1290
    .local v2, "e":Ljava/lang/SecurityException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@66
    new-instance v8, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v9, "Operation not allowed: "

    #@6e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v8

    #@72
    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    #@75
    move-result-object v9

    #@76
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v8

    #@7a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v8

    #@7e
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@81
    .line 1291
    return v10

    #@82
    .line 1286
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    #@83
    .line 1287
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@85
    new-instance v8, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v9, "Bad argument: "

    #@8d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v8

    #@91
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    #@94
    move-result-object v9

    #@95
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v8

    #@99
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v8

    #@9d
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a0
    .line 1288
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@a3
    move-result v7

    #@a4
    return v7
.end method

.method private runInstall()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 364
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->makeInstallParams()Lcom/android/commands/pm/Pm$InstallParams;

    #@5
    move-result-object v8

    #@6
    .line 365
    .local v8, "params":Lcom/android/commands/pm/Pm$InstallParams;
    iget-object v1, v8, Lcom/android/commands/pm/Pm$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    #@8
    .line 366
    iget-object v4, v8, Lcom/android/commands/pm/Pm$InstallParams;->installerPackageName:Ljava/lang/String;

    #@a
    iget v5, v8, Lcom/android/commands/pm/Pm$InstallParams;->userId:I

    #@c
    .line 365
    invoke-direct {p0, v1, v4, v5}, Lcom/android/commands/pm/Pm;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    #@f
    move-result v2

    #@10
    .line 369
    .local v2, "sessionId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    .line 370
    .local v3, "inPath":Ljava/lang/String;
    if-nez v3, :cond_0

    #@16
    iget-object v1, v8, Lcom/android/commands/pm/Pm$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    #@18
    iget-wide v4, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    #@1a
    const-wide/16 v6, 0x0

    #@1c
    cmp-long v1, v4, v6

    #@1e
    if-nez v1, :cond_0

    #@20
    .line 371
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@22
    const-string/jumbo v4, "Error: must either specify a package size or an APK file"

    #@25
    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 386
    :try_start_1
    iget-object v1, p0, Lcom/android/commands/pm/Pm;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@2a
    invoke-interface {v1, v2}, Landroid/content/pm/IPackageInstaller;->abandonSession(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    #@2d
    .line 372
    :goto_0
    return v10

    #@2e
    .line 374
    :cond_0
    :try_start_2
    iget-object v1, v8, Lcom/android/commands/pm/Pm$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    #@30
    iget-wide v4, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    #@32
    const-string/jumbo v6, "base.apk"

    #@35
    .line 375
    const/4 v7, 0x0

    #@36
    move-object v1, p0

    #@37
    .line 374
    invoke-direct/range {v1 .. v7}, Lcom/android/commands/pm/Pm;->doWriteSession(ILjava/lang/String;JLjava/lang/String;Z)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_1

    #@3d
    .line 386
    :try_start_3
    iget-object v1, p0, Lcom/android/commands/pm/Pm;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@3f
    invoke-interface {v1, v2}, Landroid/content/pm/IPackageInstaller;->abandonSession(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    #@42
    .line 376
    :goto_1
    return v10

    #@43
    .line 378
    :cond_1
    const/4 v1, 0x0

    #@44
    :try_start_4
    invoke-direct {p0, v2, v1}, Lcom/android/commands/pm/Pm;->doCommitSession(IZ)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@47
    move-result v1

    #@48
    if-eqz v1, :cond_2

    #@4a
    .line 386
    :try_start_5
    iget-object v1, p0, Lcom/android/commands/pm/Pm;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@4c
    invoke-interface {v1, v2}, Landroid/content/pm/IPackageInstaller;->abandonSession(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    #@4f
    .line 380
    :goto_2
    return v10

    #@50
    .line 382
    :cond_2
    :try_start_6
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@52
    const-string/jumbo v4, "Success"

    #@55
    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@58
    .line 386
    :try_start_7
    iget-object v1, p0, Lcom/android/commands/pm/Pm;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@5a
    invoke-interface {v1, v2}, Landroid/content/pm/IPackageInstaller;->abandonSession(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    #@5d
    .line 383
    :goto_3
    return v9

    #@5e
    .line 384
    .end local v3    # "inPath":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@5f
    .line 386
    :try_start_8
    iget-object v4, p0, Lcom/android/commands/pm/Pm;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@61
    invoke-interface {v4, v2}, Landroid/content/pm/IPackageInstaller;->abandonSession(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    #@64
    .line 384
    :goto_4
    throw v1

    #@65
    .line 387
    :catch_0
    move-exception v0

    #@66
    .local v0, "ignore":Ljava/lang/Exception;
    goto :goto_4

    #@67
    .end local v0    # "ignore":Ljava/lang/Exception;
    .restart local v3    # "inPath":Ljava/lang/String;
    :catch_1
    move-exception v0

    #@68
    .restart local v0    # "ignore":Ljava/lang/Exception;
    goto :goto_3

    #@69
    .end local v0    # "ignore":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    #@6a
    .restart local v0    # "ignore":Ljava/lang/Exception;
    goto :goto_2

    #@6b
    .end local v0    # "ignore":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    #@6c
    .restart local v0    # "ignore":Ljava/lang/Exception;
    goto :goto_1

    #@6d
    .end local v0    # "ignore":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    #@6e
    .restart local v0    # "ignore":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private runInstallAbandon()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 393
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    .line 394
    .local v0, "sessionId":I
    const/4 v1, 0x1

    #@9
    invoke-direct {p0, v0, v1}, Lcom/android/commands/pm/Pm;->doAbandonSession(IZ)I

    #@c
    move-result v1

    #@d
    return v1
.end method

.method private runInstallCommit()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 398
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    .line 399
    .local v0, "sessionId":I
    const/4 v1, 0x1

    #@9
    invoke-direct {p0, v0, v1}, Lcom/android/commands/pm/Pm;->doCommitSession(IZ)I

    #@c
    move-result v1

    #@d
    return v1
.end method

.method private runInstallCreate()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 403
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->makeInstallParams()Lcom/android/commands/pm/Pm$InstallParams;

    #@3
    move-result-object v0

    #@4
    .line 404
    .local v0, "installParams":Lcom/android/commands/pm/Pm$InstallParams;
    iget-object v2, v0, Lcom/android/commands/pm/Pm$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    #@6
    .line 405
    iget-object v3, v0, Lcom/android/commands/pm/Pm$InstallParams;->installerPackageName:Ljava/lang/String;

    #@8
    iget v4, v0, Lcom/android/commands/pm/Pm$InstallParams;->userId:I

    #@a
    .line 404
    invoke-direct {p0, v2, v3, v4}, Lcom/android/commands/pm/Pm;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    #@d
    move-result v1

    #@e
    .line 408
    .local v1, "sessionId":I
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Success: created install session ["

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    const-string/jumbo v4, "]"

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2e
    .line 409
    const/4 v2, 0x0

    #@2f
    return v2
.end method

.method private runInstallWrite()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 413
    const-wide/16 v4, -0x1

    #@2
    .line 416
    .local v4, "sizeBytes":J
    :goto_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@8
    .line 417
    const-string/jumbo v1, "-S"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 418
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@18
    move-result-wide v4

    #@19
    goto :goto_0

    #@1a
    .line 420
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1c
    new-instance v7, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v8, "Unknown option: "

    #@24
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v7

    #@30
    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v1

    #@34
    .line 424
    :cond_1
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3b
    move-result v2

    #@3c
    .line 425
    .local v2, "sessionId":I
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@3f
    move-result-object v6

    #@40
    .line 426
    .local v6, "splitName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    .line 427
    .local v3, "path":Ljava/lang/String;
    const/4 v7, 0x1

    #@45
    move-object v1, p0

    #@46
    invoke-direct/range {v1 .. v7}, Lcom/android/commands/pm/Pm;->doWriteSession(ILjava/lang/String;JLjava/lang/String;Z)I

    #@49
    move-result v1

    #@4a
    return v1
.end method

.method private runList()I
    .locals 5

    #@0
    .prologue
    .line 636
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 637
    .local v0, "type":Ljava/lang/String;
    const-string/jumbo v1, "users"

    #@7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 638
    const-string/jumbo v1, "user"

    #@10
    const/4 v2, 0x1

    #@11
    new-array v2, v2, [Ljava/lang/String;

    #@13
    const-string/jumbo v3, "list"

    #@16
    const/4 v4, 0x0

    #@17
    aput-object v3, v2, v4

    #@19
    invoke-direct {p0, v1, v2}, Lcom/android/commands/pm/Pm;->runShellCommand(Ljava/lang/String;[Ljava/lang/String;)I

    #@1c
    move-result v1

    #@1d
    return v1

    #@1e
    .line 640
    :cond_0
    const-string/jumbo v1, "package"

    #@21
    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    #@23
    invoke-direct {p0, v1, v2}, Lcom/android/commands/pm/Pm;->runShellCommand(Ljava/lang/String;[Ljava/lang/String;)I

    #@26
    move-result v1

    #@27
    return v1
.end method

.method private runPath()I
    .locals 6

    #@0
    .prologue
    .line 648
    const/4 v3, 0x0

    #@1
    .line 649
    .local v3, "userId":I
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 650
    .local v0, "option":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@7
    const-string/jumbo v4, "--user"

    #@a
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 651
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 652
    .local v1, "optionData":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@16
    invoke-static {v1}, Lcom/android/commands/pm/Pm;->isNumber(Ljava/lang/String;)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_1

    #@1c
    .line 656
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1f
    move-result v3

    #@20
    .line 660
    .end local v1    # "optionData":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    .line 661
    .local v2, "pkg":Ljava/lang/String;
    if-nez v2, :cond_2

    #@26
    .line 662
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@28
    const-string/jumbo v5, "Error: no package specified"

    #@2b
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2e
    .line 663
    const/4 v4, 0x1

    #@2f
    return v4

    #@30
    .line 653
    .end local v2    # "pkg":Ljava/lang/String;
    .restart local v1    # "optionData":Ljava/lang/String;
    :cond_1
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@32
    const-string/jumbo v5, "Error: no USER_ID specified"

    #@35
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@38
    .line 654
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@3b
    move-result v4

    #@3c
    return v4

    #@3d
    .line 665
    .end local v1    # "optionData":Ljava/lang/String;
    .restart local v2    # "pkg":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v2, v3}, Lcom/android/commands/pm/Pm;->displayPackageFilePath(Ljava/lang/String;I)I

    #@40
    move-result v4

    #@41
    return v4
.end method

.method private runResetPermissions()I
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 1297
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@3
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->resetRuntimePermissions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 1298
    const/4 v3, 0x0

    #@7
    return v3

    #@8
    .line 1306
    :catch_0
    move-exception v2

    #@9
    .line 1307
    .local v2, "e":Ljava/lang/SecurityException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@b
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v5, "Operation not allowed: "

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@26
    .line 1308
    return v6

    #@27
    .line 1303
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    #@28
    .line 1304
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2a
    new-instance v4, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v5, "Bad argument: "

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@45
    .line 1305
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@48
    move-result v3

    #@49
    return v3

    #@4a
    .line 1299
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    #@4b
    .line 1300
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4d
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@54
    .line 1301
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@56
    const-string/jumbo v4, "Error: Could not access the Package Manager.  Is the system running?"

    #@59
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5c
    .line 1302
    return v6
.end method

.method private runSetAppLink()I
    .locals 11

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v10, 0x1

    #@2
    .line 702
    const/4 v6, 0x0

    #@3
    .line 705
    .local v6, "userId":I
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    #@6
    move-result-object v4

    #@7
    .local v4, "opt":Ljava/lang/String;
    if-eqz v4, :cond_2

    #@9
    .line 706
    const-string/jumbo v7, "--user"

    #@c
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v7

    #@10
    if-eqz v7, :cond_1

    #@12
    .line 707
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@15
    move-result-object v7

    #@16
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@19
    move-result v6

    #@1a
    .line 708
    if-gez v6, :cond_0

    #@1c
    .line 709
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1e
    const-string/jumbo v8, "Error: user must be >= 0"

    #@21
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@24
    .line 710
    return v10

    #@25
    .line 713
    :cond_1
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@27
    new-instance v8, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v9, "Error: unknown option: "

    #@2f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v8

    #@33
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v8

    #@37
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v8

    #@3b
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3e
    .line 714
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@41
    move-result v7

    #@42
    return v7

    #@43
    .line 719
    :cond_2
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    .line 720
    .local v5, "pkg":Ljava/lang/String;
    if-nez v5, :cond_3

    #@49
    .line 721
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4b
    const-string/jumbo v8, "Error: no package specified."

    #@4e
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@51
    .line 722
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@54
    move-result v7

    #@55
    return v7

    #@56
    .line 726
    :cond_3
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    .line 727
    .local v2, "modeString":Ljava/lang/String;
    if-nez v2, :cond_4

    #@5c
    .line 728
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5e
    const-string/jumbo v8, "Error: no app link state specified."

    #@61
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@64
    .line 729
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@67
    move-result v7

    #@68
    return v7

    #@69
    .line 733
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@6c
    move-result-object v7

    #@6d
    const-string/jumbo v8, "undefined"

    #@70
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@73
    move-result v8

    #@74
    if-eqz v8, :cond_5

    #@76
    .line 735
    const/4 v3, 0x0

    #@77
    .line 760
    .local v3, "newMode":I
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@79
    const/4 v8, 0x0

    #@7a
    invoke-interface {v7, v5, v8, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    #@7d
    move-result-object v1

    #@7e
    .line 761
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_a

    #@80
    .line 762
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@82
    new-instance v8, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v9, "Error: package "

    #@8a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v8

    #@8e
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v8

    #@92
    const-string/jumbo v9, " not found."

    #@95
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v8

    #@99
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v8

    #@9d
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@a0
    .line 763
    return v10

    #@a1
    .line 733
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "newMode":I
    :cond_5
    const-string/jumbo v8, "always"

    #@a4
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a7
    move-result v8

    #@a8
    if-eqz v8, :cond_6

    #@aa
    .line 739
    const/4 v3, 0x2

    #@ab
    .line 740
    .restart local v3    # "newMode":I
    goto :goto_0

    #@ac
    .line 733
    .end local v3    # "newMode":I
    :cond_6
    const-string/jumbo v8, "ask"

    #@af
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b2
    move-result v8

    #@b3
    if-eqz v8, :cond_7

    #@b5
    .line 743
    const/4 v3, 0x1

    #@b6
    .line 744
    .restart local v3    # "newMode":I
    goto :goto_0

    #@b7
    .line 733
    .end local v3    # "newMode":I
    :cond_7
    const-string/jumbo v8, "always-ask"

    #@ba
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bd
    move-result v8

    #@be
    if-eqz v8, :cond_8

    #@c0
    .line 747
    const/4 v3, 0x4

    #@c1
    .line 748
    .restart local v3    # "newMode":I
    goto :goto_0

    #@c2
    .line 733
    .end local v3    # "newMode":I
    :cond_8
    const-string/jumbo v8, "never"

    #@c5
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c8
    move-result v7

    #@c9
    if-eqz v7, :cond_9

    #@cb
    .line 751
    const/4 v3, 0x3

    #@cc
    .line 752
    .restart local v3    # "newMode":I
    goto :goto_0

    #@cd
    .line 755
    .end local v3    # "newMode":I
    :cond_9
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@cf
    new-instance v8, Ljava/lang/StringBuilder;

    #@d1
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@d4
    const-string/jumbo v9, "Error: unknown app link state \'"

    #@d7
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v8

    #@db
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v8

    #@df
    const-string/jumbo v9, "\'"

    #@e2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v8

    #@e6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v8

    #@ea
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@ed
    .line 756
    return v10

    #@ee
    .line 766
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    .restart local v3    # "newMode":I
    :cond_a
    :try_start_1
    iget-object v7, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@f0
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@f2
    and-int/lit8 v7, v7, 0x10

    #@f4
    if-nez v7, :cond_b

    #@f6
    .line 767
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@f8
    new-instance v8, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    const-string/jumbo v9, "Error: package "

    #@100
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v8

    #@104
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v8

    #@108
    const-string/jumbo v9, " does not handle web links."

    #@10b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v8

    #@10f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@112
    move-result-object v8

    #@113
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@116
    .line 768
    return v10

    #@117
    .line 771
    :cond_b
    iget-object v7, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@119
    invoke-interface {v7, v5, v3, v6}, Landroid/content/pm/IPackageManager;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    #@11c
    move-result v7

    #@11d
    if-nez v7, :cond_c

    #@11f
    .line 772
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@121
    new-instance v8, Ljava/lang/StringBuilder;

    #@123
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@126
    const-string/jumbo v9, "Error: unable to update app link status for "

    #@129
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v8

    #@12d
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v8

    #@131
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@134
    move-result-object v8

    #@135
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@138
    .line 773
    return v10

    #@139
    .line 775
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    #@13a
    .line 776
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@13c
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@13f
    move-result-object v8

    #@140
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@143
    .line 777
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@145
    const-string/jumbo v8, "Error: Could not access the Package Manager.  Is the system running?"

    #@148
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@14b
    .line 778
    return v10

    #@14c
    .line 781
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_c
    return v9
.end method

.method private runSetEnabledSetting(I)I
    .locals 12
    .param p1, "state"    # I

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 1178
    const/4 v4, 0x0

    #@3
    .line 1179
    .local v4, "userId":I
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    #@6
    move-result-object v8

    #@7
    .line 1180
    .local v8, "option":Ljava/lang/String;
    if-eqz v8, :cond_0

    #@9
    const-string/jumbo v0, "--user"

    #@c
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 1181
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@15
    move-result-object v9

    #@16
    .line 1182
    .local v9, "optionData":Ljava/lang/String;
    if-eqz v9, :cond_1

    #@18
    invoke-static {v9}, Lcom/android/commands/pm/Pm;->isNumber(Ljava/lang/String;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 1186
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@21
    move-result v4

    #@22
    .line 1190
    .end local v9    # "optionData":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    .line 1191
    .local v1, "pkg":Ljava/lang/String;
    if-nez v1, :cond_2

    #@28
    .line 1192
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2a
    const-string/jumbo v2, "Error: no package or component specified"

    #@2d
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@30
    .line 1193
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@33
    move-result v0

    #@34
    return v0

    #@35
    .line 1183
    .end local v1    # "pkg":Ljava/lang/String;
    .restart local v9    # "optionData":Ljava/lang/String;
    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@37
    const-string/jumbo v2, "Error: no USER_ID specified"

    #@3a
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3d
    .line 1184
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@40
    move-result v0

    #@41
    return v0

    #@42
    .line 1195
    .end local v9    # "optionData":Ljava/lang/String;
    .restart local v1    # "pkg":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@45
    move-result-object v6

    #@46
    .line 1196
    .local v6, "cn":Landroid/content/ComponentName;
    if-nez v6, :cond_3

    #@48
    .line 1198
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@4a
    .line 1199
    new-instance v2, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v3, "shell:"

    #@52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@59
    move-result v3

    #@5a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v5

    #@62
    .line 1198
    const/4 v3, 0x0

    #@63
    move v2, p1

    #@64
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    #@67
    .line 1200
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@69
    new-instance v2, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v3, "Package "

    #@71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v2

    #@75
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v2

    #@79
    const-string/jumbo v3, " new state: "

    #@7c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v2

    #@80
    .line 1202
    iget-object v3, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@82
    invoke-interface {v3, v1, v4}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    #@85
    move-result v3

    #@86
    .line 1201
    invoke-static {v3}, Lcom/android/commands/pm/Pm;->enabledSettingToString(I)Ljava/lang/String;

    #@89
    move-result-object v3

    #@8a
    .line 1200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v2

    #@8e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v2

    #@92
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@95
    .line 1203
    return v10

    #@96
    .line 1204
    :catch_0
    move-exception v7

    #@97
    .line 1205
    .local v7, "e":Landroid/os/RemoteException;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@99
    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@9c
    move-result-object v2

    #@9d
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a0
    .line 1206
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a2
    const-string/jumbo v2, "Error: Could not access the Package Manager.  Is the system running?"

    #@a5
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a8
    .line 1207
    return v11

    #@a9
    .line 1211
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@ab
    const/4 v2, 0x0

    #@ac
    invoke-interface {v0, v6, p1, v2, v4}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    #@af
    .line 1212
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@b1
    new-instance v2, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    const-string/jumbo v3, "Component "

    #@b9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v2

    #@bd
    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@c0
    move-result-object v3

    #@c1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v2

    #@c5
    const-string/jumbo v3, " new state: "

    #@c8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v2

    #@cc
    .line 1214
    iget-object v3, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@ce
    invoke-interface {v3, v6, v4}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    #@d1
    move-result v3

    #@d2
    .line 1213
    invoke-static {v3}, Lcom/android/commands/pm/Pm;->enabledSettingToString(I)Ljava/lang/String;

    #@d5
    move-result-object v3

    #@d6
    .line 1212
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v2

    #@da
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v2

    #@de
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@e1
    .line 1215
    return v10

    #@e2
    .line 1216
    :catch_1
    move-exception v7

    #@e3
    .line 1217
    .restart local v7    # "e":Landroid/os/RemoteException;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@e5
    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@e8
    move-result-object v2

    #@e9
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@ec
    .line 1218
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@ee
    const-string/jumbo v2, "Error: Could not access the Package Manager.  Is the system running?"

    #@f1
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f4
    .line 1219
    return v11
.end method

.method private runSetHiddenSetting(Z)I
    .locals 8
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 1225
    const/4 v4, 0x0

    #@1
    .line 1226
    .local v4, "userId":I
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 1227
    .local v1, "option":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@7
    const-string/jumbo v5, "--user"

    #@a
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_0

    #@10
    .line 1228
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 1229
    .local v2, "optionData":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@16
    invoke-static {v2}, Lcom/android/commands/pm/Pm;->isNumber(Ljava/lang/String;)Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_1

    #@1c
    .line 1233
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1f
    move-result v4

    #@20
    .line 1237
    .end local v2    # "optionData":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    .line 1238
    .local v3, "pkg":Ljava/lang/String;
    if-nez v3, :cond_2

    #@26
    .line 1239
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@28
    const-string/jumbo v6, "Error: no package or component specified"

    #@2b
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2e
    .line 1240
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@31
    move-result v5

    #@32
    return v5

    #@33
    .line 1230
    .end local v3    # "pkg":Ljava/lang/String;
    .restart local v2    # "optionData":Ljava/lang/String;
    :cond_1
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@35
    const-string/jumbo v6, "Error: no USER_ID specified"

    #@38
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3b
    .line 1231
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@3e
    move-result v5

    #@3f
    return v5

    #@40
    .line 1243
    .end local v2    # "optionData":Ljava/lang/String;
    .restart local v3    # "pkg":Ljava/lang/String;
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@42
    invoke-interface {v5, v3, p1, v4}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    #@45
    .line 1244
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@47
    new-instance v6, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v7, "Package "

    #@4f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v6

    #@53
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v6

    #@57
    const-string/jumbo v7, " new hidden state: "

    #@5a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v6

    #@5e
    .line 1245
    iget-object v7, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@60
    invoke-interface {v7, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    #@63
    move-result v7

    #@64
    .line 1244
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@67
    move-result-object v6

    #@68
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v6

    #@6c
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6f
    .line 1246
    const/4 v5, 0x0

    #@70
    return v5

    #@71
    .line 1247
    :catch_0
    move-exception v0

    #@72
    .line 1248
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@74
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@77
    move-result-object v6

    #@78
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7b
    .line 1249
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@7d
    const-string/jumbo v6, "Error: Could not access the Package Manager.  Is the system running?"

    #@80
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@83
    .line 1250
    const/4 v5, 0x1

    #@84
    return v5
.end method

.method private runSetInstallLocation()I
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 845
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 846
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    .line 847
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@9
    const-string/jumbo v5, "Error: no install location specified."

    #@c
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f
    .line 848
    return v6

    #@10
    .line 851
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v3

    #@14
    .line 857
    .local v3, "loc":I
    :try_start_1
    iget-object v4, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@16
    invoke-interface {v4, v3}, Landroid/content/pm/IPackageManager;->setInstallLocation(I)Z

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_1

    #@1c
    .line 858
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1e
    const-string/jumbo v5, "Error: install location has to be a number."

    #@21
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@24
    .line 859
    return v6

    #@25
    .line 852
    .end local v3    # "loc":I
    :catch_0
    move-exception v2

    #@26
    .line 853
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@28
    const-string/jumbo v5, "Error: install location has to be a number."

    #@2b
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2e
    .line 854
    return v6

    #@2f
    .line 861
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "loc":I
    :cond_1
    const/4 v4, 0x0

    #@30
    return v4

    #@31
    .line 862
    :catch_1
    move-exception v1

    #@32
    .line 863
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@34
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3b
    .line 864
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3d
    const-string/jumbo v5, "Error: Could not access the Package Manager.  Is the system running?"

    #@40
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@43
    .line 865
    return v6
.end method

.method private runSetInstaller()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 890
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 891
    .local v1, "targetPackage":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 893
    .local v0, "installerPackageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@a
    if-nez v0, :cond_1

    #@c
    .line 894
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@e
    .line 895
    const-string/jumbo v3, "must provide both target and installer package names"

    #@11
    .line 894
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v2

    #@15
    .line 898
    :cond_1
    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@17
    invoke-interface {v2, v1, v0}, Landroid/content/pm/IPackageManager;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 899
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1c
    const-string/jumbo v3, "Success"

    #@1f
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@22
    .line 900
    const/4 v2, 0x0

    #@23
    return v2
.end method

.method private runSetPermissionEnforced()I
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 1313
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@4
    move-result-object v5

    #@5
    .line 1314
    .local v5, "permission":Ljava/lang/String;
    if-nez v5, :cond_0

    #@7
    .line 1315
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@9
    const-string/jumbo v7, "Error: no permission specified"

    #@c
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f
    .line 1316
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@12
    move-result v6

    #@13
    return v6

    #@14
    .line 1318
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    .line 1319
    .local v4, "enforcedRaw":Ljava/lang/String;
    if-nez v4, :cond_1

    #@1a
    .line 1320
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1c
    const-string/jumbo v7, "Error: no enforcement specified"

    #@1f
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@22
    .line 1321
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@25
    move-result v6

    #@26
    return v6

    #@27
    .line 1323
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@2a
    move-result v3

    #@2b
    .line 1325
    .local v3, "enforced":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@2d
    invoke-interface {v6, v5, v3}, Landroid/content/pm/IPackageManager;->setPermissionEnforced(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 1326
    const/4 v6, 0x0

    #@31
    return v6

    #@32
    .line 1334
    :catch_0
    move-exception v2

    #@33
    .line 1335
    .local v2, "e":Ljava/lang/SecurityException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@35
    new-instance v7, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v8, "Operation not allowed: "

    #@3d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v7

    #@41
    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    #@44
    move-result-object v8

    #@45
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v7

    #@49
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v7

    #@4d
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@50
    .line 1336
    return v9

    #@51
    .line 1331
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    #@52
    .line 1332
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@54
    new-instance v7, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v8, "Bad argument: "

    #@5c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v7

    #@60
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    #@63
    move-result-object v8

    #@64
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v7

    #@68
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v7

    #@6c
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6f
    .line 1333
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@72
    move-result v6

    #@73
    return v6

    #@74
    .line 1327
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    #@75
    .line 1328
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@77
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@7a
    move-result-object v7

    #@7b
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7e
    .line 1329
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@80
    const-string/jumbo v7, "Error: Could not access the Package Manager.  Is the system running?"

    #@83
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@86
    .line 1330
    return v9
.end method

.method private runShellCommand(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 288
    new-instance v7, Landroid/os/HandlerThread;

    #@2
    const-string/jumbo v0, "results"

    #@5
    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@8
    .line 289
    .local v7, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    #@b
    .line 291
    :try_start_0
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@e
    move-result-object v0

    #@f
    .line 292
    sget-object v1, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    #@11
    sget-object v2, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    #@13
    sget-object v3, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    #@15
    .line 293
    new-instance v5, Landroid/os/ResultReceiver;

    #@17
    new-instance v4, Landroid/os/Handler;

    #@19
    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@1c
    move-result-object v8

    #@1d
    invoke-direct {v4, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@20
    invoke-direct {v5, v4}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    #@23
    move-object v4, p2

    #@24
    .line 291
    invoke-interface/range {v0 .. v5}, Landroid/os/IBinder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 294
    const/4 v0, 0x0

    #@28
    .line 298
    invoke-virtual {v7}, Landroid/os/HandlerThread;->quitSafely()Z

    #@2b
    .line 294
    return v0

    #@2c
    .line 295
    :catch_0
    move-exception v6

    #@2d
    .line 296
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    .line 298
    invoke-virtual {v7}, Landroid/os/HandlerThread;->quitSafely()Z

    #@33
    .line 300
    const/4 v0, -0x1

    #@34
    return v0

    #@35
    .line 297
    .end local v6    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    #@36
    .line 298
    invoke-virtual {v7}, Landroid/os/HandlerThread;->quitSafely()Z

    #@39
    .line 297
    throw v0
.end method

.method private runTrimCaches()I
    .locals 19

    #@0
    .prologue
    .line 1356
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v12

    #@4
    .line 1357
    .local v12, "size":Ljava/lang/String;
    if-nez v12, :cond_0

    #@6
    .line 1358
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@8
    const-string/jumbo v17, "Error: no size specified"

    #@b
    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e
    .line 1359
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@11
    move-result v16

    #@12
    return v16

    #@13
    .line 1361
    :cond_0
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@16
    move-result v8

    #@17
    .line 1362
    .local v8, "len":I
    const-wide/16 v10, 0x1

    #@19
    .line 1363
    .local v10, "multiplier":J
    const/16 v16, 0x1

    #@1b
    move/from16 v0, v16

    #@1d
    if-le v8, v0, :cond_2

    #@1f
    .line 1364
    add-int/lit8 v16, v8, -0x1

    #@21
    move/from16 v0, v16

    #@23
    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    #@26
    move-result v2

    #@27
    .line 1365
    .local v2, "c":C
    const/16 v16, 0x4b

    #@29
    move/from16 v0, v16

    #@2b
    if-eq v2, v0, :cond_1

    #@2d
    const/16 v16, 0x6b

    #@2f
    move/from16 v0, v16

    #@31
    if-ne v2, v0, :cond_4

    #@33
    .line 1366
    :cond_1
    const-wide/16 v10, 0x400

    #@35
    .line 1375
    :goto_0
    add-int/lit8 v16, v8, -0x1

    #@37
    const/16 v17, 0x0

    #@39
    move/from16 v0, v17

    #@3b
    move/from16 v1, v16

    #@3d
    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@40
    move-result-object v12

    #@41
    .line 1379
    .end local v2    # "c":C
    :cond_2
    :try_start_0
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    #@44
    move-result-wide v16

    #@45
    mul-long v14, v16, v10

    #@47
    .line 1384
    .local v14, "sizeVal":J
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@4a
    move-result-object v13

    #@4b
    .line 1385
    .local v13, "volumeUuid":Ljava/lang/String;
    const-string/jumbo v16, "internal"

    #@4e
    move-object/from16 v0, v16

    #@50
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v16

    #@54
    if-eqz v16, :cond_3

    #@56
    .line 1386
    const/4 v13, 0x0

    #@57
    .line 1388
    .end local v13    # "volumeUuid":Ljava/lang/String;
    :cond_3
    new-instance v9, Lcom/android/commands/pm/Pm$ClearDataObserver;

    #@59
    invoke-direct {v9}, Lcom/android/commands/pm/Pm$ClearDataObserver;-><init>()V

    #@5c
    .line 1390
    .local v9, "obs":Lcom/android/commands/pm/Pm$ClearDataObserver;
    :try_start_1
    move-object/from16 v0, p0

    #@5e
    iget-object v0, v0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@60
    move-object/from16 v16, v0

    #@62
    move-object/from16 v0, v16

    #@64
    invoke-interface {v0, v13, v14, v15, v9}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V

    #@67
    .line 1391
    monitor-enter v9
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3

    #@68
    .line 1392
    :goto_1
    :try_start_2
    iget-boolean v0, v9, Lcom/android/commands/pm/Pm$ClearDataObserver;->finished:Z

    #@6a
    move/from16 v16, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6c
    if-nez v16, :cond_9

    #@6e
    .line 1394
    :try_start_3
    invoke-virtual {v9}, Lcom/android/commands/pm/Pm$ClearDataObserver;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@71
    goto :goto_1

    #@72
    .line 1395
    :catch_0
    move-exception v5

    #@73
    .local v5, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    #@74
    .line 1367
    .end local v5    # "e":Ljava/lang/InterruptedException;
    .end local v9    # "obs":Lcom/android/commands/pm/Pm$ClearDataObserver;
    .end local v14    # "sizeVal":J
    .restart local v2    # "c":C
    :cond_4
    const/16 v16, 0x4d

    #@76
    move/from16 v0, v16

    #@78
    if-eq v2, v0, :cond_5

    #@7a
    const/16 v16, 0x6d

    #@7c
    move/from16 v0, v16

    #@7e
    if-ne v2, v0, :cond_6

    #@80
    .line 1368
    :cond_5
    const-wide/32 v10, 0x100000

    #@83
    .line 1367
    goto :goto_0

    #@84
    .line 1369
    :cond_6
    const/16 v16, 0x47

    #@86
    move/from16 v0, v16

    #@88
    if-eq v2, v0, :cond_7

    #@8a
    const/16 v16, 0x67

    #@8c
    move/from16 v0, v16

    #@8e
    if-ne v2, v0, :cond_8

    #@90
    .line 1370
    :cond_7
    const-wide/32 v10, 0x40000000

    #@93
    .line 1369
    goto :goto_0

    #@94
    .line 1372
    :cond_8
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@96
    new-instance v17, Ljava/lang/StringBuilder;

    #@98
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v18, "Invalid suffix: "

    #@9e
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v17

    #@a2
    move-object/from16 v0, v17

    #@a4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v17

    #@a8
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v17

    #@ac
    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@af
    .line 1373
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@b2
    move-result v16

    #@b3
    return v16

    #@b4
    .line 1380
    .end local v2    # "c":C
    :catch_1
    move-exception v6

    #@b5
    .line 1381
    .local v6, "e":Ljava/lang/NumberFormatException;
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@b7
    new-instance v17, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    const-string/jumbo v18, "Error: expected number at: "

    #@bf
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v17

    #@c3
    move-object/from16 v0, v17

    #@c5
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v17

    #@c9
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cc
    move-result-object v17

    #@cd
    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d0
    .line 1382
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@d3
    move-result v16

    #@d4
    return v16

    #@d5
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v9    # "obs":Lcom/android/commands/pm/Pm$ClearDataObserver;
    .restart local v14    # "sizeVal":J
    :cond_9
    :try_start_4
    monitor-exit v9

    #@d6
    .line 1399
    const/16 v16, 0x0

    #@d8
    return v16

    #@d9
    .line 1391
    :catchall_0
    move-exception v16

    #@da
    monitor-exit v9

    #@db
    throw v16
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3

    #@dc
    .line 1400
    :catch_2
    move-exception v3

    #@dd
    .line 1401
    .local v3, "e":Landroid/os/RemoteException;
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@df
    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@e2
    move-result-object v17

    #@e3
    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e6
    .line 1402
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@e8
    const-string/jumbo v17, "Error: Could not access the Package Manager.  Is the system running?"

    #@eb
    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@ee
    .line 1403
    const/16 v16, 0x1

    #@f0
    return v16

    #@f1
    .line 1407
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v7

    #@f2
    .line 1408
    .local v7, "e":Ljava/lang/SecurityException;
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@f4
    new-instance v17, Ljava/lang/StringBuilder;

    #@f6
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@f9
    const-string/jumbo v18, "Operation not allowed: "

    #@fc
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v17

    #@100
    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    #@103
    move-result-object v18

    #@104
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v17

    #@108
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10b
    move-result-object v17

    #@10c
    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@10f
    .line 1409
    const/16 v16, 0x1

    #@111
    return v16

    #@112
    .line 1404
    .end local v7    # "e":Ljava/lang/SecurityException;
    :catch_4
    move-exception v4

    #@113
    .line 1405
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@115
    new-instance v17, Ljava/lang/StringBuilder;

    #@117
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@11a
    const-string/jumbo v18, "Bad argument: "

    #@11d
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v17

    #@121
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    #@124
    move-result-object v18

    #@125
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v17

    #@129
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12c
    move-result-object v17

    #@12d
    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@130
    .line 1406
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@133
    move-result v16

    #@134
    return v16
.end method

.method private runUninstall()I
    .locals 2

    #@0
    .prologue
    .line 644
    const-string/jumbo v0, "package"

    #@3
    iget-object v1, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    #@5
    invoke-direct {p0, v0, v1}, Lcom/android/commands/pm/Pm;->runShellCommand(Ljava/lang/String;[Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method private static showUsage()I
    .locals 2

    #@0
    .prologue
    .line 1485
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    const-string/jumbo v1, "usage: pm path [--user USER_ID] PACKAGE"

    #@5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8
    .line 1486
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a
    const-string/jumbo v1, "       pm dump PACKAGE"

    #@d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@10
    .line 1487
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@12
    const-string/jumbo v1, "       pm install [-lrtsfd] [-i PACKAGE] [--user USER_ID] [PATH]"

    #@15
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@18
    .line 1488
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1a
    const-string/jumbo v1, "       pm install-create [-lrtsfdp] [-i PACKAGE] [-S BYTES]"

    #@1d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@20
    .line 1489
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@22
    const-string/jumbo v1, "               [--install-location 0/1/2]"

    #@25
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    .line 1490
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2a
    const-string/jumbo v1, "               [--force-uuid internal|UUID]"

    #@2d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@30
    .line 1491
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@32
    const-string/jumbo v1, "       pm install-write [-S BYTES] SESSION_ID SPLIT_NAME [PATH]"

    #@35
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@38
    .line 1492
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3a
    const-string/jumbo v1, "       pm install-commit SESSION_ID"

    #@3d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@40
    .line 1493
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@42
    const-string/jumbo v1, "       pm install-abandon SESSION_ID"

    #@45
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@48
    .line 1494
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4a
    const-string/jumbo v1, "       pm uninstall [-k] [--user USER_ID] PACKAGE"

    #@4d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@50
    .line 1495
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@52
    const-string/jumbo v1, "       pm set-installer PACKAGE INSTALLER"

    #@55
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@58
    .line 1496
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5a
    const-string/jumbo v1, "       pm move-package PACKAGE [internal|UUID]"

    #@5d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@60
    .line 1497
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@62
    const-string/jumbo v1, "       pm move-primary-storage [internal|UUID]"

    #@65
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@68
    .line 1498
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@6a
    const-string/jumbo v1, "       pm clear [--user USER_ID] PACKAGE"

    #@6d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@70
    .line 1499
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@72
    const-string/jumbo v1, "       pm enable [--user USER_ID] PACKAGE_OR_COMPONENT"

    #@75
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@78
    .line 1500
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@7a
    const-string/jumbo v1, "       pm disable [--user USER_ID] PACKAGE_OR_COMPONENT"

    #@7d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@80
    .line 1501
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@82
    const-string/jumbo v1, "       pm disable-user [--user USER_ID] PACKAGE_OR_COMPONENT"

    #@85
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@88
    .line 1502
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@8a
    const-string/jumbo v1, "       pm disable-until-used [--user USER_ID] PACKAGE_OR_COMPONENT"

    #@8d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@90
    .line 1503
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@92
    const-string/jumbo v1, "       pm default-state [--user USER_ID] PACKAGE_OR_COMPONENT"

    #@95
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@98
    .line 1504
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@9a
    const-string/jumbo v1, "       pm hide [--user USER_ID] PACKAGE_OR_COMPONENT"

    #@9d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a0
    .line 1505
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a2
    const-string/jumbo v1, "       pm unhide [--user USER_ID] PACKAGE_OR_COMPONENT"

    #@a5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a8
    .line 1506
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@aa
    const-string/jumbo v1, "       pm grant [--user USER_ID] PACKAGE PERMISSION"

    #@ad
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b0
    .line 1507
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@b2
    const-string/jumbo v1, "       pm revoke [--user USER_ID] PACKAGE PERMISSION"

    #@b5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b8
    .line 1508
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@ba
    const-string/jumbo v1, "       pm reset-permissions"

    #@bd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c0
    .line 1509
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@c2
    const-string/jumbo v1, "       pm set-app-link [--user USER_ID] PACKAGE {always|ask|never|undefined}"

    #@c5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c8
    .line 1510
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@ca
    const-string/jumbo v1, "       pm get-app-link [--user USER_ID] PACKAGE"

    #@cd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d0
    .line 1511
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@d2
    const-string/jumbo v1, "       pm set-install-location [0/auto] [1/internal] [2/external]"

    #@d5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d8
    .line 1512
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@da
    const-string/jumbo v1, "       pm get-install-location"

    #@dd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e0
    .line 1513
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@e2
    const-string/jumbo v1, "       pm set-permission-enforced PERMISSION [true|false]"

    #@e5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e8
    .line 1514
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@ea
    const-string/jumbo v1, "       pm trim-caches DESIRED_FREE_SPACE [internal|UUID]"

    #@ed
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f0
    .line 1515
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@f2
    const-string/jumbo v1, "       pm create-user [--profileOf USER_ID] [--managed] [--restricted] [--ephemeral] [--guest] USER_NAME"

    #@f5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f8
    .line 1516
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@fa
    const-string/jumbo v1, "       pm remove-user USER_ID"

    #@fd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@100
    .line 1517
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@102
    const-string/jumbo v1, "       pm get-max-users"

    #@105
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@108
    .line 1518
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@10a
    const-string/jumbo v1, ""

    #@10d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@110
    .line 1519
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@112
    const-string/jumbo v1, "NOTE: \'pm list\' commands have moved! Run \'adb shell cmd package\'"

    #@115
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@118
    .line 1520
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@11a
    const-string/jumbo v1, "  to display the new commands."

    #@11d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@120
    .line 1521
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@122
    const-string/jumbo v1, ""

    #@125
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@128
    .line 1522
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@12a
    const-string/jumbo v1, "pm path: print the path to the .apk of the given PACKAGE."

    #@12d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@130
    .line 1523
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@132
    const-string/jumbo v1, ""

    #@135
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@138
    .line 1524
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@13a
    const-string/jumbo v1, "pm dump: print system state associated with the given PACKAGE."

    #@13d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@140
    .line 1525
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@142
    const-string/jumbo v1, ""

    #@145
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@148
    .line 1526
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@14a
    const-string/jumbo v1, "pm install: install a single legacy package"

    #@14d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@150
    .line 1527
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@152
    const-string/jumbo v1, "pm install-create: create an install session"

    #@155
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@158
    .line 1528
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@15a
    const-string/jumbo v1, "    -l: forward lock application"

    #@15d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@160
    .line 1529
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@162
    const-string/jumbo v1, "    -r: replace existing application"

    #@165
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@168
    .line 1530
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@16a
    const-string/jumbo v1, "    -t: allow test packages"

    #@16d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@170
    .line 1531
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@172
    const-string/jumbo v1, "    -i: specify the installer package name"

    #@175
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@178
    .line 1532
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@17a
    const-string/jumbo v1, "    -s: install application on sdcard"

    #@17d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@180
    .line 1533
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@182
    const-string/jumbo v1, "    -f: install application on internal flash"

    #@185
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@188
    .line 1534
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@18a
    const-string/jumbo v1, "    -d: allow version code downgrade (debuggable packages only)"

    #@18d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@190
    .line 1535
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@192
    const-string/jumbo v1, "    -p: partial application install"

    #@195
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@198
    .line 1536
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@19a
    const-string/jumbo v1, "    -g: grant all runtime permissions"

    #@19d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1a0
    .line 1537
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1a2
    const-string/jumbo v1, "    -S: size in bytes of entire session"

    #@1a5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1a8
    .line 1538
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1aa
    const-string/jumbo v1, ""

    #@1ad
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1b0
    .line 1539
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1b2
    const-string/jumbo v1, "pm install-write: write a package into existing session; path may"

    #@1b5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1b8
    .line 1540
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1ba
    const-string/jumbo v1, "  be \'-\' to read from stdin"

    #@1bd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1c0
    .line 1541
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1c2
    const-string/jumbo v1, "    -S: size in bytes of package, required for stdin"

    #@1c5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1c8
    .line 1542
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1ca
    const-string/jumbo v1, ""

    #@1cd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d0
    .line 1543
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1d2
    const-string/jumbo v1, "pm install-commit: perform install of fully staged session"

    #@1d5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d8
    .line 1544
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1da
    const-string/jumbo v1, "pm install-abandon: abandon session"

    #@1dd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1e0
    .line 1545
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1e2
    const-string/jumbo v1, ""

    #@1e5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1e8
    .line 1546
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1ea
    const-string/jumbo v1, "pm set-installer: set installer package name"

    #@1ed
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1f0
    .line 1547
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1f2
    const-string/jumbo v1, ""

    #@1f5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1f8
    .line 1548
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1fa
    const-string/jumbo v1, "pm uninstall: removes a package from the system. Options:"

    #@1fd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@200
    .line 1549
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@202
    const-string/jumbo v1, "    -k: keep the data and cache directories around after package removal."

    #@205
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@208
    .line 1550
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@20a
    const-string/jumbo v1, ""

    #@20d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@210
    .line 1551
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@212
    const-string/jumbo v1, "pm clear: deletes all data associated with a package."

    #@215
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@218
    .line 1552
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@21a
    const-string/jumbo v1, ""

    #@21d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@220
    .line 1553
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@222
    const-string/jumbo v1, "pm enable, disable, disable-user, disable-until-used, default-state:"

    #@225
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@228
    .line 1554
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@22a
    const-string/jumbo v1, "  these commands change the enabled state of a given package or"

    #@22d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@230
    .line 1555
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@232
    const-string/jumbo v1, "  component (written as \"package/class\")."

    #@235
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@238
    .line 1556
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@23a
    const-string/jumbo v1, ""

    #@23d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@240
    .line 1557
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@242
    const-string/jumbo v1, "pm grant, revoke: these commands either grant or revoke permissions"

    #@245
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@248
    .line 1558
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@24a
    const-string/jumbo v1, "    to apps. The permissions must be declared as used in the app\'s"

    #@24d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@250
    .line 1559
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@252
    const-string/jumbo v1, "    manifest, be runtime permissions (protection level dangerous),"

    #@255
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@258
    .line 1560
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@25a
    const-string/jumbo v1, "    and the app targeting SDK greater than Lollipop MR1."

    #@25d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@260
    .line 1561
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@262
    const-string/jumbo v1, ""

    #@265
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@268
    .line 1562
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@26a
    const-string/jumbo v1, "pm reset-permissions: revert all runtime permissions to their default state."

    #@26d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@270
    .line 1563
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@272
    const-string/jumbo v1, ""

    #@275
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@278
    .line 1564
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@27a
    const-string/jumbo v1, "pm get-install-location: returns the current install location."

    #@27d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@280
    .line 1565
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@282
    const-string/jumbo v1, "    0 [auto]: Let system decide the best location"

    #@285
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@288
    .line 1566
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@28a
    const-string/jumbo v1, "    1 [internal]: Install on internal device storage"

    #@28d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@290
    .line 1567
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@292
    const-string/jumbo v1, "    2 [external]: Install on external media"

    #@295
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@298
    .line 1568
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@29a
    const-string/jumbo v1, ""

    #@29d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2a0
    .line 1569
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2a2
    const-string/jumbo v1, "pm set-install-location: changes the default install location."

    #@2a5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2a8
    .line 1570
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2aa
    const-string/jumbo v1, "  NOTE: this is only intended for debugging; using this can cause"

    #@2ad
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2b0
    .line 1571
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2b2
    const-string/jumbo v1, "  applications to break and other undersireable behavior."

    #@2b5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2b8
    .line 1572
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2ba
    const-string/jumbo v1, "    0 [auto]: Let system decide the best location"

    #@2bd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2c0
    .line 1573
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2c2
    const-string/jumbo v1, "    1 [internal]: Install on internal device storage"

    #@2c5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2c8
    .line 1574
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2ca
    const-string/jumbo v1, "    2 [external]: Install on external media"

    #@2cd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2d0
    .line 1575
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2d2
    const-string/jumbo v1, ""

    #@2d5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2d8
    .line 1576
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2da
    const-string/jumbo v1, "pm trim-caches: trim cache files to reach the given free space."

    #@2dd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2e0
    .line 1577
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2e2
    const-string/jumbo v1, ""

    #@2e5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2e8
    .line 1578
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2ea
    const-string/jumbo v1, "pm create-user: create a new user with the given USER_NAME,"

    #@2ed
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2f0
    .line 1579
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2f2
    const-string/jumbo v1, "  printing the new user identifier of the user."

    #@2f5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2f8
    .line 1580
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2fa
    const-string/jumbo v1, ""

    #@2fd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@300
    .line 1581
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@302
    const-string/jumbo v1, "pm remove-user: remove the user with the given USER_IDENTIFIER,"

    #@305
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@308
    .line 1582
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@30a
    const-string/jumbo v1, "  deleting all data associated with that user"

    #@30d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@310
    .line 1583
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@312
    const-string/jumbo v1, ""

    #@315
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@318
    .line 1584
    const/4 v0, 0x1

    #@319
    return v0
.end method

.method private translateUserId(ILjava/lang/String;)I
    .locals 7
    .param p1, "userId"    # I
    .param p2, "logContext"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 332
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@4
    move-result v0

    #@5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@8
    move-result v1

    #@9
    .line 333
    const-string/jumbo v6, "pm command"

    #@c
    move v2, p1

    #@d
    move v4, v3

    #@e
    move-object v5, p2

    #@f
    .line 332
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@12
    move-result v0

    #@13
    return v0
.end method


# virtual methods
.method public run([Ljava/lang/String;)I
    .locals 7
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v5, 0x1

    #@4
    .line 107
    const/4 v1, 0x0

    #@5
    .line 108
    .local v1, "validCommand":Z
    array-length v2, p1

    #@6
    if-ge v2, v5, :cond_0

    #@8
    .line 109
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@b
    move-result v2

    #@c
    return v2

    #@d
    .line 111
    :cond_0
    const-string/jumbo v2, "account"

    #@10
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@13
    move-result-object v2

    #@14
    invoke-static {v2}, Landroid/accounts/IAccountManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManager;

    #@17
    move-result-object v2

    #@18
    iput-object v2, p0, Lcom/android/commands/pm/Pm;->mAm:Landroid/accounts/IAccountManager;

    #@1a
    .line 112
    const-string/jumbo v2, "user"

    #@1d
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@20
    move-result-object v2

    #@21
    invoke-static {v2}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    #@24
    move-result-object v2

    #@25
    iput-object v2, p0, Lcom/android/commands/pm/Pm;->mUm:Landroid/os/IUserManager;

    #@27
    .line 113
    const-string/jumbo v2, "package"

    #@2a
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    #@31
    move-result-object v2

    #@32
    iput-object v2, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@34
    .line 115
    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@36
    if-nez v2, :cond_1

    #@38
    .line 116
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3a
    const-string/jumbo v3, "Error: Could not access the Package Manager.  Is the system running?"

    #@3d
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@40
    .line 117
    return v5

    #@41
    .line 119
    :cond_1
    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@43
    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    #@46
    move-result-object v2

    #@47
    iput-object v2, p0, Lcom/android/commands/pm/Pm;->mInstaller:Landroid/content/pm/IPackageInstaller;

    #@49
    .line 121
    iput-object p1, p0, Lcom/android/commands/pm/Pm;->mArgs:[Ljava/lang/String;

    #@4b
    .line 122
    aget-object v0, p1, v3

    #@4d
    .line 123
    .local v0, "op":Ljava/lang/String;
    iput v5, p0, Lcom/android/commands/pm/Pm;->mNextArg:I

    #@4f
    .line 125
    const-string/jumbo v2, "list"

    #@52
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v2

    #@56
    if-eqz v2, :cond_2

    #@58
    .line 126
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runList()I

    #@5b
    move-result v2

    #@5c
    return v2

    #@5d
    .line 129
    :cond_2
    const-string/jumbo v2, "path"

    #@60
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v2

    #@64
    if-eqz v2, :cond_3

    #@66
    .line 130
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runPath()I

    #@69
    move-result v2

    #@6a
    return v2

    #@6b
    .line 133
    :cond_3
    const-string/jumbo v2, "dump"

    #@6e
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@71
    move-result v2

    #@72
    if-eqz v2, :cond_4

    #@74
    .line 134
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runDump()I

    #@77
    move-result v2

    #@78
    return v2

    #@79
    .line 137
    :cond_4
    const-string/jumbo v2, "install"

    #@7c
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7f
    move-result v2

    #@80
    if-eqz v2, :cond_5

    #@82
    .line 138
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runInstall()I

    #@85
    move-result v2

    #@86
    return v2

    #@87
    .line 141
    :cond_5
    const-string/jumbo v2, "install-create"

    #@8a
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8d
    move-result v2

    #@8e
    if-eqz v2, :cond_6

    #@90
    .line 142
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runInstallCreate()I

    #@93
    move-result v2

    #@94
    return v2

    #@95
    .line 145
    :cond_6
    const-string/jumbo v2, "install-write"

    #@98
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9b
    move-result v2

    #@9c
    if-eqz v2, :cond_7

    #@9e
    .line 146
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runInstallWrite()I

    #@a1
    move-result v2

    #@a2
    return v2

    #@a3
    .line 149
    :cond_7
    const-string/jumbo v2, "install-commit"

    #@a6
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a9
    move-result v2

    #@aa
    if-eqz v2, :cond_8

    #@ac
    .line 150
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runInstallCommit()I

    #@af
    move-result v2

    #@b0
    return v2

    #@b1
    .line 153
    :cond_8
    const-string/jumbo v2, "install-abandon"

    #@b4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b7
    move-result v2

    #@b8
    if-nez v2, :cond_9

    #@ba
    const-string/jumbo v2, "install-destroy"

    #@bd
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c0
    move-result v2

    #@c1
    if-eqz v2, :cond_a

    #@c3
    .line 154
    :cond_9
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runInstallAbandon()I

    #@c6
    move-result v2

    #@c7
    return v2

    #@c8
    .line 157
    :cond_a
    const-string/jumbo v2, "set-installer"

    #@cb
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ce
    move-result v2

    #@cf
    if-eqz v2, :cond_b

    #@d1
    .line 158
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runSetInstaller()I

    #@d4
    move-result v2

    #@d5
    return v2

    #@d6
    .line 161
    :cond_b
    const-string/jumbo v2, "uninstall"

    #@d9
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@dc
    move-result v2

    #@dd
    if-eqz v2, :cond_c

    #@df
    .line 162
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runUninstall()I

    #@e2
    move-result v2

    #@e3
    return v2

    #@e4
    .line 165
    :cond_c
    const-string/jumbo v2, "clear"

    #@e7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ea
    move-result v2

    #@eb
    if-eqz v2, :cond_d

    #@ed
    .line 166
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runClear()I

    #@f0
    move-result v2

    #@f1
    return v2

    #@f2
    .line 169
    :cond_d
    const-string/jumbo v2, "enable"

    #@f5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f8
    move-result v2

    #@f9
    if-eqz v2, :cond_e

    #@fb
    .line 170
    invoke-direct {p0, v5}, Lcom/android/commands/pm/Pm;->runSetEnabledSetting(I)I

    #@fe
    move-result v2

    #@ff
    return v2

    #@100
    .line 173
    :cond_e
    const-string/jumbo v2, "disable"

    #@103
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@106
    move-result v2

    #@107
    if-eqz v2, :cond_f

    #@109
    .line 174
    invoke-direct {p0, v4}, Lcom/android/commands/pm/Pm;->runSetEnabledSetting(I)I

    #@10c
    move-result v2

    #@10d
    return v2

    #@10e
    .line 177
    :cond_f
    const-string/jumbo v2, "disable-user"

    #@111
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@114
    move-result v2

    #@115
    if-eqz v2, :cond_10

    #@117
    .line 178
    invoke-direct {p0, v6}, Lcom/android/commands/pm/Pm;->runSetEnabledSetting(I)I

    #@11a
    move-result v2

    #@11b
    return v2

    #@11c
    .line 181
    :cond_10
    const-string/jumbo v2, "disable-until-used"

    #@11f
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@122
    move-result v2

    #@123
    if-eqz v2, :cond_11

    #@125
    .line 182
    const/4 v2, 0x4

    #@126
    invoke-direct {p0, v2}, Lcom/android/commands/pm/Pm;->runSetEnabledSetting(I)I

    #@129
    move-result v2

    #@12a
    return v2

    #@12b
    .line 185
    :cond_11
    const-string/jumbo v2, "default-state"

    #@12e
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@131
    move-result v2

    #@132
    if-eqz v2, :cond_12

    #@134
    .line 186
    invoke-direct {p0, v3}, Lcom/android/commands/pm/Pm;->runSetEnabledSetting(I)I

    #@137
    move-result v2

    #@138
    return v2

    #@139
    .line 189
    :cond_12
    const-string/jumbo v2, "hide"

    #@13c
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13f
    move-result v2

    #@140
    if-eqz v2, :cond_13

    #@142
    .line 190
    invoke-direct {p0, v5}, Lcom/android/commands/pm/Pm;->runSetHiddenSetting(Z)I

    #@145
    move-result v2

    #@146
    return v2

    #@147
    .line 193
    :cond_13
    const-string/jumbo v2, "unhide"

    #@14a
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14d
    move-result v2

    #@14e
    if-eqz v2, :cond_14

    #@150
    .line 194
    invoke-direct {p0, v3}, Lcom/android/commands/pm/Pm;->runSetHiddenSetting(Z)I

    #@153
    move-result v2

    #@154
    return v2

    #@155
    .line 197
    :cond_14
    const-string/jumbo v2, "grant"

    #@158
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15b
    move-result v2

    #@15c
    if-eqz v2, :cond_15

    #@15e
    .line 198
    invoke-direct {p0, v5}, Lcom/android/commands/pm/Pm;->runGrantRevokePermission(Z)I

    #@161
    move-result v2

    #@162
    return v2

    #@163
    .line 201
    :cond_15
    const-string/jumbo v2, "revoke"

    #@166
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@169
    move-result v2

    #@16a
    if-eqz v2, :cond_16

    #@16c
    .line 202
    invoke-direct {p0, v3}, Lcom/android/commands/pm/Pm;->runGrantRevokePermission(Z)I

    #@16f
    move-result v2

    #@170
    return v2

    #@171
    .line 205
    :cond_16
    const-string/jumbo v2, "reset-permissions"

    #@174
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@177
    move-result v2

    #@178
    if-eqz v2, :cond_17

    #@17a
    .line 206
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runResetPermissions()I

    #@17d
    move-result v2

    #@17e
    return v2

    #@17f
    .line 209
    :cond_17
    const-string/jumbo v2, "set-permission-enforced"

    #@182
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@185
    move-result v2

    #@186
    if-eqz v2, :cond_18

    #@188
    .line 210
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runSetPermissionEnforced()I

    #@18b
    move-result v2

    #@18c
    return v2

    #@18d
    .line 213
    :cond_18
    const-string/jumbo v2, "set-app-link"

    #@190
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@193
    move-result v2

    #@194
    if-eqz v2, :cond_19

    #@196
    .line 214
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runSetAppLink()I

    #@199
    move-result v2

    #@19a
    return v2

    #@19b
    .line 217
    :cond_19
    const-string/jumbo v2, "get-app-link"

    #@19e
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a1
    move-result v2

    #@1a2
    if-eqz v2, :cond_1a

    #@1a4
    .line 218
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runGetAppLink()I

    #@1a7
    move-result v2

    #@1a8
    return v2

    #@1a9
    .line 221
    :cond_1a
    const-string/jumbo v2, "set-install-location"

    #@1ac
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1af
    move-result v2

    #@1b0
    if-eqz v2, :cond_1b

    #@1b2
    .line 222
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runSetInstallLocation()I

    #@1b5
    move-result v2

    #@1b6
    return v2

    #@1b7
    .line 225
    :cond_1b
    const-string/jumbo v2, "get-install-location"

    #@1ba
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1bd
    move-result v2

    #@1be
    if-eqz v2, :cond_1c

    #@1c0
    .line 226
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runGetInstallLocation()I

    #@1c3
    move-result v2

    #@1c4
    return v2

    #@1c5
    .line 229
    :cond_1c
    const-string/jumbo v2, "trim-caches"

    #@1c8
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1cb
    move-result v2

    #@1cc
    if-eqz v2, :cond_1d

    #@1ce
    .line 230
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->runTrimCaches()I

    #@1d1
    move-result v2

    #@1d2
    return v2

    #@1d3
    .line 233
    :cond_1d
    const-string/jumbo v2, "create-user"

    #@1d6
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d9
    move-result v2

    #@1da
    if-eqz v2, :cond_1e

    #@1dc
    .line 234
    invoke-virtual {p0}, Lcom/android/commands/pm/Pm;->runCreateUser()I

    #@1df
    move-result v2

    #@1e0
    return v2

    #@1e1
    .line 237
    :cond_1e
    const-string/jumbo v2, "remove-user"

    #@1e4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e7
    move-result v2

    #@1e8
    if-eqz v2, :cond_1f

    #@1ea
    .line 238
    invoke-virtual {p0}, Lcom/android/commands/pm/Pm;->runRemoveUser()I

    #@1ed
    move-result v2

    #@1ee
    return v2

    #@1ef
    .line 241
    :cond_1f
    const-string/jumbo v2, "get-max-users"

    #@1f2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f5
    move-result v2

    #@1f6
    if-eqz v2, :cond_20

    #@1f8
    .line 242
    invoke-virtual {p0}, Lcom/android/commands/pm/Pm;->runGetMaxUsers()I

    #@1fb
    move-result v2

    #@1fc
    return v2

    #@1fd
    .line 245
    :cond_20
    const-string/jumbo v2, "force-dex-opt"

    #@200
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@203
    move-result v2

    #@204
    if-eqz v2, :cond_21

    #@206
    .line 246
    invoke-virtual {p0}, Lcom/android/commands/pm/Pm;->runForceDexOpt()I

    #@209
    move-result v2

    #@20a
    return v2

    #@20b
    .line 249
    :cond_21
    const-string/jumbo v2, "move-package"

    #@20e
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@211
    move-result v2

    #@212
    if-eqz v2, :cond_22

    #@214
    .line 250
    invoke-virtual {p0}, Lcom/android/commands/pm/Pm;->runMovePackage()I

    #@217
    move-result v2

    #@218
    return v2

    #@219
    .line 253
    :cond_22
    const-string/jumbo v2, "move-primary-storage"

    #@21c
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21f
    move-result v2

    #@220
    if-eqz v2, :cond_23

    #@222
    .line 254
    invoke-virtual {p0}, Lcom/android/commands/pm/Pm;->runMovePrimaryStorage()I

    #@225
    move-result v2

    #@226
    return v2

    #@227
    .line 257
    :cond_23
    const-string/jumbo v2, "set-user-restriction"

    #@22a
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22d
    move-result v2

    #@22e
    if-eqz v2, :cond_24

    #@230
    .line 258
    invoke-virtual {p0}, Lcom/android/commands/pm/Pm;->runSetUserRestriction()I

    #@233
    move-result v2

    #@234
    return v2

    #@235
    .line 262
    :cond_24
    :try_start_0
    array-length v2, p1

    #@236
    if-ne v2, v5, :cond_26

    #@238
    .line 263
    const/4 v2, 0x0

    #@239
    aget-object v2, p1, v2

    #@23b
    const-string/jumbo v3, "-l"

    #@23e
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@241
    move-result v2

    #@242
    if-eqz v2, :cond_25

    #@244
    .line 264
    const/4 v1, 0x1

    #@245
    .line 265
    const-string/jumbo v2, "package"

    #@248
    const/4 v3, 0x2

    #@249
    new-array v3, v3, [Ljava/lang/String;

    #@24b
    const-string/jumbo v4, "list"

    #@24e
    const/4 v5, 0x0

    #@24f
    aput-object v4, v3, v5

    #@251
    const-string/jumbo v4, "package"

    #@254
    const/4 v5, 0x1

    #@255
    aput-object v4, v3, v5

    #@257
    invoke-direct {p0, v2, v3}, Lcom/android/commands/pm/Pm;->runShellCommand(Ljava/lang/String;[Ljava/lang/String;)I

    #@25a
    move-result v2

    #@25b
    return v2

    #@25c
    .line 266
    :cond_25
    const/4 v2, 0x0

    #@25d
    aget-object v2, p1, v2

    #@25f
    const-string/jumbo v3, "-lf"

    #@262
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@265
    move-result v2

    #@266
    if-eqz v2, :cond_27

    #@268
    .line 267
    const/4 v1, 0x1

    #@269
    .line 268
    const-string/jumbo v2, "package"

    #@26c
    const/4 v3, 0x3

    #@26d
    new-array v3, v3, [Ljava/lang/String;

    #@26f
    const-string/jumbo v4, "list"

    #@272
    const/4 v5, 0x0

    #@273
    aput-object v4, v3, v5

    #@275
    const-string/jumbo v4, "package"

    #@278
    const/4 v5, 0x1

    #@279
    aput-object v4, v3, v5

    #@27b
    const-string/jumbo v4, "-f"

    #@27e
    const/4 v5, 0x2

    #@27f
    aput-object v4, v3, v5

    #@281
    invoke-direct {p0, v2, v3}, Lcom/android/commands/pm/Pm;->runShellCommand(Ljava/lang/String;[Ljava/lang/String;)I

    #@284
    move-result v2

    #@285
    return v2

    #@286
    .line 270
    :cond_26
    array-length v2, p1

    #@287
    if-ne v2, v4, :cond_27

    #@289
    .line 271
    const/4 v2, 0x0

    #@28a
    aget-object v2, p1, v2

    #@28c
    const-string/jumbo v3, "-p"

    #@28f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@292
    move-result v2

    #@293
    if-eqz v2, :cond_27

    #@295
    .line 272
    const/4 v1, 0x1

    #@296
    .line 273
    const/4 v2, 0x1

    #@297
    aget-object v2, p1, v2

    #@299
    const/4 v3, 0x0

    #@29a
    invoke-direct {p0, v2, v3}, Lcom/android/commands/pm/Pm;->displayPackageFilePath(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29d
    move-result v2

    #@29e
    return v2

    #@29f
    .line 279
    :cond_27
    if-eqz v0, :cond_28

    #@2a1
    .line 280
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2a3
    new-instance v3, Ljava/lang/StringBuilder;

    #@2a5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2a8
    const-string/jumbo v4, "Error: unknown command \'"

    #@2ab
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ae
    move-result-object v3

    #@2af
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b2
    move-result-object v3

    #@2b3
    const-string/jumbo v4, "\'"

    #@2b6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b9
    move-result-object v3

    #@2ba
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2bd
    move-result-object v3

    #@2be
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2c1
    .line 282
    :cond_28
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@2c4
    .line 276
    return v5

    #@2c5
    .line 277
    :catchall_0
    move-exception v2

    #@2c6
    .line 278
    if-nez v1, :cond_2a

    #@2c8
    .line 279
    if-eqz v0, :cond_29

    #@2ca
    .line 280
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2cc
    new-instance v4, Ljava/lang/StringBuilder;

    #@2ce
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2d1
    const-string/jumbo v5, "Error: unknown command \'"

    #@2d4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d7
    move-result-object v4

    #@2d8
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2db
    move-result-object v4

    #@2dc
    const-string/jumbo v5, "\'"

    #@2df
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e2
    move-result-object v4

    #@2e3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e6
    move-result-object v4

    #@2e7
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2ea
    .line 282
    :cond_29
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@2ed
    .line 277
    :cond_2a
    throw v2
.end method

.method public runCreateUser()I
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    .line 905
    const/4 v8, -0x1

    #@2
    .line 906
    .local v8, "userId":I
    const/4 v2, 0x0

    #@3
    .line 908
    .local v2, "flags":I
    :goto_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    #@6
    move-result-object v5

    #@7
    .local v5, "opt":Ljava/lang/String;
    if-eqz v5, :cond_6

    #@9
    .line 909
    const-string/jumbo v9, "--profileOf"

    #@c
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v9

    #@10
    if-eqz v9, :cond_1

    #@12
    .line 910
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOptionData()Ljava/lang/String;

    #@15
    move-result-object v6

    #@16
    .line 911
    .local v6, "optionData":Ljava/lang/String;
    if-eqz v6, :cond_0

    #@18
    invoke-static {v6}, Lcom/android/commands/pm/Pm;->isNumber(Ljava/lang/String;)Z

    #@1b
    move-result v9

    #@1c
    if-eqz v9, :cond_0

    #@1e
    .line 915
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@21
    move-result v8

    #@22
    goto :goto_0

    #@23
    .line 912
    :cond_0
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@25
    const-string/jumbo v10, "Error: no USER_ID specified"

    #@28
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2b
    .line 913
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@2e
    move-result v9

    #@2f
    return v9

    #@30
    .line 917
    .end local v6    # "optionData":Ljava/lang/String;
    :cond_1
    const-string/jumbo v9, "--managed"

    #@33
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v9

    #@37
    if-eqz v9, :cond_2

    #@39
    .line 918
    or-int/lit8 v2, v2, 0x20

    #@3b
    goto :goto_0

    #@3c
    .line 919
    :cond_2
    const-string/jumbo v9, "--restricted"

    #@3f
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v9

    #@43
    if-eqz v9, :cond_3

    #@45
    .line 920
    or-int/lit8 v2, v2, 0x8

    #@47
    goto :goto_0

    #@48
    .line 921
    :cond_3
    const-string/jumbo v9, "--ephemeral"

    #@4b
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v9

    #@4f
    if-eqz v9, :cond_4

    #@51
    .line 922
    or-int/lit16 v2, v2, 0x100

    #@53
    goto :goto_0

    #@54
    .line 923
    :cond_4
    const-string/jumbo v9, "--guest"

    #@57
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v9

    #@5b
    if-eqz v9, :cond_5

    #@5d
    .line 924
    or-int/lit8 v2, v2, 0x4

    #@5f
    goto :goto_0

    #@60
    .line 926
    :cond_5
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@62
    new-instance v10, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v11, "Error: unknown option "

    #@6a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v10

    #@6e
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v10

    #@72
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v10

    #@76
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@79
    .line 927
    invoke-static {}, Lcom/android/commands/pm/Pm;->showUsage()I

    #@7c
    move-result v9

    #@7d
    return v9

    #@7e
    .line 930
    :cond_6
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@81
    move-result-object v0

    #@82
    .line 931
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_7

    #@84
    .line 932
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@86
    const-string/jumbo v10, "Error: no user name specified."

    #@89
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8c
    .line 933
    return v12

    #@8d
    .line 935
    :cond_7
    move-object v4, v0

    #@8e
    .line 938
    .local v4, "name":Ljava/lang/String;
    and-int/lit8 v9, v2, 0x8

    #@90
    if-eqz v9, :cond_9

    #@92
    .line 940
    if-ltz v8, :cond_8

    #@94
    move v7, v8

    #@95
    .line 941
    .local v7, "parentUserId":I
    :goto_1
    :try_start_0
    iget-object v9, p0, Lcom/android/commands/pm/Pm;->mUm:Landroid/os/IUserManager;

    #@97
    invoke-interface {v9, v0, v7}, Landroid/os/IUserManager;->createRestrictedProfile(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    #@9a
    move-result-object v3

    #@9b
    .line 942
    .local v3, "info":Landroid/content/pm/UserInfo;
    iget-object v9, p0, Lcom/android/commands/pm/Pm;->mAm:Landroid/accounts/IAccountManager;

    #@9d
    invoke-interface {v9, v7, v8}, Landroid/accounts/IAccountManager;->addSharedAccountsFromParentUser(II)V

    #@a0
    .line 949
    .end local v7    # "parentUserId":I
    :goto_2
    if-eqz v3, :cond_b

    #@a2
    .line 950
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a4
    new-instance v10, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string/jumbo v11, "Success: created user id "

    #@ac
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v10

    #@b0
    iget v11, v3, Landroid/content/pm/UserInfo;->id:I

    #@b2
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v10

    #@b6
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v10

    #@ba
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@bd
    .line 951
    return v12

    #@be
    .line 940
    .end local v3    # "info":Landroid/content/pm/UserInfo;
    :cond_8
    const/4 v7, 0x0

    #@bf
    .restart local v7    # "parentUserId":I
    goto :goto_1

    #@c0
    .line 943
    .end local v7    # "parentUserId":I
    :cond_9
    if-gez v8, :cond_a

    #@c2
    .line 944
    iget-object v9, p0, Lcom/android/commands/pm/Pm;->mUm:Landroid/os/IUserManager;

    #@c4
    invoke-interface {v9, v0, v2}, Landroid/os/IUserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    #@c7
    move-result-object v3

    #@c8
    .restart local v3    # "info":Landroid/content/pm/UserInfo;
    goto :goto_2

    #@c9
    .line 946
    .end local v3    # "info":Landroid/content/pm/UserInfo;
    :cond_a
    iget-object v9, p0, Lcom/android/commands/pm/Pm;->mUm:Landroid/os/IUserManager;

    #@cb
    invoke-interface {v9, v0, v2, v8}, Landroid/os/IUserManager;->createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    #@ce
    move-result-object v3

    #@cf
    .restart local v3    # "info":Landroid/content/pm/UserInfo;
    goto :goto_2

    #@d0
    .line 953
    :cond_b
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@d2
    const-string/jumbo v10, "Error: couldn\'t create User."

    #@d5
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d8
    .line 954
    return v12

    #@d9
    .line 956
    .end local v3    # "info":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v1

    #@da
    .line 957
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@dc
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@df
    move-result-object v10

    #@e0
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e3
    .line 958
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@e5
    const-string/jumbo v10, "Error: Could not access the Package Manager.  Is the system running?"

    #@e8
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@eb
    .line 959
    return v12
.end method

.method public runForceDexOpt()I
    .locals 3

    #@0
    .prologue
    .line 997
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 999
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@6
    invoke-interface {v2, v1}, Landroid/content/pm/IPackageManager;->forceDexOpt(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1000
    const/4 v2, 0x0

    #@a
    return v2

    #@b
    .line 1001
    :catch_0
    move-exception v0

    #@c
    .line 1002
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@f
    move-result-object v2

    #@10
    throw v2
.end method

.method public runGetMaxUsers()I
    .locals 3

    #@0
    .prologue
    .line 992
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Maximum supported users: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    #@11
    move-result v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d
    .line 993
    const/4 v0, 0x0

    #@1e
    return v0
.end method

.method public runMovePackage()I
    .locals 8

    #@0
    .prologue
    .line 1007
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 1008
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@7
    move-result-object v4

    #@8
    .line 1009
    .local v4, "volumeUuid":Ljava/lang/String;
    const-string/jumbo v5, "internal"

    #@b
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_0

    #@11
    .line 1010
    const/4 v4, 0x0

    #@12
    .line 1014
    .end local v4    # "volumeUuid":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@14
    invoke-interface {v5, v2, v4}, Landroid/content/pm/IPackageManager;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    move-result v1

    #@18
    .line 1016
    .local v1, "moveId":I
    iget-object v5, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@1a
    invoke-interface {v5, v1}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    #@1d
    move-result v3

    #@1e
    .line 1017
    .local v3, "status":I
    :goto_0
    invoke-static {v3}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    #@21
    move-result v5

    #@22
    if-nez v5, :cond_1

    #@24
    .line 1018
    const-wide/16 v6, 0x3e8

    #@26
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    #@29
    .line 1019
    iget-object v5, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@2b
    invoke-interface {v5, v1}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    #@2e
    move-result v3

    #@2f
    goto :goto_0

    #@30
    .line 1022
    :cond_1
    const/16 v5, -0x64

    #@32
    if-ne v3, v5, :cond_2

    #@34
    .line 1023
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@36
    const-string/jumbo v6, "Success"

    #@39
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3c
    .line 1024
    const/4 v5, 0x0

    #@3d
    return v5

    #@3e
    .line 1026
    :cond_2
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@40
    new-instance v6, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v7, "Failure ["

    #@48
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v6

    #@4c
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v6

    #@50
    const-string/jumbo v7, "]"

    #@53
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v6

    #@57
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v6

    #@5b
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5e
    .line 1027
    const/4 v5, 0x1

    #@5f
    return v5

    #@60
    .line 1029
    .end local v1    # "moveId":I
    .end local v3    # "status":I
    :catch_0
    move-exception v0

    #@61
    .line 1030
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@64
    move-result-object v5

    #@65
    throw v5
.end method

.method public runMovePrimaryStorage()I
    .locals 7

    #@0
    .prologue
    .line 1035
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 1036
    .local v3, "volumeUuid":Ljava/lang/String;
    const-string/jumbo v4, "internal"

    #@7
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_0

    #@d
    .line 1037
    const/4 v3, 0x0

    #@e
    .line 1041
    .end local v3    # "volumeUuid":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@10
    invoke-interface {v4, v3}, Landroid/content/pm/IPackageManager;->movePrimaryStorage(Ljava/lang/String;)I

    #@13
    move-result v1

    #@14
    .line 1043
    .local v1, "moveId":I
    iget-object v4, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@16
    invoke-interface {v4, v1}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    #@19
    move-result v2

    #@1a
    .line 1044
    .local v2, "status":I
    :goto_0
    invoke-static {v2}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    #@1d
    move-result v4

    #@1e
    if-nez v4, :cond_1

    #@20
    .line 1045
    const-wide/16 v4, 0x3e8

    #@22
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    #@25
    .line 1046
    iget-object v4, p0, Lcom/android/commands/pm/Pm;->mPm:Landroid/content/pm/IPackageManager;

    #@27
    invoke-interface {v4, v1}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    #@2a
    move-result v2

    #@2b
    goto :goto_0

    #@2c
    .line 1049
    :cond_1
    const/16 v4, -0x64

    #@2e
    if-ne v2, v4, :cond_2

    #@30
    .line 1050
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@32
    const-string/jumbo v5, "Success"

    #@35
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@38
    .line 1051
    const/4 v4, 0x0

    #@39
    return v4

    #@3a
    .line 1053
    :cond_2
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3c
    new-instance v5, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v6, "Failure ["

    #@44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    const-string/jumbo v6, "]"

    #@4f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5a
    .line 1054
    const/4 v4, 0x1

    #@5b
    return v4

    #@5c
    .line 1056
    .end local v1    # "moveId":I
    .end local v2    # "status":I
    :catch_0
    move-exception v0

    #@5d
    .line 1057
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@60
    move-result-object v4

    #@61
    throw v4
.end method

.method public runRemoveUser()I
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 965
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 966
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    .line 967
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@9
    const-string/jumbo v5, "Error: no user id specified."

    #@c
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f
    .line 968
    return v7

    #@10
    .line 971
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v3

    #@14
    .line 977
    .local v3, "userId":I
    :try_start_1
    iget-object v4, p0, Lcom/android/commands/pm/Pm;->mUm:Landroid/os/IUserManager;

    #@16
    invoke-interface {v4, v3}, Landroid/os/IUserManager;->removeUser(I)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_1

    #@1c
    .line 978
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1e
    const-string/jumbo v5, "Success: removed user"

    #@21
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@24
    .line 979
    const/4 v4, 0x0

    #@25
    return v4

    #@26
    .line 972
    .end local v3    # "userId":I
    :catch_0
    move-exception v2

    #@27
    .line 973
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@29
    new-instance v5, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v6, "Error: user id \'"

    #@31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    const-string/jumbo v6, "\' is not a number."

    #@3c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@47
    .line 974
    return v7

    #@48
    .line 981
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "userId":I
    :cond_1
    :try_start_2
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4a
    new-instance v5, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v6, "Error: couldn\'t remove user id "

    #@52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v5

    #@5e
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@61
    .line 982
    return v7

    #@62
    .line 984
    :catch_1
    move-exception v1

    #@63
    .line 985
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@65
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@68
    move-result-object v5

    #@69
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6c
    .line 986
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@6e
    const-string/jumbo v5, "Error: Could not access the Package Manager.  Is the system running?"

    #@71
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@74
    .line 987
    return v7
.end method

.method public runSetUserRestriction()I
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 1062
    const/4 v4, 0x0

    #@2
    .line 1063
    .local v4, "userId":I
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextOption()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 1064
    .local v2, "opt":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@8
    const-string/jumbo v6, "--user"

    #@b
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v6

    #@f
    if-eqz v6, :cond_0

    #@11
    .line 1065
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 1066
    .local v0, "arg":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@17
    invoke-static {v0}, Lcom/android/commands/pm/Pm;->isNumber(Ljava/lang/String;)Z

    #@1a
    move-result v6

    #@1b
    if-eqz v6, :cond_1

    #@1d
    .line 1070
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@20
    move-result v4

    #@21
    .line 1073
    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    .line 1074
    .local v3, "restriction":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/pm/Pm;->nextArg()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    .line 1076
    .restart local v0    # "arg":Ljava/lang/String;
    const-string/jumbo v6, "1"

    #@2c
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v6

    #@30
    if-eqz v6, :cond_2

    #@32
    .line 1077
    const/4 v5, 0x1

    #@33
    .line 1085
    .local v5, "value":Z
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/commands/pm/Pm;->mUm:Landroid/os/IUserManager;

    #@35
    invoke-interface {v6, v3, v5, v4}, Landroid/os/IUserManager;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 1086
    const/4 v6, 0x0

    #@39
    return v6

    #@3a
    .line 1067
    .end local v3    # "restriction":Ljava/lang/String;
    .end local v5    # "value":Z
    :cond_1
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3c
    const-string/jumbo v7, "Error: valid userId not specified"

    #@3f
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@42
    .line 1068
    return v8

    #@43
    .line 1078
    .restart local v3    # "restriction":Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, "0"

    #@46
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v6

    #@4a
    if-eqz v6, :cond_3

    #@4c
    .line 1079
    const/4 v5, 0x0

    #@4d
    .restart local v5    # "value":Z
    goto :goto_0

    #@4e
    .line 1081
    .end local v5    # "value":Z
    :cond_3
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@50
    const-string/jumbo v7, "Error: valid value not specified"

    #@53
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@56
    .line 1082
    return v8

    #@57
    .line 1087
    .restart local v5    # "value":Z
    :catch_0
    move-exception v1

    #@58
    .line 1088
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5a
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@5d
    move-result-object v7

    #@5e
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@61
    .line 1089
    return v8
.end method
