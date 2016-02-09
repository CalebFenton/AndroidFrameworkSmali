.class final Lcom/android/server/notification/NotificationManagerService$PolicyAccess;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PolicyAccess"
.end annotation


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = ":"


# instance fields
.field private final PERM:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    #@0
    .prologue
    .line 3584
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 3586
    const/4 v0, 0x1

    #@6
    new-array v0, v0, [Ljava/lang/String;

    #@8
    .line 3587
    const-string/jumbo v1, "android.permission.ACCESS_NOTIFICATION_POLICY"

    #@b
    const/4 v2, 0x0

    #@c
    aput-object v1, v0, v2

    #@e
    .line 3586
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;->PERM:[Ljava/lang/String;

    #@10
    .line 3584
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$PolicyAccess;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public getGrantedPackages()Landroid/util/ArraySet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 3617
    new-instance v1, Landroid/util/ArraySet;

    #@2
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@5
    .line 3619
    .local v1, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@7
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@a
    move-result-object v5

    #@b
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@e
    move-result-object v5

    #@f
    .line 3620
    const-string/jumbo v6, "enabled_notification_policy_access_packages"

    #@12
    .line 3621
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@15
    move-result v7

    #@16
    .line 3618
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 3622
    .local v2, "setting":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@1c
    .line 3623
    const-string/jumbo v5, ":"

    #@1f
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    .line 3624
    .local v4, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    #@24
    .local v0, "i":I
    :goto_0
    array-length v5, v4

    #@25
    if-ge v0, v5, :cond_2

    #@27
    .line 3625
    aget-object v3, v4, v0

    #@29
    .line 3626
    .local v3, "token":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@2b
    .line 3627
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2e
    .line 3629
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@31
    move-result v5

    #@32
    if-eqz v5, :cond_1

    #@34
    .line 3624
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_0

    #@37
    .line 3632
    :cond_1
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@3a
    goto :goto_1

    #@3b
    .line 3635
    .end local v0    # "i":I
    .end local v3    # "token":Ljava/lang/String;
    .end local v4    # "tokens":[Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method public getRequestingPackages()[Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 3639
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@4
    move-result-object v5

    #@5
    .line 3640
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;->PERM:[Ljava/lang/String;

    #@7
    .line 3641
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@a
    move-result v7

    #@b
    .line 3639
    invoke-interface {v5, v6, v8, v7}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    #@e
    move-result-object v2

    #@f
    .line 3642
    .local v2, "list":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@12
    move-result-object v3

    #@13
    .line 3643
    .local v3, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v3, :cond_0

    #@15
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_1

    #@1b
    :cond_0
    new-array v5, v8, [Ljava/lang/String;

    #@1d
    return-object v5

    #@1e
    .line 3644
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@21
    move-result v0

    #@22
    .line 3645
    .local v0, "N":I
    new-array v4, v0, [Ljava/lang/String;

    #@24
    .line 3646
    .local v4, "rt":[Ljava/lang/String;
    const/4 v1, 0x0

    #@25
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@27
    .line 3647
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v5

    #@2b
    check-cast v5, Landroid/content/pm/PackageInfo;

    #@2d
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@2f
    aput-object v5, v4, v1

    #@31
    .line 3646
    add-int/lit8 v1, v1, 0x1

    #@33
    goto :goto_0

    #@34
    .line 3649
    :cond_2
    return-object v4
.end method

.method public isPackageGranted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3591
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;->getGrantedPackages()Landroid/util/ArraySet;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 3595
    if-nez p1, :cond_0

    #@3
    return-void

    #@4
    .line 3596
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;->getGrantedPackages()Landroid/util/ArraySet;

    #@7
    move-result-object v2

    #@8
    .line 3598
    .local v2, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    #@a
    .line 3599
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    .line 3603
    .local v0, "changed":Z
    :goto_0
    if-nez v0, :cond_2

    #@10
    return-void

    #@11
    .line 3601
    .end local v0    # "changed":Z
    :cond_1
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    .restart local v0    # "changed":Z
    goto :goto_0

    #@16
    .line 3604
    :cond_2
    const-string/jumbo v4, ":"

    #@19
    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    .line 3605
    .local v3, "setting":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@20
    move-result v1

    #@21
    .line 3606
    .local v1, "currentUser":I
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@23
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2a
    move-result-object v4

    #@2b
    .line 3607
    const-string/jumbo v5, "enabled_notification_policy_access_packages"

    #@2e
    .line 3606
    invoke-static {v4, v5, v3, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@31
    .line 3610
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@33
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@36
    move-result-object v4

    #@37
    new-instance v5, Landroid/content/Intent;

    #@39
    const-string/jumbo v6, "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED"

    #@3c
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@3f
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@42
    move-result-object v5

    #@43
    .line 3613
    const/high16 v6, 0x40000000    # 2.0f

    #@45
    .line 3610
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@48
    move-result-object v5

    #@49
    .line 3613
    new-instance v6, Landroid/os/UserHandle;

    #@4b
    invoke-direct {v6, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@4e
    .line 3610
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    #@51
    .line 3594
    return-void
.end method
