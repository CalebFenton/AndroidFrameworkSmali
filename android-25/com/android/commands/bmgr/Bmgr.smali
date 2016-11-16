.class public final Lcom/android/commands/bmgr/Bmgr;
.super Ljava/lang/Object;
.source "Bmgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/bmgr/Bmgr$BackupObserver;,
        Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    }
.end annotation


# static fields
.field static final BMGR_NOT_RUNNING_ERR:Ljava/lang/String; = "Error: Could not access the Backup Manager.  Is the system running?"

.field static final PM_NOT_RUNNING_ERR:Ljava/lang/String; = "Error: Could not access the Package Manager.  Is the system running?"

.field static final TRANSPORT_NOT_RUNNING_ERR:Ljava/lang/String; = "Error: Could not access the backup transport.  Is the system running?"


# instance fields
.field private mArgs:[Ljava/lang/String;

.field mBmgr:Landroid/app/backup/IBackupManager;

.field private mNextArg:I

.field mRestore:Landroid/app/backup/IRestoreSession;


# direct methods
.method static synthetic -wrap0(I)Ljava/lang/String;
    .locals 1
    .param p0, "errorCode"    # I

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/commands/bmgr/Bmgr;->convertBackupStatusToString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private backupNowAllPackages()V
    .locals 9

    #@0
    .prologue
    .line 274
    const/4 v6, 0x0

    #@1
    .line 276
    .local v6, "userId":I
    const-string/jumbo v7, "package"

    #@4
    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v7

    #@8
    invoke-static {v7}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    #@b
    move-result-object v2

    #@c
    .line 277
    .local v2, "mPm":Landroid/content/pm/IPackageManager;
    if-nez v2, :cond_0

    #@e
    .line 278
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@10
    const-string/jumbo v8, "Error: Could not access the Package Manager.  Is the system running?"

    #@13
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@16
    .line 279
    return-void

    #@17
    .line 281
    :cond_0
    const/4 v1, 0x0

    #@18
    .line 283
    .local v1, "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v7, 0x0

    #@19
    :try_start_0
    invoke-interface {v2, v7, v6}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    #@1c
    move-result-object v7

    #@1d
    invoke-virtual {v7}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@20
    move-result-object v1

    #@21
    .line 288
    .end local v1    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :goto_0
    if-eqz v1, :cond_3

    #@23
    .line 289
    new-instance v3, Ljava/util/ArrayList;

    #@25
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@28
    .line 290
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2b
    move-result-object v5

    #@2c
    .local v5, "pi$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@2f
    move-result v7

    #@30
    if-eqz v7, :cond_2

    #@32
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35
    move-result-object v4

    #@36
    check-cast v4, Landroid/content/pm/PackageInfo;

    #@38
    .line 292
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    :try_start_1
    iget-object v7, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    #@3a
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@3c
    invoke-interface {v7, v8}, Landroid/app/backup/IBackupManager;->isAppEligibleForBackup(Ljava/lang/String;)Z

    #@3f
    move-result v7

    #@40
    if-eqz v7, :cond_1

    #@42
    .line 293
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@44
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@47
    goto :goto_1

    #@48
    .line 295
    :catch_0
    move-exception v0

    #@49
    .line 296
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4b
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@4e
    move-result-object v8

    #@4f
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@52
    .line 297
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@54
    const-string/jumbo v8, "Error: Could not access the Backup Manager.  Is the system running?"

    #@57
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5a
    goto :goto_1

    #@5b
    .line 284
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    .end local v5    # "pi$iterator":Ljava/util/Iterator;
    .restart local v1    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_1
    move-exception v0

    #@5c
    .line 285
    .restart local v0    # "e":Landroid/os/RemoteException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5e
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@61
    move-result-object v8

    #@62
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@65
    .line 286
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@67
    const-string/jumbo v8, "Error: Could not access the Package Manager.  Is the system running?"

    #@6a
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6d
    goto :goto_0

    #@6e
    .line 300
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "pi$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/commands/bmgr/Bmgr;->backupNowPackages(Ljava/util/List;)V

    #@71
    .line 273
    .end local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "pi$iterator":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private backupNowPackages(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 306
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Lcom/android/commands/bmgr/Bmgr$BackupObserver;

    #@2
    invoke-direct {v2, p0}, Lcom/android/commands/bmgr/Bmgr$BackupObserver;-><init>(Lcom/android/commands/bmgr/Bmgr;)V

    #@5
    .line 307
    .local v2, "observer":Lcom/android/commands/bmgr/Bmgr$BackupObserver;
    iget-object v4, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    #@7
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@a
    move-result v3

    #@b
    new-array v3, v3, [Ljava/lang/String;

    #@d
    invoke-interface {p1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, [Ljava/lang/String;

    #@13
    invoke-interface {v4, v3, v2}, Landroid/app/backup/IBackupManager;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)I

    #@16
    move-result v1

    #@17
    .line 308
    .local v1, "err":I
    if-nez v1, :cond_0

    #@19
    .line 310
    invoke-virtual {v2}, Lcom/android/commands/bmgr/Bmgr$BackupObserver;->waitForCompletion()V

    #@1c
    .line 304
    .end local v1    # "err":I
    .end local v2    # "observer":Lcom/android/commands/bmgr/Bmgr$BackupObserver;
    :goto_0
    return-void

    #@1d
    .line 312
    .restart local v1    # "err":I
    .restart local v2    # "observer":Lcom/android/commands/bmgr/Bmgr$BackupObserver;
    :cond_0
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1f
    const-string/jumbo v4, "Unable to run backup"

    #@22
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    goto :goto_0

    #@26
    .line 314
    .end local v1    # "err":I
    .end local v2    # "observer":Lcom/android/commands/bmgr/Bmgr$BackupObserver;
    :catch_0
    move-exception v0

    #@27
    .line 315
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@29
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@30
    .line 316
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@32
    const-string/jumbo v4, "Error: Could not access the Backup Manager.  Is the system running?"

    #@35
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@38
    goto :goto_0
.end method

.method private static convertBackupStatusToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "errorCode"    # I

    #@0
    .prologue
    .line 253
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 269
    const-string/jumbo v0, "Unknown error"

    #@6
    return-object v0

    #@7
    .line 255
    :sswitch_0
    const-string/jumbo v0, "Success"

    #@a
    return-object v0

    #@b
    .line 257
    :sswitch_1
    const-string/jumbo v0, "Backup is not allowed"

    #@e
    return-object v0

    #@f
    .line 259
    :sswitch_2
    const-string/jumbo v0, "Package not found"

    #@12
    return-object v0

    #@13
    .line 261
    :sswitch_3
    const-string/jumbo v0, "Transport error"

    #@16
    return-object v0

    #@17
    .line 263
    :sswitch_4
    const-string/jumbo v0, "Transport rejected package"

    #@1a
    return-object v0

    #@1b
    .line 265
    :sswitch_5
    const-string/jumbo v0, "Agent error"

    #@1e
    return-object v0

    #@1f
    .line 267
    :sswitch_6
    const-string/jumbo v0, "Size quota exceeded"

    #@22
    return-object v0

    #@23
    .line 253
    nop

    #@24
    :sswitch_data_0
    .sparse-switch
        -0x7d2 -> :sswitch_2
        -0x7d1 -> :sswitch_1
        -0x3ed -> :sswitch_6
        -0x3eb -> :sswitch_5
        -0x3ea -> :sswitch_4
        -0x3e8 -> :sswitch_3
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private doBackup()V
    .locals 4

    #@0
    .prologue
    .line 179
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 180
    .local v1, "pkg":Ljava/lang/String;
    if-nez v1, :cond_0

    #@6
    .line 181
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    #@9
    .line 182
    return-void

    #@a
    .line 186
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    #@c
    invoke-interface {v2, v1}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 178
    :goto_0
    return-void

    #@10
    .line 187
    :catch_0
    move-exception v0

    #@11
    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@13
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1a
    .line 189
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1c
    const-string/jumbo v3, "Error: Could not access the Backup Manager.  Is the system running?"

    #@1f
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@22
    goto :goto_0
.end method

.method private doBackupNow()V
    .locals 6

    #@0
    .prologue
    .line 322
    const/4 v1, 0x0

    #@1
    .line 323
    .local v1, "backupAll":Z
    new-instance v0, Ljava/util/ArrayList;

    #@3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 324
    .local v0, "allPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    .local v2, "pkg":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@c
    .line 325
    const-string/jumbo v3, "--all"

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 326
    const/4 v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 328
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a
    goto :goto_0

    #@1b
    .line 331
    :cond_1
    if-eqz v1, :cond_3

    #@1d
    .line 332
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@20
    move-result v3

    #@21
    if-nez v3, :cond_2

    #@23
    .line 333
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@25
    const-string/jumbo v4, "Running backup for all packages."

    #@28
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2b
    .line 334
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->backupNowAllPackages()V

    #@2e
    .line 320
    :goto_1
    return-void

    #@2f
    .line 336
    :cond_2
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@31
    const-string/jumbo v4, "Provide only \'--all\' flag or list of packages."

    #@34
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@37
    goto :goto_1

    #@38
    .line 338
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@3b
    move-result v3

    #@3c
    if-lez v3, :cond_4

    #@3e
    .line 339
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@40
    new-instance v4, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v5, "Running backup for "

    #@48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@4f
    move-result v5

    #@50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    const-string/jumbo v5, " requested packages."

    #@57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@62
    .line 340
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->backupNowPackages(Ljava/util/List;)V

    #@65
    goto :goto_1

    #@66
    .line 342
    :cond_4
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@68
    const-string/jumbo v4, "Provide \'--all\' flag or list of packages."

    #@6b
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6e
    goto :goto_1
.end method

.method private doEnable()V
    .locals 7

    #@0
    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 151
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 152
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    #@9
    .line 153
    return-void

    #@a
    .line 157
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@d
    move-result v3

    #@e
    .line 158
    .local v3, "enable":Z
    iget-object v4, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    #@10
    invoke-interface {v4, v3}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V

    #@13
    .line 159
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@15
    new-instance v5, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v6, "Backup Manager now "

    #@1d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    invoke-direct {p0, v3}, Lcom/android/commands/bmgr/Bmgr;->enableToString(Z)Ljava/lang/String;

    #@24
    move-result-object v6

    #@25
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 149
    .end local v3    # "enable":Z
    :goto_0
    return-void

    #@31
    .line 163
    :catch_0
    move-exception v1

    #@32
    .line 164
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@34
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3b
    .line 165
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3d
    const-string/jumbo v5, "Error: Could not access the Backup Manager.  Is the system running?"

    #@40
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@43
    goto :goto_0

    #@44
    .line 160
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    #@45
    .line 161
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    #@48
    .line 162
    return-void
.end method

.method private doEnabled()V
    .locals 5

    #@0
    .prologue
    .line 140
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    #@2
    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    #@5
    move-result v1

    #@6
    .line 141
    .local v1, "isEnabled":Z
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "Backup Manager currently "

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    .line 142
    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->enableToString(Z)Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    .line 141
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 138
    .end local v1    # "isEnabled":Z
    :goto_0
    return-void

    #@24
    .line 143
    :catch_0
    move-exception v0

    #@25
    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@27
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2e
    .line 145
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@30
    const-string/jumbo v3, "Error: Could not access the Backup Manager.  Is the system running?"

    #@33
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@36
    goto :goto_0
.end method

.method private doFullTransportBackup()V
    .locals 5

    #@0
    .prologue
    .line 194
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    const-string/jumbo v4, "Performing full transport backup"

    #@5
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8
    .line 197
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@d
    .line 198
    .local v0, "allPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    .local v2, "pkg":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@13
    .line 199
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    goto :goto_0

    #@17
    .line 201
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v3

    #@1b
    if-lez v3, :cond_1

    #@1d
    .line 203
    :try_start_0
    iget-object v4, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    #@1f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@22
    move-result v3

    #@23
    new-array v3, v3, [Ljava/lang/String;

    #@25
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@28
    move-result-object v3

    #@29
    check-cast v3, [Ljava/lang/String;

    #@2b
    invoke-interface {v4, v3}, Landroid/app/backup/IBackupManager;->fullTransportBackup([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 193
    :cond_1
    :goto_1
    return-void

    #@2f
    .line 204
    :catch_0
    move-exception v1

    #@30
    .line 205
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@32
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@39
    .line 206
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3b
    const-string/jumbo v4, "Error: Could not access the Backup Manager.  Is the system running?"

    #@3e
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@41
    goto :goto_1
.end method

.method private doList()V
    .locals 5

    #@0
    .prologue
    .line 390
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 391
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v2, "transports"

    #@7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 392
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doListTransports()V

    #@10
    .line 393
    return-void

    #@11
    .line 398
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v4}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    #@18
    move-result-object v2

    #@19
    iput-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    #@1b
    .line 399
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    #@1d
    if-nez v2, :cond_1

    #@1f
    .line 400
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@21
    const-string/jumbo v3, "Error: Could not access the Backup Manager.  Is the system running?"

    #@24
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@27
    .line 401
    return-void

    #@28
    .line 404
    :cond_1
    const-string/jumbo v2, "sets"

    #@2b
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_3

    #@31
    .line 405
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doListRestoreSets()V

    #@34
    .line 410
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    #@36
    invoke-interface {v2}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V

    #@39
    .line 389
    :goto_1
    return-void

    #@3a
    .line 406
    :cond_3
    const-string/jumbo v2, "transports"

    #@3d
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_2

    #@43
    .line 407
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doListTransports()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    goto :goto_0

    #@47
    .line 411
    :catch_0
    move-exception v1

    #@48
    .line 412
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4a
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@51
    .line 413
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@53
    const-string/jumbo v3, "Error: Could not access the Backup Manager.  Is the system running?"

    #@56
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@59
    goto :goto_1
.end method

.method private doListRestoreSets()V
    .locals 5

    #@0
    .prologue
    .line 438
    :try_start_0
    new-instance v2, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;

    #@2
    invoke-direct {v2, p0}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;-><init>(Lcom/android/commands/bmgr/Bmgr;)V

    #@5
    .line 439
    .local v2, "observer":Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    #@7
    invoke-interface {v3, v2}, Landroid/app/backup/IRestoreSession;->getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;)I

    #@a
    move-result v1

    #@b
    .line 440
    .local v1, "err":I
    if-eqz v1, :cond_0

    #@d
    .line 441
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f
    const-string/jumbo v4, "Unable to request restore sets"

    #@12
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@15
    .line 436
    .end local v1    # "err":I
    .end local v2    # "observer":Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    :goto_0
    return-void

    #@16
    .line 443
    .restart local v1    # "err":I
    .restart local v2    # "observer":Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    :cond_0
    invoke-virtual {v2}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->waitForCompletion()V

    #@19
    .line 444
    iget-object v3, v2, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->sets:[Landroid/app/backup/RestoreSet;

    #@1b
    invoke-direct {p0, v3}, Lcom/android/commands/bmgr/Bmgr;->printRestoreSets([Landroid/app/backup/RestoreSet;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    goto :goto_0

    #@1f
    .line 446
    .end local v1    # "err":I
    .end local v2    # "observer":Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    :catch_0
    move-exception v0

    #@20
    .line 447
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@22
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@29
    .line 448
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2b
    const-string/jumbo v4, "Error: Could not access the backup transport.  Is the system running?"

    #@2e
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@31
    goto :goto_0
.end method

.method private doListTransports()V
    .locals 9

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 419
    :try_start_0
    iget-object v6, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    #@3
    invoke-interface {v6}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 420
    .local v0, "current":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    #@9
    invoke-interface {v6}, Landroid/app/backup/IBackupManager;->listAllTransports()[Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    .line 421
    .local v4, "transports":[Ljava/lang/String;
    if-eqz v4, :cond_0

    #@f
    array-length v6, v4

    #@10
    if-nez v6, :cond_1

    #@12
    .line 422
    :cond_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@14
    const-string/jumbo v6, "No transports available."

    #@17
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1a
    .line 423
    return-void

    #@1b
    .line 426
    :cond_1
    array-length v6, v4

    #@1c
    :goto_0
    if-ge v5, v6, :cond_3

    #@1e
    aget-object v3, v4, v5

    #@20
    .line 427
    .local v3, "t":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v7

    #@24
    if-eqz v7, :cond_2

    #@26
    const-string/jumbo v2, "  * "

    #@29
    .line 428
    .local v2, "pad":Ljava/lang/String;
    :goto_1
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2b
    new-instance v8, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v8

    #@34
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v8

    #@38
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v8

    #@3c
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3f
    .line 426
    add-int/lit8 v5, v5, 0x1

    #@41
    goto :goto_0

    #@42
    .line 427
    .end local v2    # "pad":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "    "
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    .restart local v2    # "pad":Ljava/lang/String;
    goto :goto_1

    #@46
    .line 430
    .end local v0    # "current":Ljava/lang/String;
    .end local v2    # "pad":Ljava/lang/String;
    .end local v3    # "t":Ljava/lang/String;
    .end local v4    # "transports":[Ljava/lang/String;
    :catch_0
    move-exception v1

    #@47
    .line 431
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@49
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@50
    .line 432
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@52
    const-string/jumbo v6, "Error: Could not access the Backup Manager.  Is the system running?"

    #@55
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@58
    .line 417
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    return-void
.end method

.method private doPrintWhitelist()V
    .locals 6

    #@0
    .prologue
    .line 614
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    #@2
    invoke-interface {v3}, Landroid/app/backup/IBackupManager;->getTransportWhitelist()[Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 615
    .local v2, "whitelist":[Ljava/lang/String;
    if-eqz v2, :cond_0

    #@8
    .line 616
    const/4 v3, 0x0

    #@9
    array-length v4, v2

    #@a
    :goto_0
    if-ge v3, v4, :cond_0

    #@c
    aget-object v1, v2, v3

    #@e
    .line 617
    .local v1, "transport":Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@10
    invoke-virtual {v5, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 616
    add-int/lit8 v3, v3, 0x1

    #@15
    goto :goto_0

    #@16
    .line 620
    .end local v1    # "transport":Ljava/lang/String;
    .end local v2    # "whitelist":[Ljava/lang/String;
    :catch_0
    move-exception v0

    #@17
    .line 621
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@19
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@20
    .line 622
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@22
    const-string/jumbo v4, "Error: Could not access the Backup Manager.  Is the system running?"

    #@25
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    .line 612
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private doRestore()V
    .locals 7

    #@0
    .prologue
    .line 505
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 506
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 507
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    #@9
    .line 508
    return-void

    #@a
    .line 511
    :cond_0
    const/16 v3, 0x2e

    #@c
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    #@f
    move-result v3

    #@10
    if-gez v3, :cond_1

    #@12
    const-string/jumbo v3, "android"

    #@15
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_2

    #@1b
    .line 513
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doRestorePackage(Ljava/lang/String;)V

    #@1e
    .line 530
    :goto_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@20
    const-string/jumbo v6, "done"

    #@23
    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@26
    .line 504
    return-void

    #@27
    .line 516
    :cond_2
    const/16 v3, 0x10

    #@29
    :try_start_0
    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@2c
    move-result-wide v4

    #@2d
    .line 517
    .local v4, "token":J
    const/4 v2, 0x0

    #@2e
    .line 518
    :goto_1
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    if-eqz v0, :cond_4

    #@34
    .line 519
    if-nez v2, :cond_3

    #@36
    new-instance v2, Ljava/util/HashSet;

    #@38
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@3b
    .line 520
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    goto :goto_1

    #@3f
    .line 524
    .end local v4    # "token":J
    :catch_0
    move-exception v1

    #@40
    .line 525
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    #@43
    .line 526
    return-void

    #@44
    .line 523
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "token":J
    :cond_4
    :try_start_1
    invoke-direct {p0, v4, v5, v2}, Lcom/android/commands/bmgr/Bmgr;->doRestoreAll(JLjava/util/HashSet;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@47
    goto :goto_0
.end method

.method private doRestoreAll(JLjava/util/HashSet;)V
    .locals 15
    .param p1, "token"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "filter":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v9, 0x0

    #@1
    .line 559
    new-instance v6, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;

    #@3
    invoke-direct {v6, p0}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;-><init>(Lcom/android/commands/bmgr/Bmgr;)V

    #@6
    .line 562
    .local v6, "observer":Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    const/4 v2, 0x0

    #@7
    .line 563
    .local v2, "didRestore":Z
    :try_start_0
    iget-object v10, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    #@9
    const/4 v11, 0x0

    #@a
    const/4 v12, 0x0

    #@b
    invoke-interface {v10, v11, v12}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    #@e
    move-result-object v10

    #@f
    iput-object v10, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    #@11
    .line 564
    iget-object v10, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    #@13
    if-nez v10, :cond_0

    #@15
    .line 565
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@17
    const-string/jumbo v10, "Error: Could not access the Backup Manager.  Is the system running?"

    #@1a
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d
    .line 566
    return-void

    #@1e
    .line 568
    :cond_0
    const/4 v8, 0x0

    #@1f
    .line 569
    .local v8, "sets":[Landroid/app/backup/RestoreSet;
    iget-object v10, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    #@21
    invoke-interface {v10, v6}, Landroid/app/backup/IRestoreSession;->getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;)I

    #@24
    move-result v4

    #@25
    .line 570
    .local v4, "err":I
    if-nez v4, :cond_1

    #@27
    .line 571
    invoke-virtual {v6}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->waitForCompletion()V

    #@2a
    .line 572
    iget-object v8, v6, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->sets:[Landroid/app/backup/RestoreSet;

    #@2c
    .line 573
    .local v8, "sets":[Landroid/app/backup/RestoreSet;
    if-eqz v8, :cond_1

    #@2e
    .line 574
    array-length v10, v8

    #@2f
    :goto_0
    if-ge v9, v10, :cond_1

    #@31
    aget-object v7, v8, v9

    #@33
    .line 575
    .local v7, "s":Landroid/app/backup/RestoreSet;
    iget-wide v12, v7, Landroid/app/backup/RestoreSet;->token:J

    #@35
    cmp-long v11, v12, p1

    #@37
    if-nez v11, :cond_8

    #@39
    .line 576
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3b
    new-instance v10, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v11, "Scheduling restore: "

    #@43
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v10

    #@47
    iget-object v11, v7, Landroid/app/backup/RestoreSet;->name:Ljava/lang/String;

    #@49
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v10

    #@4d
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v10

    #@51
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@54
    .line 577
    if-nez p3, :cond_6

    #@56
    .line 578
    iget-object v9, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    #@58
    move-wide/from16 v0, p1

    #@5a
    invoke-interface {v9, v0, v1, v6}, Landroid/app/backup/IRestoreSession;->restoreAll(JLandroid/app/backup/IRestoreObserver;)I

    #@5d
    move-result v9

    #@5e
    if-nez v9, :cond_5

    #@60
    const/4 v2, 0x1

    #@61
    .line 589
    .end local v7    # "s":Landroid/app/backup/RestoreSet;
    .end local v8    # "sets":[Landroid/app/backup/RestoreSet;
    :cond_1
    :goto_1
    if-nez v2, :cond_3

    #@63
    .line 590
    if-eqz v8, :cond_2

    #@65
    array-length v9, v8

    #@66
    if-nez v9, :cond_9

    #@68
    .line 591
    :cond_2
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6a
    const-string/jumbo v10, "No available restore sets; no restore performed"

    #@6d
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@70
    .line 600
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    #@72
    .line 601
    invoke-virtual {v6}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->waitForCompletion()V

    #@75
    .line 605
    :cond_4
    iget-object v9, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    #@77
    invoke-interface {v9}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V

    #@7a
    .line 558
    .end local v4    # "err":I
    :goto_3
    return-void

    #@7b
    .line 578
    .restart local v4    # "err":I
    .restart local v7    # "s":Landroid/app/backup/RestoreSet;
    .restart local v8    # "sets":[Landroid/app/backup/RestoreSet;
    :cond_5
    const/4 v2, 0x0

    #@7c
    goto :goto_1

    #@7d
    .line 580
    :cond_6
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashSet;->size()I

    #@80
    move-result v9

    #@81
    new-array v5, v9, [Ljava/lang/String;

    #@83
    .line 581
    .local v5, "names":[Ljava/lang/String;
    move-object/from16 v0, p3

    #@85
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@88
    .line 582
    iget-object v9, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    #@8a
    move-wide/from16 v0, p1

    #@8c
    invoke-interface {v9, v0, v1, v6, v5}, Landroid/app/backup/IRestoreSession;->restoreSome(JLandroid/app/backup/IRestoreObserver;[Ljava/lang/String;)I

    #@8f
    move-result v9

    #@90
    if-nez v9, :cond_7

    #@92
    const/4 v2, 0x1

    #@93
    goto :goto_1

    #@94
    :cond_7
    const/4 v2, 0x0

    #@95
    goto :goto_1

    #@96
    .line 574
    .end local v5    # "names":[Ljava/lang/String;
    :cond_8
    add-int/lit8 v9, v9, 0x1

    #@98
    goto :goto_0

    #@99
    .line 593
    .end local v7    # "s":Landroid/app/backup/RestoreSet;
    .end local v8    # "sets":[Landroid/app/backup/RestoreSet;
    :cond_9
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@9b
    const-string/jumbo v10, "No matching restore set token.  Available sets:"

    #@9e
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a1
    .line 594
    invoke-direct {p0, v8}, Lcom/android/commands/bmgr/Bmgr;->printRestoreSets([Landroid/app/backup/RestoreSet;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a4
    goto :goto_2

    #@a5
    .line 606
    .end local v4    # "err":I
    :catch_0
    move-exception v3

    #@a6
    .line 607
    .local v3, "e":Landroid/os/RemoteException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a8
    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@ab
    move-result-object v10

    #@ac
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@af
    .line 608
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@b1
    const-string/jumbo v10, "Error: Could not access the Backup Manager.  Is the system running?"

    #@b4
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b7
    goto :goto_3
.end method

.method private doRestorePackage(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 535
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    #@2
    const/4 v4, 0x0

    #@3
    invoke-interface {v3, p1, v4}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    #@6
    move-result-object v3

    #@7
    iput-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    #@9
    .line 536
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    #@b
    if-nez v3, :cond_0

    #@d
    .line 537
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@f
    const-string/jumbo v4, "Error: Could not access the Backup Manager.  Is the system running?"

    #@12
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@15
    .line 538
    return-void

    #@16
    .line 541
    :cond_0
    new-instance v2, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;

    #@18
    invoke-direct {v2, p0}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;-><init>(Lcom/android/commands/bmgr/Bmgr;)V

    #@1b
    .line 542
    .local v2, "observer":Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    #@1d
    invoke-interface {v3, p1, v2}, Landroid/app/backup/IRestoreSession;->restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;)I

    #@20
    move-result v1

    #@21
    .line 543
    .local v1, "err":I
    if-nez v1, :cond_1

    #@23
    .line 545
    invoke-virtual {v2}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->waitForCompletion()V

    #@26
    .line 551
    :goto_0
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    #@28
    invoke-interface {v3}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V

    #@2b
    .line 533
    .end local v1    # "err":I
    .end local v2    # "observer":Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    :goto_1
    return-void

    #@2c
    .line 547
    .restart local v1    # "err":I
    .restart local v2    # "observer":Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    :cond_1
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2e
    new-instance v4, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v5, "Unable to restore package "

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    goto :goto_0

    #@46
    .line 552
    .end local v1    # "err":I
    .end local v2    # "observer":Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    :catch_0
    move-exception v0

    #@47
    .line 553
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@49
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@50
    .line 554
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@52
    const-string/jumbo v4, "Error: Could not access the Backup Manager.  Is the system running?"

    #@55
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@58
    goto :goto_1
.end method

.method private doRun()V
    .locals 3

    #@0
    .prologue
    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    #@2
    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->backupNow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 169
    :goto_0
    return-void

    #@6
    .line 172
    :catch_0
    move-exception v0

    #@7
    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@9
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@10
    .line 174
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@12
    const-string/jumbo v2, "Error: Could not access the Backup Manager.  Is the system running?"

    #@15
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@18
    goto :goto_0
.end method

.method private doTransport()V
    .locals 6

    #@0
    .prologue
    .line 348
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 349
    .local v2, "which":Ljava/lang/String;
    if-nez v2, :cond_0

    #@6
    .line 350
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    #@9
    .line 351
    return-void

    #@a
    .line 354
    :cond_0
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    #@c
    invoke-interface {v3, v2}, Landroid/app/backup/IBackupManager;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 355
    .local v1, "old":Ljava/lang/String;
    if-nez v1, :cond_1

    #@12
    .line 356
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@14
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v5, "Unknown transport \'"

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    .line 357
    const-string/jumbo v5, "\' specified; no changes made."

    #@27
    .line 356
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@32
    .line 346
    .end local v1    # "old":Ljava/lang/String;
    .end local v2    # "which":Ljava/lang/String;
    :goto_0
    return-void

    #@33
    .line 359
    .restart local v1    # "old":Ljava/lang/String;
    .restart local v2    # "which":Ljava/lang/String;
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@35
    new-instance v4, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v5, "Selected transport "

    #@3d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    const-string/jumbo v5, " (formerly "

    #@48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    const-string/jumbo v5, ")"

    #@53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5e
    goto :goto_0

    #@5f
    .line 361
    .end local v1    # "old":Ljava/lang/String;
    .end local v2    # "which":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@60
    .line 362
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@62
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@69
    .line 363
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@6b
    const-string/jumbo v4, "Error: Could not access the Backup Manager.  Is the system running?"

    #@6e
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@71
    goto :goto_0
.end method

.method private doWipe()V
    .locals 6

    #@0
    .prologue
    .line 368
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 369
    .local v2, "transport":Ljava/lang/String;
    if-nez v2, :cond_0

    #@6
    .line 370
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    #@9
    .line 371
    return-void

    #@a
    .line 374
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 375
    .local v1, "pkg":Ljava/lang/String;
    if-nez v1, :cond_1

    #@10
    .line 376
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    #@13
    .line 377
    return-void

    #@14
    .line 381
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    #@16
    invoke-interface {v3, v2, v1}, Landroid/app/backup/IBackupManager;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    .line 382
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1b
    new-instance v4, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v5, "Wiped backup data for "

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    const-string/jumbo v5, " on "

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    .line 367
    :goto_0
    return-void

    #@3e
    .line 383
    :catch_0
    move-exception v0

    #@3f
    .line 384
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@41
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@48
    .line 385
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4a
    const-string/jumbo v4, "Error: Could not access the Backup Manager.  Is the system running?"

    #@4d
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@50
    goto :goto_0
.end method

.method private enableToString(Z)Ljava/lang/String;
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 135
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, "enabled"

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    const-string/jumbo v0, "disabled"

    #@9
    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 52
    :try_start_0
    new-instance v1, Lcom/android/commands/bmgr/Bmgr;

    #@2
    invoke-direct {v1}, Lcom/android/commands/bmgr/Bmgr;-><init>()V

    #@5
    invoke-virtual {v1, p0}, Lcom/android/commands/bmgr/Bmgr;->run([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 50
    :goto_0
    return-void

    #@9
    .line 53
    :catch_0
    move-exception v0

    #@a
    .line 54
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@c
    const-string/jumbo v2, "Exception caught:"

    #@f
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@12
    .line 55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@15
    goto :goto_0
.end method

.method private nextArg()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 627
    iget v1, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    #@2
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mArgs:[Ljava/lang/String;

    #@4
    array-length v2, v2

    #@5
    if-lt v1, v2, :cond_0

    #@7
    .line 628
    const/4 v1, 0x0

    #@8
    return-object v1

    #@9
    .line 630
    :cond_0
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mArgs:[Ljava/lang/String;

    #@b
    iget v2, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    #@d
    aget-object v0, v1, v2

    #@f
    .line 631
    .local v0, "arg":Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    #@11
    add-int/lit8 v1, v1, 0x1

    #@13
    iput v1, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    #@15
    .line 632
    return-object v0
.end method

.method private printRestoreSets([Landroid/app/backup/RestoreSet;)V
    .locals 8
    .param p1, "sets"    # [Landroid/app/backup/RestoreSet;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 453
    if-eqz p1, :cond_0

    #@3
    array-length v2, p1

    #@4
    if-nez v2, :cond_1

    #@6
    .line 454
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@8
    const-string/jumbo v2, "No restore sets"

    #@b
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e
    .line 455
    return-void

    #@f
    .line 457
    :cond_1
    array-length v2, p1

    #@10
    :goto_0
    if-ge v1, v2, :cond_2

    #@12
    aget-object v0, p1, v1

    #@14
    .line 458
    .local v0, "s":Landroid/app/backup/RestoreSet;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@16
    new-instance v4, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v5, "  "

    #@1e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    iget-wide v6, v0, Landroid/app/backup/RestoreSet;->token:J

    #@24
    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    const-string/jumbo v5, " : "

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    iget-object v5, v0, Landroid/app/backup/RestoreSet;->name:Ljava/lang/String;

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@40
    .line 457
    add-int/lit8 v1, v1, 0x1

    #@42
    goto :goto_0

    #@43
    .line 452
    .end local v0    # "s":Landroid/app/backup/RestoreSet;
    :cond_2
    return-void
.end method

.method private static showUsage()V
    .locals 2

    #@0
    .prologue
    .line 636
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    const-string/jumbo v1, "usage: bmgr [backup|restore|list|transport|run]"

    #@5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8
    .line 637
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a
    const-string/jumbo v1, "       bmgr backup PACKAGE"

    #@d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@10
    .line 638
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@12
    const-string/jumbo v1, "       bmgr enable BOOL"

    #@15
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@18
    .line 639
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1a
    const-string/jumbo v1, "       bmgr enabled"

    #@1d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@20
    .line 640
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@22
    const-string/jumbo v1, "       bmgr list transports"

    #@25
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    .line 641
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2a
    const-string/jumbo v1, "       bmgr list sets"

    #@2d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@30
    .line 642
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@32
    const-string/jumbo v1, "       bmgr transport WHICH"

    #@35
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@38
    .line 643
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3a
    const-string/jumbo v1, "       bmgr restore TOKEN"

    #@3d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@40
    .line 644
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@42
    const-string/jumbo v1, "       bmgr restore TOKEN PACKAGE..."

    #@45
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@48
    .line 645
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4a
    const-string/jumbo v1, "       bmgr restore PACKAGE"

    #@4d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@50
    .line 646
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@52
    const-string/jumbo v1, "       bmgr run"

    #@55
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@58
    .line 647
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5a
    const-string/jumbo v1, "       bmgr wipe TRANSPORT PACKAGE"

    #@5d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@60
    .line 648
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@62
    const-string/jumbo v1, "       bmgr fullbackup PACKAGE..."

    #@65
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@68
    .line 649
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@6a
    const-string/jumbo v1, "       bmgr backupnow --all|PACKAGE..."

    #@6d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@70
    .line 650
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@72
    const-string/jumbo v1, ""

    #@75
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@78
    .line 651
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@7a
    const-string/jumbo v1, "The \'backup\' command schedules a backup pass for the named package."

    #@7d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@80
    .line 652
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@82
    const-string/jumbo v1, "Note that the backup pass will effectively be a no-op if the package"

    #@85
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@88
    .line 653
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@8a
    const-string/jumbo v1, "does not actually have changed data to store."

    #@8d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@90
    .line 654
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@92
    const-string/jumbo v1, ""

    #@95
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@98
    .line 655
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@9a
    const-string/jumbo v1, "The \'enable\' command enables or disables the entire backup mechanism."

    #@9d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a0
    .line 656
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a2
    const-string/jumbo v1, "If the argument is \'true\' it will be enabled, otherwise it will be"

    #@a5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a8
    .line 657
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@aa
    const-string/jumbo v1, "disabled.  When disabled, neither backup or restore operations will"

    #@ad
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b0
    .line 658
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@b2
    const-string/jumbo v1, "be performed."

    #@b5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b8
    .line 659
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@ba
    const-string/jumbo v1, ""

    #@bd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c0
    .line 660
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@c2
    const-string/jumbo v1, "The \'enabled\' command reports the current enabled/disabled state of"

    #@c5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c8
    .line 661
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@ca
    const-string/jumbo v1, "the backup mechanism."

    #@cd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d0
    .line 662
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@d2
    const-string/jumbo v1, ""

    #@d5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d8
    .line 663
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@da
    const-string/jumbo v1, "The \'list transports\' command reports the names of the backup transports"

    #@dd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e0
    .line 664
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@e2
    const-string/jumbo v1, "currently available on the device.  These names can be passed as arguments"

    #@e5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e8
    .line 665
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@ea
    const-string/jumbo v1, "to the \'transport\' and \'wipe\' commands.  The currently active transport"

    #@ed
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f0
    .line 666
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@f2
    const-string/jumbo v1, "is indicated with a \'*\' character."

    #@f5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f8
    .line 667
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@fa
    const-string/jumbo v1, ""

    #@fd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@100
    .line 668
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@102
    const-string/jumbo v1, "The \'list sets\' command reports the token and name of each restore set"

    #@105
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@108
    .line 669
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@10a
    const-string/jumbo v1, "available to the device via the currently active transport."

    #@10d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@110
    .line 670
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@112
    const-string/jumbo v1, ""

    #@115
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@118
    .line 671
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@11a
    const-string/jumbo v1, "The \'transport\' command designates the named transport as the currently"

    #@11d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@120
    .line 672
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@122
    const-string/jumbo v1, "active one.  This setting is persistent across reboots."

    #@125
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@128
    .line 673
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@12a
    const-string/jumbo v1, ""

    #@12d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@130
    .line 674
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@132
    const-string/jumbo v1, "The \'restore\' command when given just a restore token initiates a full-system"

    #@135
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@138
    .line 675
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@13a
    const-string/jumbo v1, "restore operation from the currently active transport.  It will deliver"

    #@13d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@140
    .line 676
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@142
    const-string/jumbo v1, "the restore set designated by the TOKEN argument to each application"

    #@145
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@148
    .line 677
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@14a
    const-string/jumbo v1, "that had contributed data to that restore set."

    #@14d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@150
    .line 678
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@152
    const-string/jumbo v1, ""

    #@155
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@158
    .line 679
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@15a
    const-string/jumbo v1, "The \'restore\' command when given a token and one or more package names"

    #@15d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@160
    .line 680
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@162
    const-string/jumbo v1, "initiates a restore operation of just those given packages from the restore"

    #@165
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@168
    .line 681
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@16a
    const-string/jumbo v1, "set designated by the TOKEN argument.  It is effectively the same as the"

    #@16d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@170
    .line 682
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@172
    const-string/jumbo v1, "\'restore\' operation supplying only a token, but applies a filter to the"

    #@175
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@178
    .line 683
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@17a
    const-string/jumbo v1, "set of applications to be restored."

    #@17d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@180
    .line 684
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@182
    const-string/jumbo v1, ""

    #@185
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@188
    .line 685
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@18a
    const-string/jumbo v1, "The \'restore\' command when given just a package name intiates a restore of"

    #@18d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@190
    .line 686
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@192
    const-string/jumbo v1, "just that one package according to the restore set selection algorithm"

    #@195
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@198
    .line 687
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@19a
    const-string/jumbo v1, "used by the RestoreSession.restorePackage() method."

    #@19d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1a0
    .line 688
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1a2
    const-string/jumbo v1, ""

    #@1a5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1a8
    .line 689
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1aa
    const-string/jumbo v1, "The \'run\' command causes any scheduled backup operation to be initiated"

    #@1ad
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1b0
    .line 690
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1b2
    const-string/jumbo v1, "immediately, without the usual waiting period for batching together"

    #@1b5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1b8
    .line 691
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1ba
    const-string/jumbo v1, "data changes."

    #@1bd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1c0
    .line 692
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1c2
    const-string/jumbo v1, ""

    #@1c5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1c8
    .line 693
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1ca
    const-string/jumbo v1, "The \'wipe\' command causes all backed-up data for the given package to be"

    #@1cd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d0
    .line 694
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1d2
    const-string/jumbo v1, "erased from the given transport\'s storage.  The next backup operation"

    #@1d5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d8
    .line 695
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1da
    const-string/jumbo v1, "that the given application performs will rewrite its entire data set."

    #@1dd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1e0
    .line 696
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1e2
    const-string/jumbo v1, "Transport names to use here are those reported by \'list transports\'."

    #@1e5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1e8
    .line 697
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1ea
    const-string/jumbo v1, ""

    #@1ed
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1f0
    .line 698
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1f2
    const-string/jumbo v1, "The \'fullbackup\' command induces a full-data stream backup for one or more"

    #@1f5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1f8
    .line 699
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1fa
    const-string/jumbo v1, "packages.  The data is sent via the currently active transport."

    #@1fd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@200
    .line 700
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@202
    const-string/jumbo v1, ""

    #@205
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@208
    .line 701
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@20a
    const-string/jumbo v1, "The \'backupnow\' command runs an immediate backup for one or more packages."

    #@20d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@210
    .line 702
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@212
    const-string/jumbo v1, "    --all flag runs backup for all eligible packages."

    #@215
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@218
    .line 703
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@21a
    const-string/jumbo v1, "For each package it will run key/value or full data backup "

    #@21d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@220
    .line 704
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@222
    const-string/jumbo v1, "depending on the package\'s manifest declarations."

    #@225
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@228
    .line 705
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@22a
    const-string/jumbo v1, "The data is sent via the currently active transport."

    #@22d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@230
    .line 635
    return-void
.end method


# virtual methods
.method public run([Ljava/lang/String;)V
    .locals 3
    .param p1, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 60
    array-length v1, p1

    #@2
    if-ge v1, v2, :cond_0

    #@4
    .line 61
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    #@7
    .line 62
    return-void

    #@8
    .line 65
    :cond_0
    const-string/jumbo v1, "backup"

    #@b
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@e
    move-result-object v1

    #@f
    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    #@12
    move-result-object v1

    #@13
    iput-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    #@15
    .line 66
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    #@17
    if-nez v1, :cond_1

    #@19
    .line 67
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1b
    const-string/jumbo v2, "Error: Could not access the Backup Manager.  Is the system running?"

    #@1e
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@21
    .line 68
    return-void

    #@22
    .line 71
    :cond_1
    iput-object p1, p0, Lcom/android/commands/bmgr/Bmgr;->mArgs:[Ljava/lang/String;

    #@24
    .line 72
    const/4 v1, 0x0

    #@25
    aget-object v0, p1, v1

    #@27
    .line 73
    .local v0, "op":Ljava/lang/String;
    iput v2, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    #@29
    .line 75
    const-string/jumbo v1, "enabled"

    #@2c
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_2

    #@32
    .line 76
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doEnabled()V

    #@35
    .line 77
    return-void

    #@36
    .line 80
    :cond_2
    const-string/jumbo v1, "enable"

    #@39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_3

    #@3f
    .line 81
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doEnable()V

    #@42
    .line 82
    return-void

    #@43
    .line 85
    :cond_3
    const-string/jumbo v1, "run"

    #@46
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v1

    #@4a
    if-eqz v1, :cond_4

    #@4c
    .line 86
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doRun()V

    #@4f
    .line 87
    return-void

    #@50
    .line 90
    :cond_4
    const-string/jumbo v1, "backup"

    #@53
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v1

    #@57
    if-eqz v1, :cond_5

    #@59
    .line 91
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doBackup()V

    #@5c
    .line 92
    return-void

    #@5d
    .line 95
    :cond_5
    const-string/jumbo v1, "list"

    #@60
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v1

    #@64
    if-eqz v1, :cond_6

    #@66
    .line 96
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doList()V

    #@69
    .line 97
    return-void

    #@6a
    .line 100
    :cond_6
    const-string/jumbo v1, "restore"

    #@6d
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@70
    move-result v1

    #@71
    if-eqz v1, :cond_7

    #@73
    .line 101
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doRestore()V

    #@76
    .line 102
    return-void

    #@77
    .line 105
    :cond_7
    const-string/jumbo v1, "transport"

    #@7a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7d
    move-result v1

    #@7e
    if-eqz v1, :cond_8

    #@80
    .line 106
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doTransport()V

    #@83
    .line 107
    return-void

    #@84
    .line 110
    :cond_8
    const-string/jumbo v1, "wipe"

    #@87
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8a
    move-result v1

    #@8b
    if-eqz v1, :cond_9

    #@8d
    .line 111
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doWipe()V

    #@90
    .line 112
    return-void

    #@91
    .line 115
    :cond_9
    const-string/jumbo v1, "fullbackup"

    #@94
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@97
    move-result v1

    #@98
    if-eqz v1, :cond_a

    #@9a
    .line 116
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doFullTransportBackup()V

    #@9d
    .line 117
    return-void

    #@9e
    .line 120
    :cond_a
    const-string/jumbo v1, "backupnow"

    #@a1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a4
    move-result v1

    #@a5
    if-eqz v1, :cond_b

    #@a7
    .line 121
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doBackupNow()V

    #@aa
    .line 122
    return-void

    #@ab
    .line 125
    :cond_b
    const-string/jumbo v1, "whitelist"

    #@ae
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b1
    move-result v1

    #@b2
    if-eqz v1, :cond_c

    #@b4
    .line 126
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doPrintWhitelist()V

    #@b7
    .line 127
    return-void

    #@b8
    .line 130
    :cond_c
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@ba
    const-string/jumbo v2, "Unknown command"

    #@bd
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c0
    .line 131
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    #@c3
    .line 59
    return-void
.end method
