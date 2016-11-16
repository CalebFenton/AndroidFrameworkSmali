.class Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageRemovedInfo"
.end annotation


# instance fields
.field appearedChildPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;",
            ">;"
        }
    .end annotation
.end field

.field args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field dataRemoved:Z

.field isRemovedPackageSystemUpdate:Z

.field isUpdate:Z

.field origUsers:[I

.field removedAppId:I

.field removedChildPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;",
            ">;"
        }
    .end annotation
.end field

.field removedForAllUsers:Z

.field removedPackage:Ljava/lang/String;

.field removedUsers:[I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field uid:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, -0x1

    #@2
    .line 15730
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 15732
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    #@9
    .line 15733
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    #@b
    .line 15735
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    #@d
    .line 15736
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    #@10
    .line 15741
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@12
    .line 15730
    return-void
.end method

.method private sendPackageRemovedBroadcastInternal(Z)V
    .locals 8
    .param p1, "killApp"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    .line 15793
    new-instance v3, Landroid/os/Bundle;

    #@5
    const/4 v0, 0x2

    #@6
    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    #@9
    .line 15794
    .local v3, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "android.intent.extra.UID"

    #@c
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    #@e
    if-ltz v0, :cond_4

    #@10
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    #@12
    :goto_0
    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@15
    .line 15795
    const-string/jumbo v0, "android.intent.extra.DATA_REMOVED"

    #@18
    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->dataRemoved:Z

    #@1a
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@1d
    .line 15796
    const-string/jumbo v2, "android.intent.extra.DONT_KILL_APP"

    #@20
    if-eqz p1, :cond_5

    #@22
    move v0, v4

    #@23
    :goto_1
    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@26
    .line 15797
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isUpdate:Z

    #@28
    if-nez v0, :cond_0

    #@2a
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    #@2c
    if-eqz v0, :cond_1

    #@2e
    .line 15798
    :cond_0
    const-string/jumbo v0, "android.intent.extra.REPLACING"

    #@31
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@34
    .line 15800
    :cond_1
    const-string/jumbo v0, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    #@37
    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedForAllUsers:Z

    #@39
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@3c
    .line 15801
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    #@3e
    if-eqz v0, :cond_2

    #@40
    .line 15802
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@42
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    #@45
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    #@47
    .line 15803
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    #@49
    move-object v6, v5

    #@4a
    .line 15802
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    #@4d
    .line 15804
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->dataRemoved:Z

    #@4f
    if-eqz v0, :cond_2

    #@51
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    #@53
    if-eqz v0, :cond_6

    #@55
    .line 15809
    :cond_2
    :goto_2
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    #@57
    if-ltz v0, :cond_3

    #@59
    .line 15810
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@5b
    const-string/jumbo v1, "android.intent.action.UID_REMOVED"

    #@5e
    .line 15811
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    #@60
    move-object v2, v5

    #@61
    move-object v6, v5

    #@62
    .line 15810
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    #@65
    .line 15792
    :cond_3
    return-void

    #@66
    .line 15794
    :cond_4
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    #@68
    goto :goto_0

    #@69
    :cond_5
    move v0, v1

    #@6a
    .line 15796
    goto :goto_1

    #@6b
    .line 15805
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@6d
    const-string/jumbo v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    #@70
    .line 15806
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    #@72
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    #@74
    move-object v6, v5

    #@75
    .line 15805
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    #@78
    goto :goto_2
.end method

.method private sendSystemPackageUpdatedBroadcastsInternal()V
    .locals 14

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 15781
    new-instance v3, Landroid/os/Bundle;

    #@4
    const/4 v0, 0x2

    #@5
    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    #@8
    .line 15782
    .local v3, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "android.intent.extra.UID"

    #@b
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    #@d
    if-ltz v0, :cond_0

    #@f
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    #@11
    :goto_0
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@14
    .line 15783
    const-string/jumbo v0, "android.intent.extra.REPLACING"

    #@17
    const/4 v1, 0x1

    #@18
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@1b
    .line 15784
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@1d
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    #@20
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    #@22
    move-object v6, v5

    #@23
    move-object v7, v5

    #@24
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    #@27
    .line 15786
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@29
    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    #@2c
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    #@2e
    move-object v6, v5

    #@2f
    move-object v7, v5

    #@30
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    #@33
    .line 15788
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@35
    const-string/jumbo v7, "android.intent.action.MY_PACKAGE_REPLACED"

    #@38
    .line 15789
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    #@3a
    move-object v8, v5

    #@3b
    move-object v9, v5

    #@3c
    move v10, v4

    #@3d
    move-object v12, v5

    #@3e
    move-object v13, v5

    #@3f
    .line 15788
    invoke-virtual/range {v6 .. v13}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V

    #@42
    .line 15780
    return-void

    #@43
    .line 15782
    :cond_0
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    #@45
    goto :goto_0
.end method


# virtual methods
.method sendPackageRemovedBroadcasts(Z)V
    .locals 4
    .param p1, "killApp"    # Z

    #@0
    .prologue
    .line 15746
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendPackageRemovedBroadcastInternal(Z)V

    #@3
    .line 15747
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    #@5
    if-eqz v3, :cond_0

    #@7
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    #@9
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@c
    move-result v0

    #@d
    .line 15748
    .local v0, "childCount":I
    :goto_0
    const/4 v2, 0x0

    #@e
    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    #@10
    .line 15749
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    #@12
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    #@18
    .line 15750
    .local v1, "childInfo":Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    invoke-direct {v1, p1}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendPackageRemovedBroadcastInternal(Z)V

    #@1b
    .line 15748
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_1

    #@1e
    .line 15747
    .end local v0    # "childCount":I
    .end local v1    # "childInfo":Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    .end local v2    # "i":I
    :cond_0
    const/4 v0, 0x0

    #@1f
    .restart local v0    # "childCount":I
    goto :goto_0

    #@20
    .line 15745
    .restart local v2    # "i":I
    :cond_1
    return-void
.end method

.method sendSystemPackageAppearedBroadcasts()V
    .locals 11

    #@0
    .prologue
    .line 15769
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->appearedChildPackages:Landroid/util/ArrayMap;

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 15770
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->appearedChildPackages:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@9
    move-result v2

    #@a
    .line 15771
    .local v2, "packageCount":I
    :goto_0
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    #@d
    .line 15772
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->appearedChildPackages:Landroid/util/ArrayMap;

    #@f
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    #@15
    .line 15773
    .local v1, "installedInfo":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    #@17
    const/4 v4, 0x0

    #@18
    array-length v6, v5

    #@19
    :goto_2
    if-ge v4, v6, :cond_1

    #@1b
    aget v3, v5, v4

    #@1d
    .line 15774
    .local v3, "userId":I
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@1f
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    #@21
    .line 15775
    iget v9, v1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    #@23
    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    #@26
    move-result v9

    #@27
    .line 15774
    const/4 v10, 0x1

    #@28
    invoke-static {v7, v8, v10, v9, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap38(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZII)V

    #@2b
    .line 15773
    add-int/lit8 v4, v4, 0x1

    #@2d
    goto :goto_2

    #@2e
    .line 15770
    .end local v0    # "i":I
    .end local v1    # "installedInfo":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    .end local v2    # "packageCount":I
    .end local v3    # "userId":I
    :cond_0
    const/4 v2, 0x0

    #@2f
    .restart local v2    # "packageCount":I
    goto :goto_0

    #@30
    .line 15771
    .restart local v0    # "i":I
    .restart local v1    # "installedInfo":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_1

    #@33
    .line 15768
    .end local v1    # "installedInfo":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    :cond_2
    return-void
.end method

.method sendSystemPackageUpdatedBroadcasts()V
    .locals 4

    #@0
    .prologue
    .line 15755
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    #@2
    if-eqz v3, :cond_2

    #@4
    .line 15756
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendSystemPackageUpdatedBroadcastsInternal()V

    #@7
    .line 15757
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    #@9
    if-eqz v3, :cond_1

    #@b
    .line 15758
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@10
    move-result v0

    #@11
    .line 15759
    .local v0, "childCount":I
    :goto_0
    const/4 v2, 0x0

    #@12
    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    #@14
    .line 15760
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    #@16
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    #@1c
    .line 15761
    .local v1, "childInfo":Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    iget-boolean v3, v1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 15762
    invoke-direct {v1}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendSystemPackageUpdatedBroadcastsInternal()V

    #@23
    .line 15759
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_1

    #@26
    .line 15758
    .end local v0    # "childCount":I
    .end local v1    # "childInfo":Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    .end local v2    # "i":I
    :cond_1
    const/4 v0, 0x0

    #@27
    .restart local v0    # "childCount":I
    goto :goto_0

    #@28
    .line 15754
    .end local v0    # "childCount":I
    :cond_2
    return-void
.end method
