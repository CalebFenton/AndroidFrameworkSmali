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
.field args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field isRemovedPackageSystemUpdate:Z

.field removedAppId:I

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
    .line 12750
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 12752
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    #@9
    .line 12753
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    #@b
    .line 12754
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    #@d
    .line 12755
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    #@10
    .line 12757
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@12
    .line 12750
    return-void
.end method


# virtual methods
.method sendBroadcast(ZZZ)V
    .locals 7
    .param p1, "fullRemove"    # Z
    .param p2, "replacing"    # Z
    .param p3, "removedForAllUsers"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 12760
    new-instance v3, Landroid/os/Bundle;

    #@4
    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(I)V

    #@7
    .line 12761
    .local v3, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "android.intent.extra.UID"

    #@a
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    #@c
    if-ltz v0, :cond_3

    #@e
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    #@10
    :goto_0
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@13
    .line 12762
    const-string/jumbo v0, "android.intent.extra.DATA_REMOVED"

    #@16
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@19
    .line 12763
    if-eqz p2, :cond_0

    #@1b
    .line 12764
    const-string/jumbo v0, "android.intent.extra.REPLACING"

    #@1e
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@21
    .line 12766
    :cond_0
    const-string/jumbo v0, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    #@24
    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@27
    .line 12767
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    #@29
    if-eqz v0, :cond_1

    #@2b
    .line 12768
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2d
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    #@30
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    #@32
    .line 12769
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    #@34
    move-object v5, v4

    #@35
    .line 12768
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    #@38
    .line 12770
    if-eqz p1, :cond_1

    #@3a
    if-eqz p2, :cond_4

    #@3c
    .line 12775
    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    #@3e
    if-ltz v0, :cond_2

    #@40
    .line 12776
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@42
    const-string/jumbo v1, "android.intent.action.UID_REMOVED"

    #@45
    .line 12777
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    #@47
    move-object v2, v4

    #@48
    move-object v5, v4

    #@49
    .line 12776
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    #@4c
    .line 12759
    :cond_2
    return-void

    #@4d
    .line 12761
    :cond_3
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    #@4f
    goto :goto_0

    #@50
    .line 12771
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@52
    const-string/jumbo v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    #@55
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    #@57
    .line 12772
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    #@59
    move-object v5, v4

    #@5a
    .line 12771
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    #@5d
    goto :goto_1
.end method
