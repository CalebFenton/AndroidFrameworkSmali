.class Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "LauncherAppsService.java"

# interfaces
.implements Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPackageMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$-void_onShortcutChanged_java_lang_String_packageName_int_userId_LambdaImpl0;
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@0
    .prologue
    .line 626
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@2
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    #@3
    return-void
.end method

.method private onShortcutChangedInner(Ljava/lang/String;I)V
    .locals 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 792
    move-object/from16 v0, p0

    #@2
    iget-object v5, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@4
    invoke-static {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@7
    move-result-object v5

    #@8
    invoke-virtual {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    #@b
    move-result v19

    #@c
    .line 794
    .local v19, "n":I
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@f
    move-result-object v21

    #@10
    .line 796
    .local v21, "user":Landroid/os/UserHandle;
    const/16 v16, 0x0

    #@12
    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    #@14
    move/from16 v1, v19

    #@16
    if-ge v0, v1, :cond_2

    #@18
    .line 797
    move-object/from16 v0, p0

    #@1a
    iget-object v5, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@1c
    invoke-static {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@1f
    move-result-object v5

    #@20
    move/from16 v0, v16

    #@22
    invoke-virtual {v5, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@25
    move-result-object v18

    #@26
    check-cast v18, Landroid/content/pm/IOnAppsChangedListener;

    #@28
    .line 798
    .local v18, "listener":Landroid/content/pm/IOnAppsChangedListener;
    move-object/from16 v0, p0

    #@2a
    iget-object v5, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@2c
    invoke-static {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@2f
    move-result-object v5

    #@30
    move/from16 v0, v16

    #@32
    invoke-virtual {v5, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    #@35
    move-result-object v4

    #@36
    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    #@38
    .line 799
    .local v4, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    move-object/from16 v0, p0

    #@3a
    iget-object v5, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@3c
    iget-object v7, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    #@3e
    const-string/jumbo v8, "onShortcutChanged"

    #@41
    move-object/from16 v0, v21

    #@43
    invoke-static {v5, v0, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-wrap0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    #@46
    move-result v5

    #@47
    if-nez v5, :cond_1

    #@49
    .line 796
    :cond_0
    :goto_1
    add-int/lit8 v16, v16, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 801
    :cond_1
    iget-object v5, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    #@4e
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    #@51
    move-result v6

    #@52
    .line 804
    .local v6, "launcherUserId":I
    move-object/from16 v0, p0

    #@54
    iget-object v5, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@56
    invoke-static {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get1(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/pm/ShortcutServiceInternal;

    #@59
    move-result-object v5

    #@5a
    .line 805
    iget-object v7, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    #@5c
    .line 804
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;)Z

    #@5f
    move-result v5

    #@60
    if-eqz v5, :cond_0

    #@62
    .line 813
    move-object/from16 v0, p0

    #@64
    iget-object v5, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@66
    invoke-static {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get1(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/pm/ShortcutServiceInternal;

    #@69
    move-result-object v5

    #@6a
    .line 814
    iget-object v7, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    #@6c
    .line 815
    const-wide/16 v8, 0x0

    #@6e
    const/4 v11, 0x0

    #@6f
    .line 816
    const/4 v12, 0x0

    #@70
    .line 817
    const/16 v13, 0xf

    #@72
    move-object/from16 v10, p1

    #@74
    move/from16 v14, p2

    #@76
    .line 813
    invoke-virtual/range {v5 .. v14}, Landroid/content/pm/ShortcutServiceInternal;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;II)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@79
    move-result-object v17

    #@7a
    .line 822
    .local v17, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :try_start_1
    new-instance v5, Landroid/content/pm/ParceledListSlice;

    #@7c
    move-object/from16 v0, v17

    #@7e
    invoke-direct {v5, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    #@81
    .line 821
    move-object/from16 v0, v18

    #@83
    move-object/from16 v1, v21

    #@85
    move-object/from16 v2, p1

    #@87
    invoke-interface {v0, v1, v2, v5}, Landroid/content/pm/IOnAppsChangedListener;->onShortcutChanged(Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8a
    goto :goto_1

    #@8b
    .line 823
    :catch_0
    move-exception v20

    #@8c
    .line 824
    .local v20, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v5, "LauncherAppsService"

    #@8f
    const-string/jumbo v7, "Callback failed "

    #@92
    move-object/from16 v0, v20

    #@94
    invoke-static {v5, v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@97
    goto :goto_1

    #@98
    .line 827
    .end local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v6    # "launcherUserId":I
    .end local v16    # "i":I
    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v18    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v20    # "re":Landroid/os/RemoteException;
    .end local v21    # "user":Landroid/os/UserHandle;
    :catch_1
    move-exception v15

    #@99
    .line 829
    .local v15, "e":Ljava/lang/RuntimeException;
    :try_start_3
    const-string/jumbo v5, "LauncherAppsService"

    #@9c
    invoke-virtual {v15}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@9f
    move-result-object v7

    #@a0
    invoke-static {v5, v7, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a3
    .line 831
    move-object/from16 v0, p0

    #@a5
    iget-object v5, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@a7
    invoke-static {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@aa
    move-result-object v5

    #@ab
    invoke-virtual {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    #@ae
    .line 791
    .end local v15    # "e":Ljava/lang/RuntimeException;
    :goto_2
    return-void

    #@af
    .line 831
    .restart local v16    # "i":I
    .restart local v21    # "user":Landroid/os/UserHandle;
    :cond_2
    move-object/from16 v0, p0

    #@b1
    iget-object v5, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@b3
    invoke-static {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@b6
    move-result-object v5

    #@b7
    invoke-virtual {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    #@ba
    goto :goto_2

    #@bb
    .line 830
    .end local v16    # "i":I
    .end local v21    # "user":Landroid/os/UserHandle;
    :catchall_0
    move-exception v5

    #@bc
    .line 831
    move-object/from16 v0, p0

    #@be
    iget-object v7, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@c0
    invoke-static {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@c3
    move-result-object v7

    #@c4
    invoke-virtual {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    #@c7
    .line 830
    throw v5
.end method


# virtual methods
.method synthetic -com_android_server_pm_LauncherAppsService$LauncherAppsImpl$MyPackageMonitor_lambda$1(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 787
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->onShortcutChangedInner(Ljava/lang/String;I)V

    #@3
    .line 0
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 632
    new-instance v5, Landroid/os/UserHandle;

    #@2
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    #@5
    move-result v6

    #@6
    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    #@9
    .line 633
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@b
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    #@12
    move-result v3

    #@13
    .line 635
    .local v3, "n":I
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@16
    .line 636
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@18
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Landroid/content/pm/IOnAppsChangedListener;

    #@22
    .line 637
    .local v2, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@24
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    #@2e
    .line 638
    .local v0, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@30
    iget-object v7, v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    #@32
    const-string/jumbo v8, "onPackageAdded"

    #@35
    invoke-static {v6, v5, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-wrap0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    move-result v6

    #@39
    if-nez v6, :cond_0

    #@3b
    .line 635
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 640
    :cond_0
    :try_start_1
    invoke-interface {v2, v5, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageAdded(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    goto :goto_1

    #@42
    .line 641
    :catch_0
    move-exception v4

    #@43
    .line 642
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v6, "LauncherAppsService"

    #@46
    const-string/jumbo v7, "Callback failed "

    #@49
    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    goto :goto_1

    #@4d
    .line 645
    .end local v0    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v2    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    #@4e
    .line 646
    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@50
    invoke-static {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@53
    move-result-object v7

    #@54
    invoke-virtual {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    #@57
    .line 645
    throw v6

    #@58
    .line 646
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@5a
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    #@61
    .line 649
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    #@64
    .line 631
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 676
    new-instance v5, Landroid/os/UserHandle;

    #@2
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    #@5
    move-result v6

    #@6
    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    #@9
    .line 677
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@b
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    #@12
    move-result v3

    #@13
    .line 679
    .local v3, "n":I
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@16
    .line 680
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@18
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Landroid/content/pm/IOnAppsChangedListener;

    #@22
    .line 681
    .local v2, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@24
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    #@2e
    .line 682
    .local v0, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@30
    iget-object v7, v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    #@32
    const-string/jumbo v8, "onPackageModified"

    #@35
    invoke-static {v6, v5, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-wrap0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    move-result v6

    #@39
    if-nez v6, :cond_0

    #@3b
    .line 679
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 684
    :cond_0
    :try_start_1
    invoke-interface {v2, v5, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageChanged(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    goto :goto_1

    #@42
    .line 685
    :catch_0
    move-exception v4

    #@43
    .line 686
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v6, "LauncherAppsService"

    #@46
    const-string/jumbo v7, "Callback failed "

    #@49
    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    goto :goto_1

    #@4d
    .line 689
    .end local v0    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v2    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    #@4e
    .line 690
    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@50
    invoke-static {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@53
    move-result-object v7

    #@54
    invoke-virtual {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    #@57
    .line 689
    throw v6

    #@58
    .line 690
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@5a
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    #@61
    .line 693
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    #@64
    .line 675
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 654
    new-instance v5, Landroid/os/UserHandle;

    #@2
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    #@5
    move-result v6

    #@6
    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    #@9
    .line 655
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@b
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    #@12
    move-result v3

    #@13
    .line 657
    .local v3, "n":I
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@16
    .line 658
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@18
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Landroid/content/pm/IOnAppsChangedListener;

    #@22
    .line 659
    .local v2, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@24
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    #@2e
    .line 660
    .local v0, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@30
    iget-object v7, v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    #@32
    const-string/jumbo v8, "onPackageRemoved"

    #@35
    invoke-static {v6, v5, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-wrap0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    move-result v6

    #@39
    if-nez v6, :cond_0

    #@3b
    .line 657
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 662
    :cond_0
    :try_start_1
    invoke-interface {v2, v5, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageRemoved(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    goto :goto_1

    #@42
    .line 663
    :catch_0
    move-exception v4

    #@43
    .line 664
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v6, "LauncherAppsService"

    #@46
    const-string/jumbo v7, "Callback failed "

    #@49
    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    goto :goto_1

    #@4d
    .line 667
    .end local v0    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v2    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    #@4e
    .line 668
    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@50
    invoke-static {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@53
    move-result-object v7

    #@54
    invoke-virtual {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    #@57
    .line 667
    throw v6

    #@58
    .line 668
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@5a
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    #@61
    .line 671
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    #@64
    .line 653
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 9
    .param p1, "packages"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 698
    new-instance v5, Landroid/os/UserHandle;

    #@2
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    #@5
    move-result v6

    #@6
    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    #@9
    .line 699
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@b
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    #@12
    move-result v3

    #@13
    .line 701
    .local v3, "n":I
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@16
    .line 702
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@18
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Landroid/content/pm/IOnAppsChangedListener;

    #@22
    .line 703
    .local v2, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@24
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    #@2e
    .line 704
    .local v0, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@30
    iget-object v7, v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    #@32
    const-string/jumbo v8, "onPackagesAvailable"

    #@35
    invoke-static {v6, v5, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-wrap0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    move-result v6

    #@39
    if-nez v6, :cond_0

    #@3b
    .line 701
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 706
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->isReplacing()Z

    #@41
    move-result v6

    #@42
    invoke-interface {v2, v5, p1, v6}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesAvailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    goto :goto_1

    #@46
    .line 707
    :catch_0
    move-exception v4

    #@47
    .line 708
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v6, "LauncherAppsService"

    #@4a
    const-string/jumbo v7, "Callback failed "

    #@4d
    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@50
    goto :goto_1

    #@51
    .line 711
    .end local v0    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v2    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    #@52
    .line 712
    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@54
    invoke-static {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@57
    move-result-object v7

    #@58
    invoke-virtual {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    #@5b
    .line 711
    throw v6

    #@5c
    .line 712
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@5e
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@61
    move-result-object v6

    #@62
    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    #@65
    .line 715
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesAvailable([Ljava/lang/String;)V

    #@68
    .line 697
    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;)V
    .locals 9
    .param p1, "packages"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 742
    new-instance v5, Landroid/os/UserHandle;

    #@2
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    #@5
    move-result v6

    #@6
    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    #@9
    .line 743
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@b
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    #@12
    move-result v3

    #@13
    .line 745
    .local v3, "n":I
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@16
    .line 746
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@18
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Landroid/content/pm/IOnAppsChangedListener;

    #@22
    .line 747
    .local v2, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@24
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    #@2e
    .line 748
    .local v0, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@30
    iget-object v7, v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    #@32
    const-string/jumbo v8, "onPackagesSuspended"

    #@35
    invoke-static {v6, v5, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-wrap0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    move-result v6

    #@39
    if-nez v6, :cond_0

    #@3b
    .line 745
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 750
    :cond_0
    :try_start_1
    invoke-interface {v2, v5, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesSuspended(Landroid/os/UserHandle;[Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    goto :goto_1

    #@42
    .line 751
    :catch_0
    move-exception v4

    #@43
    .line 752
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v6, "LauncherAppsService"

    #@46
    const-string/jumbo v7, "Callback failed "

    #@49
    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    goto :goto_1

    #@4d
    .line 755
    .end local v0    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v2    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    #@4e
    .line 756
    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@50
    invoke-static {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@53
    move-result-object v7

    #@54
    invoke-virtual {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    #@57
    .line 755
    throw v6

    #@58
    .line 756
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@5a
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    #@61
    .line 759
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesSuspended([Ljava/lang/String;)V

    #@64
    .line 741
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 9
    .param p1, "packages"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 720
    new-instance v5, Landroid/os/UserHandle;

    #@2
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    #@5
    move-result v6

    #@6
    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    #@9
    .line 721
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@b
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    #@12
    move-result v3

    #@13
    .line 723
    .local v3, "n":I
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@16
    .line 724
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@18
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Landroid/content/pm/IOnAppsChangedListener;

    #@22
    .line 725
    .local v2, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@24
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    #@2e
    .line 726
    .local v0, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@30
    iget-object v7, v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    #@32
    const-string/jumbo v8, "onPackagesUnavailable"

    #@35
    invoke-static {v6, v5, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-wrap0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    move-result v6

    #@39
    if-nez v6, :cond_0

    #@3b
    .line 723
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 728
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->isReplacing()Z

    #@41
    move-result v6

    #@42
    invoke-interface {v2, v5, p1, v6}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesUnavailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    goto :goto_1

    #@46
    .line 729
    :catch_0
    move-exception v4

    #@47
    .line 730
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v6, "LauncherAppsService"

    #@4a
    const-string/jumbo v7, "Callback failed "

    #@4d
    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@50
    goto :goto_1

    #@51
    .line 733
    .end local v0    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v2    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    #@52
    .line 734
    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@54
    invoke-static {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@57
    move-result-object v7

    #@58
    invoke-virtual {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    #@5b
    .line 733
    throw v6

    #@5c
    .line 734
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@5e
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@61
    move-result-object v6

    #@62
    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    #@65
    .line 737
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnavailable([Ljava/lang/String;)V

    #@68
    .line 719
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;)V
    .locals 9
    .param p1, "packages"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 764
    new-instance v5, Landroid/os/UserHandle;

    #@2
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    #@5
    move-result v6

    #@6
    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    #@9
    .line 765
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@b
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    #@12
    move-result v3

    #@13
    .line 767
    .local v3, "n":I
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@16
    .line 768
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@18
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Landroid/content/pm/IOnAppsChangedListener;

    #@22
    .line 769
    .local v2, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@24
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v6, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    #@2e
    .line 770
    .local v0, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@30
    iget-object v7, v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    #@32
    const-string/jumbo v8, "onPackagesUnsuspended"

    #@35
    invoke-static {v6, v5, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-wrap0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    move-result v6

    #@39
    if-nez v6, :cond_0

    #@3b
    .line 767
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 772
    :cond_0
    :try_start_1
    invoke-interface {v2, v5, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesUnsuspended(Landroid/os/UserHandle;[Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    goto :goto_1

    #@42
    .line 773
    :catch_0
    move-exception v4

    #@43
    .line 774
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v6, "LauncherAppsService"

    #@46
    const-string/jumbo v7, "Callback failed "

    #@49
    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    goto :goto_1

    #@4d
    .line 777
    .end local v0    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v2    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    #@4e
    .line 778
    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@50
    invoke-static {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@53
    move-result-object v7

    #@54
    invoke-virtual {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    #@57
    .line 777
    throw v6

    #@58
    .line 778
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@5a
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    #@61
    .line 781
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnsuspended([Ljava/lang/String;)V

    #@64
    .line 763
    return-void
.end method

.method public onShortcutChanged(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@2
    new-instance v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$-void_onShortcutChanged_java_lang_String_packageName_int_userId_LambdaImpl0;

    #@4
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$-void_onShortcutChanged_java_lang_String_packageName_int_userId_LambdaImpl0;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;Ljava/lang/String;I)V

    #@7
    invoke-virtual {v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->postToPackageMonitorHandler(Ljava/lang/Runnable;)V

    #@a
    .line 786
    return-void
.end method
