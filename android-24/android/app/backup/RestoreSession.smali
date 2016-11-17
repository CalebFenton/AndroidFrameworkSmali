.class public Landroid/app/backup/RestoreSession;
.super Ljava/lang/Object;
.source "RestoreSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/RestoreSession$RestoreObserverWrapper;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "RestoreSession"


# instance fields
.field mBinder:Landroid/app/backup/IRestoreSession;

.field final mContext:Landroid/content/Context;

.field mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "binder"    # Landroid/app/backup/IRestoreSession;

    #@0
    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    #@6
    .line 177
    iput-object p1, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    #@8
    .line 178
    iput-object p2, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    #@a
    .line 176
    return-void
.end method


# virtual methods
.method public endRestoreSession()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 164
    :try_start_0
    iget-object v1, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    #@3
    invoke-interface {v1}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .line 168
    :goto_0
    iput-object v3, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    #@8
    .line 162
    return-void

    #@9
    .line 165
    :catch_0
    move-exception v0

    #@a
    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "RestoreSession"

    #@d
    const-string/jumbo v2, "Can\'t contact server to get available sets"

    #@10
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    goto :goto_0

    #@14
    .line 167
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@15
    .line 168
    iput-object v3, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    #@17
    .line 167
    throw v1
.end method

.method public getAvailableRestoreSets(Landroid/app/backup/RestoreObserver;)I
    .locals 5
    .param p1, "observer"    # Landroid/app/backup/RestoreObserver;

    #@0
    .prologue
    .line 53
    const/4 v1, -0x1

    #@1
    .line 54
    .local v1, "err":I
    new-instance v2, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    #@3
    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    #@5
    invoke-direct {v2, p0, v3, p1}, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V

    #@8
    .line 56
    .local v2, "obsWrapper":Landroid/app/backup/RestoreSession$RestoreObserverWrapper;
    :try_start_0
    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    #@a
    invoke-interface {v3, v2}, Landroid/app/backup/IRestoreSession;->getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v1

    #@e
    .line 60
    :goto_0
    return v1

    #@f
    .line 57
    :catch_0
    move-exception v0

    #@10
    .line 58
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "RestoreSession"

    #@13
    const-string/jumbo v4, "Can\'t contact server to get available sets"

    #@16
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    goto :goto_0
.end method

.method public restoreAll(JLandroid/app/backup/RestoreObserver;)I
    .locals 5
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/RestoreObserver;

    #@0
    .prologue
    .line 77
    const/4 v1, -0x1

    #@1
    .line 78
    .local v1, "err":I
    iget-object v2, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 79
    const-string/jumbo v2, "RestoreSession"

    #@8
    const-string/jumbo v3, "restoreAll() called during active restore"

    #@b
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 80
    const/4 v2, -0x1

    #@f
    return v2

    #@10
    .line 82
    :cond_0
    new-instance v2, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    #@12
    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    #@14
    invoke-direct {v2, p0, v3, p3}, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V

    #@17
    iput-object v2, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    #@19
    .line 84
    :try_start_0
    iget-object v2, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    #@1b
    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    #@1d
    invoke-interface {v2, p1, p2, v3}, Landroid/app/backup/IRestoreSession;->restoreAll(JLandroid/app/backup/IRestoreObserver;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    move-result v1

    #@21
    .line 88
    :goto_0
    return v1

    #@22
    .line 85
    :catch_0
    move-exception v0

    #@23
    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "RestoreSession"

    #@26
    const-string/jumbo v3, "Can\'t contact server to restore"

    #@29
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    goto :goto_0
.end method

.method public restorePackage(Ljava/lang/String;Landroid/app/backup/RestoreObserver;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/RestoreObserver;

    #@0
    .prologue
    .line 141
    const/4 v1, -0x1

    #@1
    .line 142
    .local v1, "err":I
    iget-object v2, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 143
    const-string/jumbo v2, "RestoreSession"

    #@8
    const-string/jumbo v3, "restorePackage() called during active restore"

    #@b
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 144
    const/4 v2, -0x1

    #@f
    return v2

    #@10
    .line 146
    :cond_0
    new-instance v2, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    #@12
    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    #@14
    invoke-direct {v2, p0, v3, p2}, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V

    #@17
    iput-object v2, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    #@19
    .line 148
    :try_start_0
    iget-object v2, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    #@1b
    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    #@1d
    invoke-interface {v2, p1, v3}, Landroid/app/backup/IRestoreSession;->restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    move-result v1

    #@21
    .line 152
    :goto_0
    return v1

    #@22
    .line 149
    :catch_0
    move-exception v0

    #@23
    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "RestoreSession"

    #@26
    const-string/jumbo v3, "Can\'t contact server to restore package"

    #@29
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    goto :goto_0
.end method

.method public restoreSome(JLandroid/app/backup/RestoreObserver;[Ljava/lang/String;)I
    .locals 5
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/RestoreObserver;
    .param p4, "packages"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 111
    const/4 v1, -0x1

    #@1
    .line 112
    .local v1, "err":I
    iget-object v2, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 113
    const-string/jumbo v2, "RestoreSession"

    #@8
    const-string/jumbo v3, "restoreAll() called during active restore"

    #@b
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 114
    const/4 v2, -0x1

    #@f
    return v2

    #@10
    .line 116
    :cond_0
    new-instance v2, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    #@12
    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    #@14
    invoke-direct {v2, p0, v3, p3}, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V

    #@17
    iput-object v2, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    #@19
    .line 118
    :try_start_0
    iget-object v2, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    #@1b
    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    #@1d
    invoke-interface {v2, p1, p2, v3, p4}, Landroid/app/backup/IRestoreSession;->restoreSome(JLandroid/app/backup/IRestoreObserver;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    move-result v1

    #@21
    .line 122
    :goto_0
    return v1

    #@22
    .line 119
    :catch_0
    move-exception v0

    #@23
    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "RestoreSession"

    #@26
    const-string/jumbo v3, "Can\'t contact server to restore packages"

    #@29
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    goto :goto_0
.end method
