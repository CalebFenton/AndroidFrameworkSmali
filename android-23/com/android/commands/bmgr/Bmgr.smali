.class public final Lcom/android/commands/bmgr/Bmgr;
.super Ljava/lang/Object;
.source "Bmgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    }
.end annotation


# static fields
.field static final BMGR_NOT_RUNNING_ERR:Ljava/lang/String; = "Error: Could not access the Backup Manager.  Is the system running?"

.field static final TRANSPORT_NOT_RUNNING_ERR:Ljava/lang/String; = "Error: Could not access the backup transport.  Is the system running?"


# instance fields
.field private mArgs:[Ljava/lang/String;

.field mBmgr:Landroid/app/backup/IBackupManager;

.field private mNextArg:I

.field mRestore:Landroid/app/backup/IRestoreSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private doBackup()V
    .locals 4

    #@0
    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 161
    .local v1, "pkg":Ljava/lang/String;
    if-nez v1, :cond_0

    #@6
    .line 162
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    #@9
    .line 163
    return-void

    #@a
    .line 167
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    #@c
    invoke-interface {v2, v1}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 159
    :goto_0
    return-void

    #@10
    .line 168
    :catch_0
    move-exception v0

    #@11
    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@13
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1a
    .line 170
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1c
    const-string/jumbo v3, "Error: Could not access the Backup Manager.  Is the system running?"

    #@1f
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@22
    goto :goto_0
.end method

.method private doEnable()V
    .locals 7

    #@0
    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 132
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 133
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    #@9
    .line 134
    return-void

    #@a
    .line 138
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@d
    move-result v3

    #@e
    .line 139
    .local v3, "enable":Z
    iget-object v4, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    #@10
    invoke-interface {v4, v3}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V

    #@13
    .line 140
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
    .line 130
    .end local v3    # "enable":Z
    :goto_0
    return-void

    #@31
    .line 144
    :catch_0
    move-exception v1

    #@32
    .line 145
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@34
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3b
    .line 146
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3d
    const-string/jumbo v5, "Error: Could not access the Backup Manager.  Is the system running?"

    #@40
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@43
    goto :goto_0

    #@44
    .line 141
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    #@45
    .line 142
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    #@48
    .line 143
    return-void
.end method

.method private doEnabled()V
    .locals 5

    #@0
    .prologue
    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    #@2
    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    #@5
    move-result v1

    #@6
    .line 122
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
    .line 123
    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->enableToString(Z)Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    .line 122
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
    .line 119
    .end local v1    # "isEnabled":Z
    :goto_0
    return-void

    #@24
    .line 124
    :catch_0
    move-exception v0

    #@25
    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@27
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2e
    .line 126
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
    .line 175
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    const-string/jumbo v4, "Performing full transport backup"

    #@5
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8
    .line 178
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@d
    .line 179
    .local v0, "allPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    .local v2, "pkg":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@13
    .line 180
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    goto :goto_0

    #@17
    .line 182
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v3

    #@1b
    if-lez v3, :cond_1

    #@1d
    .line 184
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
    .line 174
    :cond_1
    :goto_1
    return-void

    #@2f
    .line 185
    :catch_0
    move-exception v1

    #@30
    .line 186
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@32
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@39
    .line 187
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
    .line 236
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 237
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v2, "transports"

    #@7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 238
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doListTransports()V

    #@10
    .line 239
    return-void

    #@11
    .line 244
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
    .line 245
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    #@1d
    if-nez v2, :cond_1

    #@1f
    .line 246
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@21
    const-string/jumbo v3, "Error: Could not access the Backup Manager.  Is the system running?"

    #@24
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@27
    .line 247
    return-void

    #@28
    .line 250
    :cond_1
    const-string/jumbo v2, "sets"

    #@2b
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_3

    #@31
    .line 251
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doListRestoreSets()V

    #@34
    .line 256
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    #@36
    invoke-interface {v2}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V

    #@39
    .line 235
    :goto_1
    return-void

    #@3a
    .line 252
    :cond_3
    const-string/jumbo v2, "transports"

    #@3d
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_2

    #@43
    .line 253
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doListTransports()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    goto :goto_0

    #@47
    .line 257
    :catch_0
    move-exception v1

    #@48
    .line 258
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4a
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@51
    .line 259
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
    .line 284
    :try_start_0
    new-instance v2, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;

    #@2
    invoke-direct {v2, p0}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;-><init>(Lcom/android/commands/bmgr/Bmgr;)V

    #@5
    .line 285
    .local v2, "observer":Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    #@7
    invoke-interface {v3, v2}, Landroid/app/backup/IRestoreSession;->getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;)I

    #@a
    move-result v1

    #@b
    .line 286
    .local v1, "err":I
    if-eqz v1, :cond_0

    #@d
    .line 287
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f
    const-string/jumbo v4, "Unable to request restore sets"

    #@12
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@15
    .line 282
    .end local v1    # "err":I
    .end local v2    # "observer":Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    :goto_0
    return-void

    #@16
    .line 289
    .restart local v1    # "err":I
    .restart local v2    # "observer":Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    :cond_0
    invoke-virtual {v2}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->waitForCompletion()V

    #@19
    .line 290
    iget-object v3, v2, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->sets:[Landroid/app/backup/RestoreSet;

    #@1b
    invoke-direct {p0, v3}, Lcom/android/commands/bmgr/Bmgr;->printRestoreSets([Landroid/app/backup/RestoreSet;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    goto :goto_0

    #@1f
    .line 292
    .end local v1    # "err":I
    .end local v2    # "observer":Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    :catch_0
    move-exception v0

    #@20
    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@22
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@29
    .line 294
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
    .line 265
    :try_start_0
    iget-object v6, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    #@3
    invoke-interface {v6}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 266
    .local v0, "current":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    #@9
    invoke-interface {v6}, Landroid/app/backup/IBackupManager;->listAllTransports()[Ljava/lang/String;

    #@c
    move-result-object v4

    #@d
    .line 267
    .local v4, "transports":[Ljava/lang/String;
    if-eqz v4, :cond_0

    #@f
    array-length v6, v4

    #@10
    if-nez v6, :cond_1

    #@12
    .line 268
    :cond_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@14
    const-string/jumbo v6, "No transports available."

    #@17
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1a
    .line 269
    return-void

    #@1b
    .line 272
    :cond_1
    array-length v6, v4

    #@1c
    :goto_0
    if-ge v5, v6, :cond_3

    #@1e
    aget-object v3, v4, v5

    #@20
    .line 273
    .local v3, "t":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v7

    #@24
    if-eqz v7, :cond_2

    #@26
    const-string/jumbo v2, "  * "

    #@29
    .line 274
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
    .line 272
    add-int/lit8 v5, v5, 0x1

    #@41
    goto :goto_0

    #@42
    .line 273
    .end local v2    # "pad":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "    "
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    .restart local v2    # "pad":Ljava/lang/String;
    goto :goto_1

    #@46
    .line 276
    .end local v0    # "current":Ljava/lang/String;
    .end local v2    # "pad":Ljava/lang/String;
    .end local v3    # "t":Ljava/lang/String;
    .end local v4    # "transports":[Ljava/lang/String;
    :catch_0
    move-exception v1

    #@47
    .line 277
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@49
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@50
    .line 278
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@52
    const-string/jumbo v6, "Error: Could not access the Backup Manager.  Is the system running?"

    #@55
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@58
    .line 263
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    return-void
.end method

.method private doRestore()V
    .locals 7

    #@0
    .prologue
    .line 351
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 352
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 353
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    #@9
    .line 354
    return-void

    #@a
    .line 357
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
    .line 359
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doRestorePackage(Ljava/lang/String;)V

    #@1e
    .line 376
    :goto_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@20
    const-string/jumbo v6, "done"

    #@23
    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@26
    .line 350
    return-void

    #@27
    .line 362
    :cond_2
    const/16 v3, 0x10

    #@29
    :try_start_0
    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@2c
    move-result-wide v4

    #@2d
    .line 363
    .local v4, "token":J
    const/4 v2, 0x0

    #@2e
    .line 364
    :goto_1
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    if-eqz v0, :cond_4

    #@34
    .line 365
    if-nez v2, :cond_3

    #@36
    new-instance v2, Ljava/util/HashSet;

    #@38
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@3b
    .line 366
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    goto :goto_1

    #@3f
    .line 370
    .end local v4    # "token":J
    :catch_0
    move-exception v1

    #@40
    .line 371
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    #@43
    .line 372
    return-void

    #@44
    .line 369
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
    .line 405
    new-instance v6, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;

    #@3
    invoke-direct {v6, p0}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;-><init>(Lcom/android/commands/bmgr/Bmgr;)V

    #@6
    .line 408
    .local v6, "observer":Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    const/4 v2, 0x0

    #@7
    .line 409
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
    .line 410
    iget-object v10, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    #@13
    if-nez v10, :cond_0

    #@15
    .line 411
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@17
    const-string/jumbo v10, "Error: Could not access the Backup Manager.  Is the system running?"

    #@1a
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d
    .line 412
    return-void

    #@1e
    .line 414
    :cond_0
    const/4 v8, 0x0

    #@1f
    .line 415
    .local v8, "sets":[Landroid/app/backup/RestoreSet;
    iget-object v10, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    #@21
    invoke-interface {v10, v6}, Landroid/app/backup/IRestoreSession;->getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;)I

    #@24
    move-result v4

    #@25
    .line 416
    .local v4, "err":I
    if-nez v4, :cond_1

    #@27
    .line 417
    invoke-virtual {v6}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->waitForCompletion()V

    #@2a
    .line 418
    iget-object v8, v6, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->sets:[Landroid/app/backup/RestoreSet;

    #@2c
    .line 419
    .local v8, "sets":[Landroid/app/backup/RestoreSet;
    if-eqz v8, :cond_1

    #@2e
    .line 420
    array-length v10, v8

    #@2f
    :goto_0
    if-ge v9, v10, :cond_1

    #@31
    aget-object v7, v8, v9

    #@33
    .line 421
    .local v7, "s":Landroid/app/backup/RestoreSet;
    iget-wide v12, v7, Landroid/app/backup/RestoreSet;->token:J

    #@35
    cmp-long v11, v12, p1

    #@37
    if-nez v11, :cond_8

    #@39
    .line 422
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
    .line 423
    if-nez p3, :cond_6

    #@56
    .line 424
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
    .line 435
    .end local v7    # "s":Landroid/app/backup/RestoreSet;
    .end local v8    # "sets":[Landroid/app/backup/RestoreSet;
    :cond_1
    :goto_1
    if-nez v2, :cond_3

    #@63
    .line 436
    if-eqz v8, :cond_2

    #@65
    array-length v9, v8

    #@66
    if-nez v9, :cond_9

    #@68
    .line 437
    :cond_2
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6a
    const-string/jumbo v10, "No available restore sets; no restore performed"

    #@6d
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@70
    .line 446
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    #@72
    .line 447
    invoke-virtual {v6}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->waitForCompletion()V

    #@75
    .line 451
    :cond_4
    iget-object v9, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    #@77
    invoke-interface {v9}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V

    #@7a
    .line 404
    .end local v4    # "err":I
    :goto_3
    return-void

    #@7b
    .line 424
    .restart local v4    # "err":I
    .restart local v7    # "s":Landroid/app/backup/RestoreSet;
    .restart local v8    # "sets":[Landroid/app/backup/RestoreSet;
    :cond_5
    const/4 v2, 0x0

    #@7c
    goto :goto_1

    #@7d
    .line 426
    :cond_6
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashSet;->size()I

    #@80
    move-result v9

    #@81
    new-array v5, v9, [Ljava/lang/String;

    #@83
    .line 427
    .local v5, "names":[Ljava/lang/String;
    move-object/from16 v0, p3

    #@85
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@88
    .line 428
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
    .line 420
    .end local v5    # "names":[Ljava/lang/String;
    :cond_8
    add-int/lit8 v9, v9, 0x1

    #@98
    goto :goto_0

    #@99
    .line 439
    .end local v7    # "s":Landroid/app/backup/RestoreSet;
    .end local v8    # "sets":[Landroid/app/backup/RestoreSet;
    :cond_9
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@9b
    const-string/jumbo v10, "No matching restore set token.  Available sets:"

    #@9e
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a1
    .line 440
    invoke-direct {p0, v8}, Lcom/android/commands/bmgr/Bmgr;->printRestoreSets([Landroid/app/backup/RestoreSet;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a4
    goto :goto_2

    #@a5
    .line 452
    .end local v4    # "err":I
    :catch_0
    move-exception v3

    #@a6
    .line 453
    .local v3, "e":Landroid/os/RemoteException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a8
    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@ab
    move-result-object v10

    #@ac
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@af
    .line 454
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
    .line 381
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
    .line 382
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    #@b
    if-nez v3, :cond_0

    #@d
    .line 383
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@f
    const-string/jumbo v4, "Error: Could not access the Backup Manager.  Is the system running?"

    #@12
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@15
    .line 384
    return-void

    #@16
    .line 387
    :cond_0
    new-instance v2, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;

    #@18
    invoke-direct {v2, p0}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;-><init>(Lcom/android/commands/bmgr/Bmgr;)V

    #@1b
    .line 388
    .local v2, "observer":Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    #@1d
    invoke-interface {v3, p1, v2}, Landroid/app/backup/IRestoreSession;->restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;)I

    #@20
    move-result v1

    #@21
    .line 389
    .local v1, "err":I
    if-nez v1, :cond_1

    #@23
    .line 391
    invoke-virtual {v2}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->waitForCompletion()V

    #@26
    .line 397
    :goto_0
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    #@28
    invoke-interface {v3}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V

    #@2b
    .line 379
    .end local v1    # "err":I
    .end local v2    # "observer":Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    :goto_1
    return-void

    #@2c
    .line 393
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
    .line 398
    .end local v1    # "err":I
    .end local v2    # "observer":Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    :catch_0
    move-exception v0

    #@47
    .line 399
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@49
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@50
    .line 400
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
    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    #@2
    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->backupNow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 150
    :goto_0
    return-void

    #@6
    .line 153
    :catch_0
    move-exception v0

    #@7
    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@9
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@10
    .line 155
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
    .line 194
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 195
    .local v2, "which":Ljava/lang/String;
    if-nez v2, :cond_0

    #@6
    .line 196
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    #@9
    .line 197
    return-void

    #@a
    .line 200
    :cond_0
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    #@c
    invoke-interface {v3, v2}, Landroid/app/backup/IBackupManager;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 201
    .local v1, "old":Ljava/lang/String;
    if-nez v1, :cond_1

    #@12
    .line 202
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
    .line 203
    const-string/jumbo v5, "\' specified; no changes made."

    #@27
    .line 202
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
    .line 192
    .end local v1    # "old":Ljava/lang/String;
    .end local v2    # "which":Ljava/lang/String;
    :goto_0
    return-void

    #@33
    .line 205
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
    .line 207
    .end local v1    # "old":Ljava/lang/String;
    .end local v2    # "which":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@60
    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@62
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@69
    .line 209
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
    .line 214
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 215
    .local v2, "transport":Ljava/lang/String;
    if-nez v2, :cond_0

    #@6
    .line 216
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    #@9
    .line 217
    return-void

    #@a
    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 221
    .local v1, "pkg":Ljava/lang/String;
    if-nez v1, :cond_1

    #@10
    .line 222
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    #@13
    .line 223
    return-void

    #@14
    .line 227
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    #@16
    invoke-interface {v3, v2, v1}, Landroid/app/backup/IBackupManager;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    .line 228
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
    .line 213
    :goto_0
    return-void

    #@3e
    .line 229
    :catch_0
    move-exception v0

    #@3f
    .line 230
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@41
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@48
    .line 231
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
    .line 116
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
    .line 43
    :try_start_0
    new-instance v1, Lcom/android/commands/bmgr/Bmgr;

    #@2
    invoke-direct {v1}, Lcom/android/commands/bmgr/Bmgr;-><init>()V

    #@5
    invoke-virtual {v1, p0}, Lcom/android/commands/bmgr/Bmgr;->run([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 41
    :goto_0
    return-void

    #@9
    .line 44
    :catch_0
    move-exception v0

    #@a
    .line 45
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@c
    const-string/jumbo v2, "Exception caught:"

    #@f
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@12
    .line 46
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@15
    goto :goto_0
.end method

.method private nextArg()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 459
    iget v1, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    #@2
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mArgs:[Ljava/lang/String;

    #@4
    array-length v2, v2

    #@5
    if-lt v1, v2, :cond_0

    #@7
    .line 460
    const/4 v1, 0x0

    #@8
    return-object v1

    #@9
    .line 462
    :cond_0
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mArgs:[Ljava/lang/String;

    #@b
    iget v2, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    #@d
    aget-object v0, v1, v2

    #@f
    .line 463
    .local v0, "arg":Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    #@11
    add-int/lit8 v1, v1, 0x1

    #@13
    iput v1, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    #@15
    .line 464
    return-object v0
.end method

.method private printRestoreSets([Landroid/app/backup/RestoreSet;)V
    .locals 8
    .param p1, "sets"    # [Landroid/app/backup/RestoreSet;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 299
    if-eqz p1, :cond_0

    #@3
    array-length v2, p1

    #@4
    if-nez v2, :cond_1

    #@6
    .line 300
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@8
    const-string/jumbo v2, "No restore sets"

    #@b
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e
    .line 301
    return-void

    #@f
    .line 303
    :cond_1
    array-length v2, p1

    #@10
    :goto_0
    if-ge v1, v2, :cond_2

    #@12
    aget-object v0, p1, v1

    #@14
    .line 304
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
    .line 303
    add-int/lit8 v1, v1, 0x1

    #@42
    goto :goto_0

    #@43
    .line 298
    .end local v0    # "s":Landroid/app/backup/RestoreSet;
    :cond_2
    return-void
.end method

.method private static showUsage()V
    .locals 2

    #@0
    .prologue
    .line 468
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    const-string/jumbo v1, "usage: bmgr [backup|restore|list|transport|run]"

    #@5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8
    .line 469
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a
    const-string/jumbo v1, "       bmgr backup PACKAGE"

    #@d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@10
    .line 470
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@12
    const-string/jumbo v1, "       bmgr enable BOOL"

    #@15
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@18
    .line 471
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1a
    const-string/jumbo v1, "       bmgr enabled"

    #@1d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@20
    .line 472
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@22
    const-string/jumbo v1, "       bmgr list transports"

    #@25
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    .line 473
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2a
    const-string/jumbo v1, "       bmgr list sets"

    #@2d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@30
    .line 474
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@32
    const-string/jumbo v1, "       bmgr transport WHICH"

    #@35
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@38
    .line 475
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3a
    const-string/jumbo v1, "       bmgr restore TOKEN"

    #@3d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@40
    .line 476
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@42
    const-string/jumbo v1, "       bmgr restore TOKEN PACKAGE..."

    #@45
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@48
    .line 477
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4a
    const-string/jumbo v1, "       bmgr restore PACKAGE"

    #@4d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@50
    .line 478
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@52
    const-string/jumbo v1, "       bmgr run"

    #@55
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@58
    .line 479
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5a
    const-string/jumbo v1, "       bmgr wipe TRANSPORT PACKAGE"

    #@5d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@60
    .line 480
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@62
    const-string/jumbo v1, "       bmgr fullbackup PACKAGE..."

    #@65
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@68
    .line 481
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@6a
    const-string/jumbo v1, ""

    #@6d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@70
    .line 482
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@72
    const-string/jumbo v1, "The \'backup\' command schedules a backup pass for the named package."

    #@75
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@78
    .line 483
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@7a
    const-string/jumbo v1, "Note that the backup pass will effectively be a no-op if the package"

    #@7d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@80
    .line 484
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@82
    const-string/jumbo v1, "does not actually have changed data to store."

    #@85
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@88
    .line 485
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@8a
    const-string/jumbo v1, ""

    #@8d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@90
    .line 486
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@92
    const-string/jumbo v1, "The \'enable\' command enables or disables the entire backup mechanism."

    #@95
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@98
    .line 487
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@9a
    const-string/jumbo v1, "If the argument is \'true\' it will be enabled, otherwise it will be"

    #@9d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a0
    .line 488
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a2
    const-string/jumbo v1, "disabled.  When disabled, neither backup or restore operations will"

    #@a5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a8
    .line 489
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@aa
    const-string/jumbo v1, "be performed."

    #@ad
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b0
    .line 490
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@b2
    const-string/jumbo v1, ""

    #@b5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b8
    .line 491
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@ba
    const-string/jumbo v1, "The \'enabled\' command reports the current enabled/disabled state of"

    #@bd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c0
    .line 492
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@c2
    const-string/jumbo v1, "the backup mechanism."

    #@c5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c8
    .line 493
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@ca
    const-string/jumbo v1, ""

    #@cd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d0
    .line 494
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@d2
    const-string/jumbo v1, "The \'list transports\' command reports the names of the backup transports"

    #@d5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d8
    .line 495
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@da
    const-string/jumbo v1, "currently available on the device.  These names can be passed as arguments"

    #@dd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e0
    .line 496
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@e2
    const-string/jumbo v1, "to the \'transport\' and \'wipe\' commands.  The currently active transport"

    #@e5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e8
    .line 497
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@ea
    const-string/jumbo v1, "is indicated with a \'*\' character."

    #@ed
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f0
    .line 498
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@f2
    const-string/jumbo v1, ""

    #@f5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f8
    .line 499
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@fa
    const-string/jumbo v1, "The \'list sets\' command reports the token and name of each restore set"

    #@fd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@100
    .line 500
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@102
    const-string/jumbo v1, "available to the device via the currently active transport."

    #@105
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@108
    .line 501
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@10a
    const-string/jumbo v1, ""

    #@10d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@110
    .line 502
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@112
    const-string/jumbo v1, "The \'transport\' command designates the named transport as the currently"

    #@115
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@118
    .line 503
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@11a
    const-string/jumbo v1, "active one.  This setting is persistent across reboots."

    #@11d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@120
    .line 504
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@122
    const-string/jumbo v1, ""

    #@125
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@128
    .line 505
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@12a
    const-string/jumbo v1, "The \'restore\' command when given just a restore token initiates a full-system"

    #@12d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@130
    .line 506
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@132
    const-string/jumbo v1, "restore operation from the currently active transport.  It will deliver"

    #@135
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@138
    .line 507
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@13a
    const-string/jumbo v1, "the restore set designated by the TOKEN argument to each application"

    #@13d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@140
    .line 508
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@142
    const-string/jumbo v1, "that had contributed data to that restore set."

    #@145
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@148
    .line 509
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@14a
    const-string/jumbo v1, ""

    #@14d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@150
    .line 510
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@152
    const-string/jumbo v1, "The \'restore\' command when given a token and one or more package names"

    #@155
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@158
    .line 511
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@15a
    const-string/jumbo v1, "initiates a restore operation of just those given packages from the restore"

    #@15d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@160
    .line 512
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@162
    const-string/jumbo v1, "set designated by the TOKEN argument.  It is effectively the same as the"

    #@165
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@168
    .line 513
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@16a
    const-string/jumbo v1, "\'restore\' operation supplying only a token, but applies a filter to the"

    #@16d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@170
    .line 514
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@172
    const-string/jumbo v1, "set of applications to be restored."

    #@175
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@178
    .line 515
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@17a
    const-string/jumbo v1, ""

    #@17d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@180
    .line 516
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@182
    const-string/jumbo v1, "The \'restore\' command when given just a package name intiates a restore of"

    #@185
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@188
    .line 517
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@18a
    const-string/jumbo v1, "just that one package according to the restore set selection algorithm"

    #@18d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@190
    .line 518
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@192
    const-string/jumbo v1, "used by the RestoreSession.restorePackage() method."

    #@195
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@198
    .line 519
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@19a
    const-string/jumbo v1, ""

    #@19d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1a0
    .line 520
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1a2
    const-string/jumbo v1, "The \'run\' command causes any scheduled backup operation to be initiated"

    #@1a5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1a8
    .line 521
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1aa
    const-string/jumbo v1, "immediately, without the usual waiting period for batching together"

    #@1ad
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1b0
    .line 522
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1b2
    const-string/jumbo v1, "data changes."

    #@1b5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1b8
    .line 523
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1ba
    const-string/jumbo v1, ""

    #@1bd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1c0
    .line 524
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1c2
    const-string/jumbo v1, "The \'wipe\' command causes all backed-up data for the given package to be"

    #@1c5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1c8
    .line 525
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1ca
    const-string/jumbo v1, "erased from the given transport\'s storage.  The next backup operation"

    #@1cd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d0
    .line 526
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1d2
    const-string/jumbo v1, "that the given application performs will rewrite its entire data set."

    #@1d5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d8
    .line 527
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1da
    const-string/jumbo v1, "Transport names to use here are those reported by \'list transports\'."

    #@1dd
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1e0
    .line 528
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1e2
    const-string/jumbo v1, ""

    #@1e5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1e8
    .line 529
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1ea
    const-string/jumbo v1, "The \'fullbackup\' command induces a full-data stream backup for one or more"

    #@1ed
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1f0
    .line 530
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1f2
    const-string/jumbo v1, "packages.  The data is sent via the currently active transport."

    #@1f5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1f8
    .line 467
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
    .line 51
    array-length v1, p1

    #@2
    if-ge v1, v2, :cond_0

    #@4
    .line 52
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    #@7
    .line 53
    return-void

    #@8
    .line 56
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
    .line 57
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    #@17
    if-nez v1, :cond_1

    #@19
    .line 58
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1b
    const-string/jumbo v2, "Error: Could not access the Backup Manager.  Is the system running?"

    #@1e
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@21
    .line 59
    return-void

    #@22
    .line 62
    :cond_1
    iput-object p1, p0, Lcom/android/commands/bmgr/Bmgr;->mArgs:[Ljava/lang/String;

    #@24
    .line 63
    const/4 v1, 0x0

    #@25
    aget-object v0, p1, v1

    #@27
    .line 64
    .local v0, "op":Ljava/lang/String;
    iput v2, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    #@29
    .line 66
    const-string/jumbo v1, "enabled"

    #@2c
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_2

    #@32
    .line 67
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doEnabled()V

    #@35
    .line 68
    return-void

    #@36
    .line 71
    :cond_2
    const-string/jumbo v1, "enable"

    #@39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_3

    #@3f
    .line 72
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doEnable()V

    #@42
    .line 73
    return-void

    #@43
    .line 76
    :cond_3
    const-string/jumbo v1, "run"

    #@46
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v1

    #@4a
    if-eqz v1, :cond_4

    #@4c
    .line 77
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doRun()V

    #@4f
    .line 78
    return-void

    #@50
    .line 81
    :cond_4
    const-string/jumbo v1, "backup"

    #@53
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v1

    #@57
    if-eqz v1, :cond_5

    #@59
    .line 82
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doBackup()V

    #@5c
    .line 83
    return-void

    #@5d
    .line 86
    :cond_5
    const-string/jumbo v1, "list"

    #@60
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v1

    #@64
    if-eqz v1, :cond_6

    #@66
    .line 87
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doList()V

    #@69
    .line 88
    return-void

    #@6a
    .line 91
    :cond_6
    const-string/jumbo v1, "restore"

    #@6d
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@70
    move-result v1

    #@71
    if-eqz v1, :cond_7

    #@73
    .line 92
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doRestore()V

    #@76
    .line 93
    return-void

    #@77
    .line 96
    :cond_7
    const-string/jumbo v1, "transport"

    #@7a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7d
    move-result v1

    #@7e
    if-eqz v1, :cond_8

    #@80
    .line 97
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doTransport()V

    #@83
    .line 98
    return-void

    #@84
    .line 101
    :cond_8
    const-string/jumbo v1, "wipe"

    #@87
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8a
    move-result v1

    #@8b
    if-eqz v1, :cond_9

    #@8d
    .line 102
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doWipe()V

    #@90
    .line 103
    return-void

    #@91
    .line 106
    :cond_9
    const-string/jumbo v1, "fullbackup"

    #@94
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@97
    move-result v1

    #@98
    if-eqz v1, :cond_a

    #@9a
    .line 107
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doFullTransportBackup()V

    #@9d
    .line 108
    return-void

    #@9e
    .line 111
    :cond_a
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a0
    const-string/jumbo v2, "Unknown command"

    #@a3
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a6
    .line 112
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    #@a9
    .line 50
    return-void
.end method
