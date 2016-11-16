.class public Lcom/android/commands/monkey/MonkeyPermissionEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyPermissionEvent.java"


# instance fields
.field private mPermissionInfo:Landroid/content/pm/PermissionInfo;

.field private mPkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/PermissionInfo;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "permissionInfo"    # Landroid/content/pm/PermissionInfo;

    #@0
    .prologue
    .line 33
    const/4 v0, 0x7

    #@1
    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    #@4
    .line 34
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPkg:Ljava/lang/String;

    #@6
    .line 35
    iput-object p2, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    #@8
    .line 32
    return-void
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 11
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, -0x1

    #@2
    .line 40
    const-string/jumbo v4, "package"

    #@5
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@8
    move-result-object v4

    #@9
    invoke-static {v4}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    #@c
    move-result-object v2

    #@d
    .line 43
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    iget-object v4, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    #@f
    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    #@11
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPkg:Ljava/lang/String;

    #@13
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@16
    move-result v6

    #@17
    invoke-interface {v2, v4, v5, v6}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    #@1a
    move-result v1

    #@1b
    .line 44
    .local v1, "perm":I
    if-ne v1, v9, :cond_0

    #@1d
    const/4 v0, 0x1

    #@1e
    .line 46
    .local v0, "grant":Z
    :goto_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@20
    const-string/jumbo v6, ":Permission %s %s to package %s"

    #@23
    const/4 v4, 0x3

    #@24
    new-array v7, v4, [Ljava/lang/Object;

    #@26
    .line 47
    if-eqz v0, :cond_1

    #@28
    const-string/jumbo v4, "grant"

    #@2b
    :goto_1
    const/4 v8, 0x0

    #@2c
    aput-object v4, v7, v8

    #@2e
    iget-object v4, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    #@30
    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    #@32
    const/4 v8, 0x1

    #@33
    aput-object v4, v7, v8

    #@35
    iget-object v4, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPkg:Ljava/lang/String;

    #@37
    const/4 v8, 0x2

    #@38
    aput-object v4, v7, v8

    #@3a
    .line 46
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@41
    .line 48
    if-eqz v0, :cond_2

    #@43
    .line 49
    iget-object v4, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPkg:Ljava/lang/String;

    #@45
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    #@47
    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    #@49
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@4c
    move-result v6

    #@4d
    invoke-interface {v2, v4, v5, v6}, Landroid/content/pm/IPackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    #@50
    .line 53
    :goto_2
    return v10

    #@51
    .line 44
    .end local v0    # "grant":Z
    :cond_0
    const/4 v0, 0x0

    #@52
    .restart local v0    # "grant":Z
    goto :goto_0

    #@53
    .line 47
    :cond_1
    const-string/jumbo v4, "revoke"

    #@56
    goto :goto_1

    #@57
    .line 51
    :cond_2
    iget-object v4, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPkg:Ljava/lang/String;

    #@59
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeyPermissionEvent;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    #@5b
    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    #@5d
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@60
    move-result v6

    #@61
    invoke-interface {v2, v4, v5, v6}, Landroid/content/pm/IPackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@64
    goto :goto_2

    #@65
    .line 54
    .end local v0    # "grant":Z
    .end local v1    # "perm":I
    :catch_0
    move-exception v3

    #@66
    .line 55
    .local v3, "re":Landroid/os/RemoteException;
    return v9
.end method
