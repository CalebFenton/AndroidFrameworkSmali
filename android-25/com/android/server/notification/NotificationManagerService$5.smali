.class Lcom/android/server/notification/NotificationManagerService$5;
.super Landroid/app/INotificationManager$Stub;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    #@0
    .prologue
    .line 1271
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-direct {p0}, Landroid/app/INotificationManager$Stub;-><init>()V

    #@5
    return-void
.end method

.method private cancelNotificationFromListenerLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;II)V
    .locals 12
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "userId"    # I

    #@0
    .prologue
    .line 1713
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    const/4 v6, 0x0

    #@3
    .line 1714
    const/16 v7, 0x42

    #@5
    .line 1715
    const/4 v8, 0x1

    #@6
    .line 1716
    const/16 v10, 0xa

    #@8
    move v1, p2

    #@9
    move v2, p3

    #@a
    move-object/from16 v3, p4

    #@c
    move-object/from16 v4, p5

    #@e
    move/from16 v5, p6

    #@10
    move/from16 v9, p7

    #@12
    move-object v11, p1

    #@13
    .line 1713
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    #@16
    .line 1712
    return-void
.end method

.method private checkPackagePolicyAccess(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2016
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPolicyAccess:Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    #@4
    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;->isPackageGranted(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private checkPolicyAccess(Ljava/lang/String;)Z
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 2021
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@4
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b
    move-result-object v3

    #@c
    .line 2022
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@f
    move-result v4

    #@10
    .line 2021
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    #@13
    move-result v1

    #@14
    .line 2024
    .local v1, "uid":I
    const-string/jumbo v3, "android.permission.MANAGE_NOTIFICATIONS"

    #@17
    .line 2025
    const/4 v4, -0x1

    #@18
    const/4 v5, 0x1

    #@19
    .line 2023
    invoke-static {v3, v1, v4, v5}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    move-result v3

    #@1d
    if-nez v3, :cond_0

    #@1f
    .line 2026
    return v2

    #@20
    .line 2028
    .end local v1    # "uid":I
    :catch_0
    move-exception v0

    #@21
    .line 2029
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v6

    #@22
    .line 2031
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "uid":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$5;->checkPackagePolicyAccess(Ljava/lang/String;)Z

    #@25
    move-result v3

    #@26
    if-nez v3, :cond_1

    #@28
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2a
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isComponentEnabledForPackage(Ljava/lang/String;)Z

    #@31
    move-result v2

    #@32
    :cond_1
    return v2
.end method

.method private enforcePolicyAccess(ILjava/lang/String;)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1985
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@5
    move-result-object v4

    #@6
    .line 1986
    const-string/jumbo v5, "android.permission.MANAGE_NOTIFICATIONS"

    #@9
    .line 1985
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@c
    move-result v4

    #@d
    if-nez v4, :cond_0

    #@f
    .line 1987
    return-void

    #@10
    .line 1989
    :cond_0
    const/4 v0, 0x0

    #@11
    .line 1990
    .local v0, "accessAllowed":Z
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@13
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 1991
    .local v3, "packages":[Ljava/lang/String;
    array-length v2, v3

    #@20
    .line 1992
    .local v2, "packageCount":I
    const/4 v1, 0x0

    #@21
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@23
    .line 1993
    aget-object v4, v3, v1

    #@25
    invoke-direct {p0, v4}, Lcom/android/server/notification/NotificationManagerService$5;->checkPolicyAccess(Ljava/lang/String;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_1

    #@2b
    .line 1994
    const/4 v0, 0x1

    #@2c
    .line 1992
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 1997
    :cond_2
    if-nez v0, :cond_3

    #@31
    .line 1998
    const-string/jumbo v4, "NotificationService"

    #@34
    new-instance v5, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v6, "Notification policy access denied calling "

    #@3c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 1999
    new-instance v4, Ljava/lang/SecurityException;

    #@4d
    const-string/jumbo v5, "Notification policy access denied"

    #@50
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@53
    throw v4

    #@54
    .line 1984
    :cond_3
    return-void
.end method

.method private enforcePolicyAccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2004
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    .line 2005
    const-string/jumbo v1, "android.permission.MANAGE_NOTIFICATIONS"

    #@9
    .line 2004
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 2006
    return-void

    #@10
    .line 2008
    :cond_0
    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-wrap15(Ljava/lang/String;)V

    #@13
    .line 2009
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$5;->checkPolicyAccess(Ljava/lang/String;)Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_1

    #@19
    .line 2010
    const-string/jumbo v0, "NotificationService"

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "Notification policy access denied calling "

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 2011
    new-instance v0, Ljava/lang/SecurityException;

    #@35
    const-string/jumbo v1, "Notification policy access denied"

    #@38
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v0

    #@3c
    .line 2003
    :cond_1
    return-void
.end method

.method private enforceSystemOrSystemUI(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1969
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap1()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    return-void

    #@7
    .line 1970
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@9
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    #@10
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    .line 1968
    return-void
.end method

.method private enforceSystemOrSystemUIOrSamePackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1976
    :try_start_0
    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-wrap16(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 1974
    :goto_0
    return-void

    #@4
    .line 1977
    :catch_0
    move-exception v0

    #@5
    .line 1978
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@7
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@a
    move-result-object v1

    #@b
    .line 1979
    const-string/jumbo v2, "android.permission.STATUS_BAR_SERVICE"

    #@e
    .line 1978
    invoke-virtual {v1, v2, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    goto :goto_0
.end method

.method private enforceSystemOrSystemUIOrVolume(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1959
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1960
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@8
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    #@a
    invoke-virtual {v1}, Landroid/media/AudioManagerInternal;->getVolumeControllerUid()I

    #@d
    move-result v0

    #@e
    .line 1961
    .local v0, "vcuid":I
    if-lez v0, :cond_0

    #@10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@13
    move-result v1

    #@14
    if-ne v1, v0, :cond_0

    #@16
    .line 1962
    return-void

    #@17
    .line 1965
    .end local v0    # "vcuid":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    #@1a
    .line 1958
    return-void
.end method


# virtual methods
.method public addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;
    .locals 2
    .param p1, "automaticZenRule"    # Landroid/app/AutomaticZenRule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1884
    const-string/jumbo v0, "automaticZenRule is null"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1885
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    const-string/jumbo v1, "Name is null"

    #@d
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 1886
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, "Owner is null"

    #@17
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 1887
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    #@1d
    move-result-object v0

    #@1e
    const-string/jumbo v1, "ConditionId is null"

    #@21
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 1888
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@27
    move-result v0

    #@28
    const-string/jumbo v1, "addAutomaticZenRule"

    #@2b
    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$5;->enforcePolicyAccess(ILjava/lang/String;)V

    #@2e
    .line 1890
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@30
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get23(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@33
    move-result-object v0

    #@34
    .line 1891
    const-string/jumbo v1, "addAutomaticZenRule"

    #@37
    .line 1890
    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/ZenModeHelper;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;Ljava/lang/String;)Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    return-object v0
.end method

.method public applyAdjustmentFromRankerService(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V
    .locals 4
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "adjustment"    # Landroid/service/notification/Adjustment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2179
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 2181
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@6
    iget-object v3, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@8
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@9
    .line 2182
    :try_start_1
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@b
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get16(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@12
    .line 2183
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@14
    invoke-static {v2, p2}, Lcom/android/server/notification/NotificationManagerService;->-wrap11(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/Adjustment;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    :try_start_2
    monitor-exit v3

    #@18
    .line 2185
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@1a
    invoke-static {v2, p2}, Lcom/android/server/notification/NotificationManagerService;->-wrap30(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/Adjustment;)V

    #@1d
    .line 2186
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@1f
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get17(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHandler;

    #@22
    move-result-object v2

    #@23
    invoke-interface {v2}, Lcom/android/server/notification/RankingHandler;->requestSort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 2188
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 2178
    return-void

    #@2a
    .line 2181
    :catchall_0
    move-exception v2

    #@2b
    :try_start_3
    monitor-exit v3

    #@2c
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2d
    .line 2187
    :catchall_1
    move-exception v2

    #@2e
    .line 2188
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 2187
    throw v2
.end method

.method public applyAdjustmentsFromRankerService(Landroid/service/notification/INotificationListener;Ljava/util/List;)V
    .locals 6
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/INotificationListener;",
            "Ljava/util/List",
            "<",
            "Landroid/service/notification/Adjustment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2196
    .local p2, "adjustments":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/Adjustment;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 2198
    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@6
    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@8
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@9
    .line 2199
    :try_start_1
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@b
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-get16(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v4, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@12
    .line 2200
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v1

    #@16
    .local v1, "adjustment$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_0

    #@1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Landroid/service/notification/Adjustment;

    #@22
    .line 2201
    .local v0, "adjustment":Landroid/service/notification/Adjustment;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@24
    invoke-static {v4, v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap11(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/Adjustment;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 2198
    .end local v0    # "adjustment":Landroid/service/notification/Adjustment;
    .end local v1    # "adjustment$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@29
    :try_start_2
    monitor-exit v5

    #@2a
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2b
    .line 2208
    :catchall_1
    move-exception v4

    #@2c
    .line 2209
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2f
    .line 2208
    throw v4

    #@30
    .restart local v1    # "adjustment$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v5

    #@31
    .line 2204
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@34
    move-result-object v1

    #@35
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@38
    move-result v4

    #@39
    if-eqz v4, :cond_1

    #@3b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Landroid/service/notification/Adjustment;

    #@41
    .line 2205
    .restart local v0    # "adjustment":Landroid/service/notification/Adjustment;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@43
    invoke-static {v4, v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap30(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/Adjustment;)V

    #@46
    goto :goto_1

    #@47
    .line 2207
    .end local v0    # "adjustment":Landroid/service/notification/Adjustment;
    :cond_1
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@49
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-get17(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHandler;

    #@4c
    move-result-object v4

    #@4d
    invoke-interface {v4}, Lcom/android/server/notification/RankingHandler;->requestSort()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@50
    .line 2209
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@53
    .line 2194
    return-void
.end method

.method public applyRestore([BI)V
    .locals 6
    .param p1, "payload"    # [B
    .param p2, "user"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2096
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@3
    if-eqz v3, :cond_1

    #@5
    const-string/jumbo v3, "NotificationService"

    #@8
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v5, "applyRestore u="

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    const-string/jumbo v5, " payload="

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    .line 2097
    if-eqz p1, :cond_0

    #@21
    new-instance v2, Ljava/lang/String;

    #@23
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@25
    invoke-direct {v2, p1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@28
    .line 2096
    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 2098
    :cond_1
    if-nez p1, :cond_2

    #@35
    .line 2099
    const-string/jumbo v2, "NotificationService"

    #@38
    new-instance v3, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v4, "applyRestore: no payload to restore for user "

    #@40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 2100
    return-void

    #@50
    .line 2103
    :cond_2
    if-eqz p2, :cond_3

    #@52
    .line 2104
    const-string/jumbo v2, "NotificationService"

    #@55
    new-instance v3, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v4, "applyRestore: cannot restore policy for user "

    #@5d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v3

    #@61
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v3

    #@65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v3

    #@69
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    .line 2105
    return-void

    #@6d
    .line 2107
    :cond_3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@6f
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@72
    .line 2109
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@74
    const/4 v3, 0x1

    #@75
    invoke-static {v2, v0, v3}, Lcom/android/server/notification/NotificationManagerService;->-wrap31(Lcom/android/server/notification/NotificationManagerService;Ljava/io/InputStream;Z)V

    #@78
    .line 2110
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@7a
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7d
    .line 2095
    :goto_0
    return-void

    #@7e
    .line 2111
    :catch_0
    move-exception v1

    #@7f
    .line 2112
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "NotificationService"

    #@82
    const-string/jumbo v3, "applyRestore: error reading payload"

    #@85
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@88
    goto :goto_0
.end method

.method public areNotificationsEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1429
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$5;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1437
    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-wrap16(Ljava/lang/String;)V

    #@4
    .line 1438
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@6
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get2(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;

    #@9
    move-result-object v1

    #@a
    const/16 v2, 0xb

    #@c
    invoke-virtual {v1, v2, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_0

    #@12
    .line 1439
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@14
    invoke-static {v1, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->-wrap2(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 1438
    :cond_0
    :goto_0
    return v0

    #@1b
    .line 1439
    :cond_1
    const/4 v0, 0x1

    #@1c
    goto :goto_0
.end method

.method public cancelAllNotifications(Ljava/lang/String;I)V
    .locals 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1403
    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-wrap16(Ljava/lang/String;)V

    #@3
    .line 1405
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@6
    move-result v0

    #@7
    .line 1406
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@a
    move-result v1

    #@b
    const-string/jumbo v5, "cancelAllNotifications"

    #@e
    const/4 v3, 0x1

    #@f
    const/4 v4, 0x0

    #@10
    move v2, p2

    #@11
    move-object v6, p1

    #@12
    .line 1405
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@15
    move-result p2

    #@16
    .line 1410
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@18
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1b
    move-result v1

    #@1c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1f
    move-result v2

    #@20
    .line 1411
    const/4 v4, 0x0

    #@21
    const/16 v5, 0x40

    #@23
    const/4 v6, 0x1

    #@24
    .line 1412
    const/16 v8, 0x9

    #@26
    const/4 v9, 0x0

    #@27
    move-object v3, p1

    #@28
    move v7, p2

    #@29
    .line 1410
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    #@2c
    .line 1402
    return-void
.end method

.method public cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I

    #@0
    .prologue
    .line 1729
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v2

    #@4
    .line 1730
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@7
    move-result v3

    #@8
    .line 1731
    .local v3, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v8

    #@c
    .line 1733
    .local v8, "identity":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@e
    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@10
    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@11
    .line 1734
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@13
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@1a
    move-result-object v1

    #@1b
    .line 1735
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->supportsProfiles()Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_0

    #@21
    .line 1736
    const-string/jumbo v0, "NotificationService"

    #@24
    new-instance v4, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v5, "Ignoring deprecated cancelNotification(pkg, tag, id) from "

    #@2c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    .line 1737
    iget-object v5, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@32
    .line 1736
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    .line 1738
    const-string/jumbo v5, " use cancelNotification(key) instead."

    #@39
    .line 1736
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    :goto_0
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@45
    .line 1745
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@48
    .line 1728
    return-void

    #@49
    .line 1741
    :cond_0
    :try_start_3
    iget v7, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    #@4b
    move-object v0, p0

    #@4c
    move-object v4, p2

    #@4d
    move-object v5, p3

    #@4e
    move v6, p4

    #@4f
    .line 1740
    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService$5;->cancelNotificationFromListenerLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@52
    goto :goto_0

    #@53
    .line 1733
    .end local v1    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :catchall_0
    move-exception v0

    #@54
    :try_start_4
    monitor-exit v10

    #@55
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@56
    .line 1744
    :catchall_1
    move-exception v0

    #@57
    .line 1745
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5a
    .line 1744
    throw v0
.end method

.method public cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 1388
    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-wrap16(Ljava/lang/String;)V

    #@3
    .line 1389
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@6
    move-result v0

    #@7
    .line 1390
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@a
    move-result v1

    #@b
    const-string/jumbo v5, "cancelNotificationWithTag"

    #@e
    const/4 v3, 0x1

    #@f
    const/4 v4, 0x0

    #@10
    move/from16 v2, p4

    #@12
    move-object v6, p1

    #@13
    .line 1389
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@16
    move-result p4

    #@17
    .line 1393
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1c
    move-result v1

    #@1d
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@20
    move-result v2

    #@21
    .line 1394
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@24
    move-result v3

    #@25
    const/16 v4, 0x3e8

    #@27
    if-ne v3, v4, :cond_0

    #@29
    .line 1395
    const/4 v3, 0x0

    #@2a
    .line 1396
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2d
    move-result v4

    #@2e
    const/16 v5, 0x3e8

    #@30
    if-ne v4, v5, :cond_1

    #@32
    .line 1397
    const/4 v4, 0x0

    #@33
    .line 1394
    :goto_1
    or-int v7, v3, v4

    #@35
    .line 1393
    const/4 v6, 0x0

    #@36
    .line 1397
    const/4 v8, 0x0

    #@37
    .line 1398
    const/16 v10, 0x8

    #@39
    const/4 v11, 0x0

    #@3a
    move-object v3, p1

    #@3b
    move-object v4, p2

    #@3c
    move v5, p3

    #@3d
    move/from16 v9, p4

    #@3f
    .line 1393
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    #@42
    .line 1387
    return-void

    #@43
    .line 1395
    :cond_0
    const/16 v3, 0x40

    #@45
    goto :goto_0

    #@46
    .line 1397
    :cond_1
    const/16 v4, 0x400

    #@48
    goto :goto_1
.end method

.method public cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    .locals 23
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "keys"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1615
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v4

    #@4
    .line 1616
    .local v4, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@7
    move-result v5

    #@8
    .line 1617
    .local v5, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v20

    #@c
    .line 1619
    .local v20, "identity":J
    :try_start_0
    move-object/from16 v0, p0

    #@e
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@10
    iget-object v0, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@12
    move-object/from16 v22, v0

    #@14
    monitor-enter v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@15
    .line 1620
    :try_start_1
    move-object/from16 v0, p0

    #@17
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@19
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@1c
    move-result-object v2

    #@1d
    move-object/from16 v0, p1

    #@1f
    invoke-virtual {v2, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@22
    move-result-object v3

    #@23
    .line 1621
    .local v3, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz p2, :cond_3

    #@25
    .line 1622
    move-object/from16 v0, p2

    #@27
    array-length v0, v0

    #@28
    move/from16 v17, v0

    #@2a
    .line 1623
    .local v17, "N":I
    const/16 v18, 0x0

    #@2c
    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    #@2e
    move/from16 v1, v17

    #@30
    if-ge v0, v1, :cond_4

    #@32
    .line 1624
    move-object/from16 v0, p0

    #@34
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@36
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    #@38
    aget-object v6, p2, v18

    #@3a
    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    move-result-object v19

    #@3e
    check-cast v19, Lcom/android/server/notification/NotificationRecord;

    #@40
    .line 1625
    .local v19, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v19, :cond_0

    #@42
    .line 1623
    :goto_1
    add-int/lit8 v18, v18, 0x1

    #@44
    goto :goto_0

    #@45
    .line 1626
    :cond_0
    move-object/from16 v0, v19

    #@47
    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@49
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    #@4c
    move-result v9

    #@4d
    .line 1627
    .local v9, "userId":I
    iget v2, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    #@4f
    if-eq v9, v2, :cond_1

    #@51
    const/4 v2, -0x1

    #@52
    if-eq v9, v2, :cond_1

    #@54
    .line 1628
    move-object/from16 v0, p0

    #@56
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@58
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get21(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v2, v9}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    #@5f
    move-result v2

    #@60
    if-eqz v2, :cond_2

    #@62
    .line 1633
    :cond_1
    move-object/from16 v0, v19

    #@64
    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@66
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@69
    move-result-object v6

    #@6a
    move-object/from16 v0, v19

    #@6c
    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@6e
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    #@71
    move-result-object v7

    #@72
    move-object/from16 v0, v19

    #@74
    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@76
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    #@79
    move-result v8

    #@7a
    move-object/from16 v2, p0

    #@7c
    .line 1632
    invoke-direct/range {v2 .. v9}, Lcom/android/server/notification/NotificationManagerService$5;->cancelNotificationFromListenerLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7f
    goto :goto_1

    #@80
    .line 1619
    .end local v3    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v9    # "userId":I
    .end local v17    # "N":I
    .end local v18    # "i":I
    .end local v19    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v2

    #@81
    :try_start_2
    monitor-exit v22

    #@82
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@83
    .line 1641
    :catchall_1
    move-exception v2

    #@84
    .line 1642
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@87
    .line 1641
    throw v2

    #@88
    .line 1629
    .restart local v3    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .restart local v9    # "userId":I
    .restart local v17    # "N":I
    .restart local v18    # "i":I
    .restart local v19    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_2
    :try_start_3
    new-instance v2, Ljava/lang/SecurityException;

    #@8a
    new-instance v6, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v7, "Disallowed call from listener: "

    #@92
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v6

    #@96
    .line 1630
    iget-object v7, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    #@98
    .line 1629
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v6

    #@9c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v6

    #@a0
    invoke-direct {v2, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@a3
    throw v2

    #@a4
    .line 1637
    .end local v9    # "userId":I
    .end local v17    # "N":I
    .end local v18    # "i":I
    .end local v19    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_3
    move-object/from16 v0, p0

    #@a6
    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@a8
    iget v13, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    #@aa
    .line 1638
    invoke-virtual {v3}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->supportsProfiles()Z

    #@ad
    move-result v16

    #@ae
    const/16 v14, 0xb

    #@b0
    move v11, v4

    #@b1
    move v12, v5

    #@b2
    move-object v15, v3

    #@b3
    .line 1637
    invoke-virtual/range {v10 .. v16}, Lcom/android/server/notification/NotificationManagerService;->cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@b6
    :cond_4
    :try_start_4
    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@b7
    .line 1642
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ba
    .line 1614
    return-void
.end method

.method public cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/app/ITransientNotification;

    #@0
    .prologue
    .line 1356
    const-string/jumbo v3, "NotificationService"

    #@3
    new-instance v4, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v5, "cancelToast pkg="

    #@b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    const-string/jumbo v5, " callback="

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 1358
    if-eqz p1, :cond_0

    #@27
    if-nez p2, :cond_1

    #@29
    .line 1359
    :cond_0
    const-string/jumbo v3, "NotificationService"

    #@2c
    new-instance v4, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v5, "Not cancelling notification. pkg="

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    const-string/jumbo v5, " callback="

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 1360
    return-void

    #@4f
    .line 1363
    :cond_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@51
    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@53
    monitor-enter v4

    #@54
    .line 1364
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@57
    move-result-wide v0

    #@58
    .line 1366
    .local v0, "callingId":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@5a
    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    #@5d
    move-result v2

    #@5e
    .line 1367
    .local v2, "index":I
    if-ltz v2, :cond_2

    #@60
    .line 1368
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@62
    invoke-virtual {v3, v2}, Lcom/android/server/notification/NotificationManagerService;->cancelToastLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@65
    .line 1374
    :goto_0
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@68
    monitor-exit v4

    #@69
    .line 1355
    return-void

    #@6a
    .line 1370
    :cond_2
    :try_start_3
    const-string/jumbo v3, "NotificationService"

    #@6d
    new-instance v5, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v6, "Toast already cancelled. pkg="

    #@75
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v5

    #@79
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v5

    #@7d
    .line 1371
    const-string/jumbo v6, " callback="

    #@80
    .line 1370
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v5

    #@84
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v5

    #@88
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v5

    #@8c
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@8f
    goto :goto_0

    #@90
    .line 1373
    .end local v2    # "index":I
    :catchall_0
    move-exception v3

    #@91
    .line 1374
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@94
    .line 1373
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@95
    .line 1363
    .end local v0    # "callingId":J
    :catchall_1
    move-exception v3

    #@96
    monitor-exit v4

    #@97
    throw v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2036
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "android.permission.DUMP"

    #@9
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 2038
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "Permission Denial: can\'t dump NotificationManager from pid="

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    .line 2039
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1e
    move-result v2

    #@1f
    .line 2038
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 2040
    const-string/jumbo v2, ", uid="

    #@26
    .line 2038
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 2040
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2d
    move-result v2

    #@2e
    .line 2038
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39
    .line 2041
    return-void

    #@3a
    .line 2044
    :cond_0
    invoke-static {p3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->parseFromArguments([Ljava/lang/String;)Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    #@3d
    move-result-object v0

    #@3e
    .line 2045
    .local v0, "filter":Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    if-eqz v0, :cond_1

    #@40
    iget-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->stats:Z

    #@42
    if-eqz v1, :cond_1

    #@44
    .line 2046
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@46
    invoke-static {v1, p2, v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap21(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    #@49
    .line 2035
    :goto_0
    return-void

    #@4a
    .line 2048
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@4c
    invoke-virtual {v1, p2, v0}, Lcom/android/server/notification/NotificationManagerService;->dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    #@4f
    goto :goto_0
.end method

.method public enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    .locals 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "notification"    # Landroid/app/Notification;
    .param p6, "idOut"    # [I
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1382
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v3

    #@6
    .line 1383
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@9
    move-result v4

    #@a
    move-object v1, p1

    #@b
    move-object v2, p2

    #@c
    move-object v5, p3

    #@d
    move v6, p4

    #@e
    move-object v7, p5

    #@f
    move-object/from16 v8, p6

    #@11
    move/from16 v9, p7

    #@13
    .line 1382
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V

    #@16
    .line 1381
    return-void
.end method

.method public enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V
    .locals 18
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/app/ITransientNotification;
    .param p3, "duration"    # I

    #@0
    .prologue
    .line 1278
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 1279
    const-string/jumbo v4, "NotificationService"

    #@7
    new-instance v5, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v6, "enqueueToast pkg="

    #@f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v5

    #@13
    move-object/from16 v0, p1

    #@15
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    const-string/jumbo v6, " callback="

    #@1c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v5

    #@20
    move-object/from16 v0, p2

    #@22
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    .line 1280
    const-string/jumbo v6, " duration="

    #@29
    .line 1279
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    move/from16 v0, p3

    #@2f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 1283
    :cond_0
    if-eqz p1, :cond_1

    #@3c
    if-nez p2, :cond_2

    #@3e
    .line 1284
    :cond_1
    const-string/jumbo v4, "NotificationService"

    #@41
    new-instance v5, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v6, "Not doing toast. pkg="

    #@49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    move-object/from16 v0, p1

    #@4f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    const-string/jumbo v6, " callback="

    #@56
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v5

    #@5a
    move-object/from16 v0, p2

    #@5c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v5

    #@60
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v5

    #@64
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    .line 1285
    return-void

    #@68
    .line 1288
    :cond_2
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap1()Z

    #@6b
    move-result v4

    #@6c
    if-nez v4, :cond_4

    #@6e
    const-string/jumbo v4, "android"

    #@71
    move-object/from16 v0, p1

    #@73
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v15

    #@77
    .line 1290
    :goto_0
    move-object/from16 v0, p0

    #@79
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@7b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7e
    move-result v5

    #@7f
    move-object/from16 v0, p1

    #@81
    invoke-static {v4, v0, v5}, Lcom/android/server/notification/NotificationManagerService;->-wrap2(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z

    #@84
    move-result v14

    #@85
    .line 1292
    .local v14, "isPackageSuspended":Z
    move-object/from16 v0, p0

    #@87
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@89
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@8c
    move-result v5

    #@8d
    move-object/from16 v0, p1

    #@8f
    invoke-static {v4, v0, v5}, Lcom/android/server/notification/NotificationManagerService;->-wrap5(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z

    #@92
    move-result v4

    #@93
    if-eqz v4, :cond_3

    #@95
    if-eqz v14, :cond_6

    #@97
    .line 1294
    :cond_3
    if-nez v15, :cond_6

    #@99
    .line 1295
    const-string/jumbo v5, "NotificationService"

    #@9c
    new-instance v4, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v6, "Suppressing toast from package "

    #@a4
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v4

    #@a8
    move-object/from16 v0, p1

    #@aa
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v6

    #@ae
    .line 1296
    if-eqz v14, :cond_5

    #@b0
    .line 1297
    const-string/jumbo v4, " due to package suspended by administrator."

    #@b3
    .line 1295
    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v4

    #@b7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v4

    #@bb
    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@be
    .line 1299
    return-void

    #@bf
    .line 1288
    .end local v14    # "isPackageSuspended":Z
    :cond_4
    const/4 v15, 0x1

    #@c0
    .local v15, "isSystemToast":Z
    goto :goto_0

    #@c1
    .line 1298
    .end local v15    # "isSystemToast":Z
    .restart local v14    # "isPackageSuspended":Z
    :cond_5
    const-string/jumbo v4, " by user request."

    #@c4
    goto :goto_1

    #@c5
    .line 1303
    :cond_6
    move-object/from16 v0, p0

    #@c7
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@c9
    iget-object v0, v4, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@cb
    move-object/from16 v17, v0

    #@cd
    monitor-enter v17

    #@ce
    .line 1304
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@d1
    move-result v3

    #@d2
    .line 1305
    .local v3, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@d5
    move-result-wide v10

    #@d6
    .line 1308
    .local v10, "callingId":J
    :try_start_1
    move-object/from16 v0, p0

    #@d8
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@da
    move-object/from16 v0, p1

    #@dc
    move-object/from16 v1, p2

    #@de
    invoke-virtual {v4, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    #@e1
    move-result v13

    #@e2
    .line 1311
    .local v13, "index":I
    if-ltz v13, :cond_8

    #@e4
    .line 1312
    move-object/from16 v0, p0

    #@e6
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@e8
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@ea
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ed
    move-result-object v2

    #@ee
    check-cast v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    #@f0
    .line 1313
    .local v2, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    move/from16 v0, p3

    #@f2
    invoke-virtual {v2, v0}, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->update(I)V

    #@f5
    .line 1345
    :goto_2
    if-nez v13, :cond_7

    #@f7
    .line 1346
    move-object/from16 v0, p0

    #@f9
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@fb
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->showNextToastLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@fe
    .line 1349
    :cond_7
    :try_start_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@101
    monitor-exit v17

    #@102
    .line 1276
    return-void

    #@103
    .line 1317
    .end local v2    # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_8
    if-nez v15, :cond_a

    #@105
    .line 1318
    const/4 v9, 0x0

    #@106
    .line 1319
    .local v9, "count":I
    :try_start_3
    move-object/from16 v0, p0

    #@108
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@10a
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@10c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@10f
    move-result v8

    #@110
    .line 1320
    .local v8, "N":I
    const/4 v12, 0x0

    #@111
    .local v12, "i":I
    :goto_3
    if-ge v12, v8, :cond_a

    #@113
    .line 1321
    move-object/from16 v0, p0

    #@115
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@117
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@119
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11c
    move-result-object v16

    #@11d
    check-cast v16, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    #@11f
    .line 1322
    .local v16, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    move-object/from16 v0, v16

    #@121
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    #@123
    move-object/from16 v0, p1

    #@125
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@128
    move-result v4

    #@129
    if-eqz v4, :cond_9

    #@12b
    .line 1323
    add-int/lit8 v9, v9, 0x1

    #@12d
    .line 1324
    const/16 v4, 0x32

    #@12f
    if-lt v9, v4, :cond_9

    #@131
    .line 1325
    const-string/jumbo v4, "NotificationService"

    #@134
    new-instance v5, Ljava/lang/StringBuilder;

    #@136
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@139
    const-string/jumbo v6, "Package has already posted "

    #@13c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v5

    #@140
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@143
    move-result-object v5

    #@144
    .line 1326
    const-string/jumbo v6, " toasts. Not showing more. Package="

    #@147
    .line 1325
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v5

    #@14b
    move-object/from16 v0, p1

    #@14d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    move-result-object v5

    #@151
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@154
    move-result-object v5

    #@155
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@158
    .line 1349
    :try_start_4
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@15b
    monitor-exit v17

    #@15c
    .line 1327
    return-void

    #@15d
    .line 1320
    :cond_9
    add-int/lit8 v12, v12, 0x1

    #@15f
    goto :goto_3

    #@160
    .line 1333
    .end local v8    # "N":I
    .end local v9    # "count":I
    .end local v12    # "i":I
    .end local v16    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_a
    :try_start_5
    new-instance v7, Landroid/os/Binder;

    #@162
    invoke-direct {v7}, Landroid/os/Binder;-><init>()V

    #@165
    .line 1334
    .local v7, "token":Landroid/os/Binder;
    move-object/from16 v0, p0

    #@167
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@169
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-get22(Lcom/android/server/notification/NotificationManagerService;)Landroid/view/WindowManagerInternal;

    #@16c
    move-result-object v4

    #@16d
    .line 1335
    const/16 v5, 0x7d5

    #@16f
    .line 1334
    invoke-virtual {v4, v7, v5}, Landroid/view/WindowManagerInternal;->addWindowToken(Landroid/os/IBinder;I)V

    #@172
    .line 1336
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    #@174
    move-object/from16 v4, p1

    #@176
    move-object/from16 v5, p2

    #@178
    move/from16 v6, p3

    #@17a
    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/NotificationManagerService$ToastRecord;-><init>(ILjava/lang/String;Landroid/app/ITransientNotification;ILandroid/os/Binder;)V

    #@17d
    .line 1337
    .restart local v2    # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    move-object/from16 v0, p0

    #@17f
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@181
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@183
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@186
    .line 1338
    move-object/from16 v0, p0

    #@188
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@18a
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    #@18c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@18f
    move-result v4

    #@190
    add-int/lit8 v13, v4, -0x1

    #@192
    .line 1339
    move-object/from16 v0, p0

    #@194
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@196
    invoke-virtual {v4, v3}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveIfNeededLocked(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@199
    goto/16 :goto_2

    #@19b
    .line 1348
    .end local v2    # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    .end local v7    # "token":Landroid/os/Binder;
    .end local v13    # "index":I
    :catchall_0
    move-exception v4

    #@19c
    .line 1349
    :try_start_6
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19f
    .line 1348
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@1a0
    .line 1303
    .end local v3    # "callingPid":I
    .end local v10    # "callingId":J
    :catchall_1
    move-exception v4

    #@1a1
    monitor-exit v17

    #@1a2
    throw v4
.end method

.method public getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .locals 7
    .param p1, "callingPkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1498
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@5
    move-result-object v4

    #@6
    .line 1499
    const-string/jumbo v5, "android.permission.ACCESS_NOTIFICATIONS"

    #@9
    .line 1500
    const-string/jumbo v6, "NotificationManagerService.getActiveNotifications"

    #@c
    .line 1498
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 1502
    const/4 v2, 0x0

    #@10
    .line 1503
    .local v2, "tmp":[Landroid/service/notification/StatusBarNotification;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@13
    move-result v3

    #@14
    .line 1506
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@16
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-get2(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;

    #@19
    move-result-object v4

    #@1a
    const/16 v5, 0x19

    #@1c
    invoke-virtual {v4, v5, v3, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    #@1f
    move-result v4

    #@20
    if-nez v4, :cond_1

    #@22
    .line 1508
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@24
    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@26
    monitor-enter v5

    #@27
    .line 1509
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@29
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@2e
    move-result v4

    #@2f
    new-array v2, v4, [Landroid/service/notification/StatusBarNotification;

    #@31
    .line 1510
    .local v2, "tmp":[Landroid/service/notification/StatusBarNotification;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@33
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@38
    move-result v0

    #@39
    .line 1511
    .local v0, "N":I
    const/4 v1, 0x0

    #@3a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@3c
    .line 1512
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@3e
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@43
    move-result-object v4

    #@44
    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    #@46
    iget-object v4, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@48
    aput-object v4, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    .line 1511
    add-int/lit8 v1, v1, 0x1

    #@4c
    goto :goto_0

    #@4d
    :cond_0
    monitor-exit v5

    #@4e
    .line 1516
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "tmp":[Landroid/service/notification/StatusBarNotification;
    :cond_1
    return-object v2

    #@4f
    .line 1508
    :catchall_0
    move-exception v4

    #@50
    monitor-exit v5

    #@51
    throw v4
.end method

.method public getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 11
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "keys"    # [Ljava/lang/String;
    .param p3, "trim"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/INotificationListener;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1762
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    iget-object v9, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@4
    monitor-enter v9

    #@5
    .line 1763
    :try_start_0
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@7
    invoke-static {v8}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@a
    move-result-object v8

    #@b
    invoke-virtual {v8, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@e
    move-result-object v3

    #@f
    .line 1764
    .local v3, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz p2, :cond_1

    #@11
    const/4 v1, 0x1

    #@12
    .line 1765
    .local v1, "getKeys":Z
    :goto_0
    if-eqz v1, :cond_2

    #@14
    array-length v0, p2

    #@15
    .line 1767
    .local v0, "N":I
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    #@17
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@1a
    .line 1768
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    const/4 v2, 0x0

    #@1b
    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_6

    #@1d
    .line 1769
    if-eqz v1, :cond_3

    #@1f
    .line 1770
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@21
    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    #@23
    aget-object v10, p2, v2

    #@25
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v8

    #@29
    check-cast v8, Lcom/android/server/notification/NotificationRecord;

    #@2b
    move-object v5, v8

    #@2c
    .line 1772
    .local v5, "r":Lcom/android/server/notification/NotificationRecord;
    :goto_3
    if-nez v5, :cond_4

    #@2e
    .line 1768
    :cond_0
    :goto_4
    add-int/lit8 v2, v2, 0x1

    #@30
    goto :goto_2

    #@31
    .line 1764
    .end local v0    # "N":I
    .end local v1    # "getKeys":Z
    .end local v2    # "i":I
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    .end local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    const/4 v1, 0x0

    #@32
    .restart local v1    # "getKeys":Z
    goto :goto_0

    #@33
    .line 1765
    :cond_2
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@35
    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@3a
    move-result v0

    #@3b
    .restart local v0    # "N":I
    goto :goto_1

    #@3c
    .line 1771
    .restart local v2    # "i":I
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    :cond_3
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@3e
    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@43
    move-result-object v8

    #@44
    check-cast v8, Lcom/android/server/notification/NotificationRecord;

    #@46
    move-object v5, v8

    #@47
    goto :goto_3

    #@48
    .line 1773
    .restart local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_4
    iget-object v6, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@4a
    .line 1774
    .local v6, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@4c
    invoke-static {v8, v6, v3}, Lcom/android/server/notification/NotificationManagerService;->-wrap4(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    #@4f
    move-result v8

    #@50
    if-eqz v8, :cond_0

    #@52
    .line 1776
    if-nez p3, :cond_5

    #@54
    move-object v7, v6

    #@55
    .line 1777
    .local v7, "sbnToSend":Landroid/service/notification/StatusBarNotification;
    :goto_5
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@58
    goto :goto_4

    #@59
    .line 1762
    .end local v0    # "N":I
    .end local v1    # "getKeys":Z
    .end local v2    # "i":I
    .end local v3    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    .end local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v6    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v7    # "sbnToSend":Landroid/service/notification/StatusBarNotification;
    :catchall_0
    move-exception v8

    #@5a
    monitor-exit v9

    #@5b
    throw v8

    #@5c
    .line 1776
    .restart local v0    # "N":I
    .restart local v1    # "getKeys":Z
    .restart local v2    # "i":I
    .restart local v3    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    .restart local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    .restart local v6    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_5
    :try_start_1
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    #@5f
    move-result-object v7

    #@60
    goto :goto_5

    #@61
    .line 1779
    .end local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v6    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_6
    new-instance v8, Landroid/content/pm/ParceledListSlice;

    #@63
    invoke-direct {v8, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@66
    monitor-exit v9

    #@67
    return-object v8
.end method

.method public getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 20
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "incomingUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1527
    invoke-static/range {p1 .. p1}, Lcom/android/server/notification/NotificationManagerService;->-wrap16(Ljava/lang/String;)V

    #@3
    .line 1528
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@6
    move-result v2

    #@7
    .line 1529
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@a
    move-result v3

    #@b
    .line 1530
    const-string/jumbo v7, "getAppActiveNotifications"

    #@e
    .line 1529
    const/4 v5, 0x1

    #@f
    const/4 v6, 0x0

    #@10
    move/from16 v4, p2

    #@12
    move-object/from16 v8, p1

    #@14
    .line 1528
    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@17
    move-result v18

    #@18
    .line 1533
    .local v18, "userId":I
    new-instance v16, Ljava/util/ArrayList;

    #@1a
    move-object/from16 v0, p0

    #@1c
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@1e
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@23
    move-result v3

    #@24
    move-object/from16 v0, v16

    #@26
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@29
    .line 1535
    .local v16, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    move-object/from16 v0, p0

    #@2b
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2d
    iget-object v0, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@2f
    move-object/from16 v19, v0

    #@31
    monitor-enter v19

    #@32
    .line 1536
    :try_start_0
    move-object/from16 v0, p0

    #@34
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@36
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@3b
    move-result v14

    #@3c
    .line 1537
    .local v14, "N":I
    const/4 v15, 0x0

    #@3d
    .local v15, "i":I
    :goto_0
    if-ge v15, v14, :cond_1

    #@3f
    .line 1538
    move-object/from16 v0, p0

    #@41
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@43
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v3

    #@49
    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    #@4b
    iget-object v0, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@4d
    move-object/from16 v17, v0

    #@4f
    .line 1539
    .local v17, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    move-object/from16 v0, p1

    #@55
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v3

    #@59
    if-eqz v3, :cond_0

    #@5b
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    #@5e
    move-result v3

    #@5f
    move/from16 v0, v18

    #@61
    if-ne v3, v0, :cond_0

    #@63
    .line 1540
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@66
    move-result-object v3

    #@67
    iget v3, v3, Landroid/app/Notification;->flags:I

    #@69
    and-int/lit16 v3, v3, 0x400

    #@6b
    if-nez v3, :cond_0

    #@6d
    .line 1545
    new-instance v2, Landroid/service/notification/StatusBarNotification;

    #@6f
    .line 1546
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@72
    move-result-object v3

    #@73
    .line 1547
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    #@76
    move-result-object v4

    #@77
    .line 1548
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getId()I

    #@7a
    move-result v5

    #@7b
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    #@7e
    move-result-object v6

    #@7f
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getUid()I

    #@82
    move-result v7

    #@83
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    #@86
    move-result v8

    #@87
    .line 1550
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    #@8a
    move-result-object v9

    #@8b
    invoke-virtual {v9}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    #@8e
    move-result-object v10

    #@8f
    .line 1551
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    #@92
    move-result-object v11

    #@93
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    #@96
    move-result-wide v12

    #@97
    .line 1549
    const/4 v9, 0x0

    #@98
    .line 1545
    invoke-direct/range {v2 .. v13}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;J)V

    #@9b
    .line 1552
    .local v2, "sbnOut":Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, v16

    #@9d
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a0
    .line 1537
    .end local v2    # "sbnOut":Landroid/service/notification/StatusBarNotification;
    :cond_0
    add-int/lit8 v15, v15, 0x1

    #@a2
    goto :goto_0

    #@a3
    .end local v17    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_1
    monitor-exit v19

    #@a4
    .line 1557
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    #@a6
    move-object/from16 v0, v16

    #@a8
    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    #@ab
    return-object v3

    #@ac
    .line 1535
    .end local v14    # "N":I
    .end local v15    # "i":I
    :catchall_0
    move-exception v3

    #@ad
    monitor-exit v19

    #@ae
    throw v3
.end method

.method public getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1876
    const-string/jumbo v0, "Id is null"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1877
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v0

    #@a
    const-string/jumbo v1, "getAutomaticZenRule"

    #@d
    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$5;->enforcePolicyAccess(ILjava/lang/String;)V

    #@10
    .line 1878
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@12
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get23(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public getBackupPayload(I)[B
    .locals 6
    .param p1, "user"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2078
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    const-string/jumbo v2, "NotificationService"

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "getBackupPayload u="

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 2080
    :cond_0
    if-eqz p1, :cond_1

    #@21
    .line 2081
    const-string/jumbo v2, "NotificationService"

    #@24
    new-instance v3, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v4, "getBackupPayload: cannot backup policy for user "

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 2082
    return-object v5

    #@3c
    .line 2084
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@3e
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@41
    .line 2086
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@43
    const/4 v3, 0x1

    #@44
    invoke-static {v2, v0, v3}, Lcom/android/server/notification/NotificationManagerService;->-wrap37(Lcom/android/server/notification/NotificationManagerService;Ljava/io/OutputStream;Z)V

    #@47
    .line 2087
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4a
    move-result-object v2

    #@4b
    return-object v2

    #@4c
    .line 2088
    :catch_0
    move-exception v1

    #@4d
    .line 2089
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v2, "NotificationService"

    #@50
    new-instance v3, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v4, "getBackupPayload: error writing payload for user "

    #@58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v3

    #@5c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v3

    #@60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v3

    #@64
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@67
    .line 2091
    return-object v5
.end method

.method public getEffectsSuppressor()Landroid/content/ComponentName;
    .locals 2

    #@0
    .prologue
    .line 2054
    const-string/jumbo v0, "INotificationManager.getEffectsSuppressor"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUIOrVolume(Ljava/lang/String;)V

    #@6
    .line 2055
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@8
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get7(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_0

    #@12
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@14
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get7(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;

    #@17
    move-result-object v0

    #@18
    const/4 v1, 0x0

    #@19
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Landroid/content/ComponentName;

    #@1f
    :goto_0
    return-object v0

    #@20
    :cond_0
    const/4 v0, 0x0

    #@21
    goto :goto_0
.end method

.method public getHintsFromListener(Landroid/service/notification/INotificationListener;)I
    .locals 2
    .param p1, "token"    # Landroid/service/notification/INotificationListener;

    #@0
    .prologue
    .line 1808
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@4
    monitor-enter v1

    #@5
    .line 1809
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@7
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get10(Lcom/android/server/notification/NotificationManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v0

    #@b
    monitor-exit v1

    #@c
    return v0

    #@d
    .line 1808
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;
    .locals 5
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "count"    # I

    #@0
    .prologue
    .line 1568
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    #@5
    move-result-object v2

    #@6
    .line 1569
    const-string/jumbo v3, "android.permission.ACCESS_NOTIFICATIONS"

    #@9
    .line 1570
    const-string/jumbo v4, "NotificationManagerService.getHistoricalNotifications"

    #@c
    .line 1568
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 1572
    const/4 v0, 0x0

    #@10
    .line 1573
    .local v0, "tmp":[Landroid/service/notification/StatusBarNotification;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@13
    move-result v1

    #@14
    .line 1576
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@16
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get2(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;

    #@19
    move-result-object v2

    #@1a
    const/16 v3, 0x19

    #@1c
    invoke-virtual {v2, v3, v1, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_0

    #@22
    .line 1578
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@24
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get4(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;

    #@27
    move-result-object v3

    #@28
    monitor-enter v3

    #@29
    .line 1579
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2b
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get4(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2, p2}, Lcom/android/server/notification/NotificationManagerService$Archive;->getArray(I)[Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    move-result-object v0

    #@33
    .local v0, "tmp":[Landroid/service/notification/StatusBarNotification;
    monitor-exit v3

    #@34
    .line 1582
    .end local v0    # "tmp":[Landroid/service/notification/StatusBarNotification;
    :cond_0
    return-object v0

    #@35
    .line 1578
    .local v0, "tmp":[Landroid/service/notification/StatusBarNotification;
    :catchall_0
    move-exception v2

    #@36
    monitor-exit v3

    #@37
    throw v2
.end method

.method public getImportance(Ljava/lang/String;I)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 1485
    const-string/jumbo v0, "Caller not system or systemui"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    #@6
    .line 1486
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@8
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getImportance(Ljava/lang/String;I)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I
    .locals 2
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1831
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get13(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 1832
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@9
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get9(Lcom/android/server/notification/NotificationManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 1831
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public getNotificationPolicy(Ljava/lang/String;)Landroid/app/NotificationManager$Policy;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2156
    const-string/jumbo v2, "getNotificationPolicy"

    #@3
    invoke-direct {p0, p1, v2}, Lcom/android/server/notification/NotificationManagerService$5;->enforcePolicyAccess(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 2157
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@9
    move-result-wide v0

    #@a
    .line 2159
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@c
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get23(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result-object v2

    #@14
    .line 2161
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@17
    .line 2159
    return-object v2

    #@18
    .line 2160
    :catchall_0
    move-exception v2

    #@19
    .line 2161
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c
    .line 2160
    throw v2
.end method

.method public getPackageImportance(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1479
    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-wrap16(Ljava/lang/String;)V

    #@3
    .line 1480
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@5
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    #@8
    move-result-object v0

    #@9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@c
    move-result v1

    #@d
    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/RankingHelper;->getImportance(Ljava/lang/String;I)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public getPackagesRequestingNotificationPolicyAccess()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2131
    const-string/jumbo v2, "request policy access packages"

    #@3
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    #@6
    .line 2132
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@9
    move-result-wide v0

    #@a
    .line 2134
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@c
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mPolicyAccess:Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    #@e
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;->getRequestingPackages()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result-object v2

    #@12
    .line 2136
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@15
    .line 2134
    return-object v2

    #@16
    .line 2135
    :catchall_0
    move-exception v2

    #@17
    .line 2136
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1a
    .line 2135
    throw v2
.end method

.method public getPriority(Ljava/lang/String;I)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 1451
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap17()V

    #@3
    .line 1452
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@5
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getPriority(Ljava/lang/String;I)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public getRuleInstanceCount(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "owner"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1926
    const-string/jumbo v0, "Owner is null"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1927
    const-string/jumbo v0, "getRuleInstanceCount"

    #@9
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    #@c
    .line 1929
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@e
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get23(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->getCurrentInstanceCount(Landroid/content/ComponentName;)I

    #@15
    move-result v0

    #@16
    return v0
.end method

.method public getVisibilityOverride(Ljava/lang/String;I)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 1464
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap17()V

    #@3
    .line 1465
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@5
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getVisibilityOverride(Ljava/lang/String;I)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public getZenMode()I
    .locals 1

    #@0
    .prologue
    .line 1848
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get23(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 1

    #@0
    .prologue
    .line 1853
    const-string/jumbo v0, "INotificationManager.getZenModeConfig"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUIOrVolume(Ljava/lang/String;)V

    #@6
    .line 1854
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@8
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get23(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public getZenRules()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1870
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    const-string/jumbo v1, "getAutomaticZenRules"

    #@7
    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$5;->enforcePolicyAccess(ILjava/lang/String;)V

    #@a
    .line 1871
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@c
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get23(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenRules()Ljava/util/List;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public isNotificationPolicyAccessGranted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2118
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$5;->checkPolicyAccess(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2124
    const-string/jumbo v0, "request policy access status for another package"

    #@3
    .line 2123
    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUIOrSamePackage(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 2125
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$5;->checkPolicyAccess(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public isSystemConditionProviderEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2071
    const-string/jumbo v0, "INotificationManager.isSystemConditionProviderEnabled"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUIOrVolume(Ljava/lang/String;)V

    #@6
    .line 2072
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@8
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get6(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Lcom/android/server/notification/ConditionProviders;->isSystemProviderEnabled(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public matchesCallFilter(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2060
    const-string/jumbo v0, "INotificationManager.matchesCallFilter"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    #@6
    .line 2061
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@8
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get23(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@b
    move-result-object v0

    #@c
    .line 2062
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    #@f
    move-result-object v1

    #@10
    .line 2064
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@12
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    #@15
    move-result-object v2

    #@16
    const-class v3, Lcom/android/server/notification/ValidateNotificationPeople;

    #@18
    invoke-virtual {v2, v3}, Lcom/android/server/notification/RankingHelper;->findExtractor(Ljava/lang/Class;)Lcom/android/server/notification/NotificationSignalExtractor;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Lcom/android/server/notification/ValidateNotificationPeople;

    #@1e
    .line 2065
    const/16 v4, 0xbb8

    #@20
    .line 2066
    const/high16 v5, 0x3f800000    # 1.0f

    #@22
    move-object v2, p1

    #@23
    .line 2061
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/ZenModeHelper;->matchesCallFilter(Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z

    #@26
    move-result v0

    #@27
    return v0
.end method

.method public notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "provider"    # Landroid/service/notification/IConditionProvider;
    .param p3, "conditions"    # [Landroid/service/notification/Condition;

    #@0
    .prologue
    .line 1948
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get6(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p2}, Lcom/android/server/notification/ConditionProviders;->checkServiceToken(Landroid/service/notification/IConditionProvider;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@9
    move-result-object v0

    #@a
    .line 1949
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-wrap16(Ljava/lang/String;)V

    #@d
    .line 1950
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@f
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get8(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Handler;

    #@12
    move-result-object v1

    #@13
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$5$1;

    #@15
    invoke-direct {v2, p0, p1, v0, p3}, Lcom/android/server/notification/NotificationManagerService$5$1;-><init>(Lcom/android/server/notification/NotificationManagerService$5;Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;[Landroid/service/notification/Condition;)V

    #@18
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1b
    .line 1947
    return-void
.end method

.method public registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V
    .locals 1
    .param p1, "listener"    # Landroid/service/notification/INotificationListener;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userid"    # I

    #@0
    .prologue
    .line 1594
    const-string/jumbo v0, "INotificationManager.registerListener"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    #@6
    .line 1595
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@8
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->registerService(Landroid/os/IInterface;Landroid/content/ComponentName;I)V

    #@f
    .line 1593
    return-void
.end method

.method public removeAutomaticZenRule(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1909
    const-string/jumbo v0, "Id is null"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1911
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v0

    #@a
    const-string/jumbo v1, "removeAutomaticZenRule"

    #@d
    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$5;->enforcePolicyAccess(ILjava/lang/String;)V

    #@10
    .line 1913
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@12
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get23(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, "removeAutomaticZenRule"

    #@19
    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/ZenModeHelper;->removeAutomaticZenRule(Ljava/lang/String;Ljava/lang/String;)Z

    #@1c
    move-result v0

    #@1d
    return v0
.end method

.method public removeAutomaticZenRules(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1918
    const-string/jumbo v0, "Package name is null"

    #@3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1919
    const-string/jumbo v0, "removeAutomaticZenRules"

    #@9
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    #@c
    .line 1921
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@e
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get23(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "removeAutomaticZenRules"

    #@15
    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/ZenModeHelper;->removeAutomaticZenRules(Ljava/lang/String;Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    return v0
.end method

.method public requestBindListener(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1653
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-wrap16(Ljava/lang/String;)V

    #@7
    .line 1654
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@a
    move-result-wide v0

    #@b
    .line 1657
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@d
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get16(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationRankers;->isComponentEnabledForCurrentProfiles(Landroid/content/ComponentName;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 1658
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@19
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get16(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationRankers;

    #@1c
    move-result-object v2

    #@1d
    .line 1660
    .local v2, "manager":Lcom/android/server/notification/ManagedServices;
    :goto_0
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v2, p1, v3}, Lcom/android/server/notification/ManagedServices;->setComponentState(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 1662
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 1652
    return-void

    #@25
    .line 1659
    .end local v2    # "manager":Lcom/android/server/notification/ManagedServices;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@27
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    move-result-object v2

    #@2b
    .restart local v2    # "manager":Lcom/android/server/notification/ManagedServices;
    goto :goto_0

    #@2c
    .line 1661
    .end local v2    # "manager":Lcom/android/server/notification/ManagedServices;
    :catchall_0
    move-exception v3

    #@2d
    .line 1662
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@30
    .line 1661
    throw v3
.end method

.method public requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V
    .locals 7
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "hints"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1785
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@4
    move-result-wide v2

    #@5
    .line 1787
    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@7
    iget-object v6, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@9
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@a
    .line 1788
    :try_start_1
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@c
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@f
    move-result-object v5

    #@10
    invoke-virtual {v5, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@13
    move-result-object v4

    #@14
    .line 1789
    .local v4, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    const/4 v1, 0x7

    #@15
    .line 1792
    .local v1, "disableEffectsMask":I
    and-int/lit8 v5, p2, 0x7

    #@17
    if-eqz v5, :cond_0

    #@19
    const/4 v0, 0x1

    #@1a
    .line 1793
    .local v0, "disableEffects":Z
    :cond_0
    if-eqz v0, :cond_1

    #@1c
    .line 1794
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@1e
    invoke-static {v5, v4, p2}, Lcom/android/server/notification/NotificationManagerService;->-wrap10(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    #@21
    .line 1798
    :goto_0
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@23
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-wrap35(Lcom/android/server/notification/NotificationManagerService;)V

    #@26
    .line 1799
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@28
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-wrap33(Lcom/android/server/notification/NotificationManagerService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2c
    .line 1802
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2f
    .line 1784
    return-void

    #@30
    .line 1796
    :cond_1
    :try_start_3
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@32
    invoke-static {v5, v4, p2}, Lcom/android/server/notification/NotificationManagerService;->-wrap7(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 1787
    .end local v0    # "disableEffects":Z
    .end local v1    # "disableEffectsMask":I
    .end local v4    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :catchall_0
    move-exception v5

    #@37
    :try_start_4
    monitor-exit v6

    #@38
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@39
    .line 1801
    :catchall_1
    move-exception v5

    #@3a
    .line 1802
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3d
    .line 1801
    throw v5
.end method

.method public requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V
    .locals 6
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "interruptionFilter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1816
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 1818
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@6
    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@8
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@9
    .line 1819
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@b
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@12
    move-result-object v2

    #@13
    .line 1820
    .local v2, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@15
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get23(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@18
    move-result-object v3

    #@19
    iget-object v5, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@1b
    invoke-virtual {v3, v5, p2}, Lcom/android/server/notification/ZenModeHelper;->requestFromListener(Landroid/content/ComponentName;I)V

    #@1e
    .line 1821
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@20
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-wrap34(Lcom/android/server/notification/NotificationManagerService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@24
    .line 1824
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@27
    .line 1815
    return-void

    #@28
    .line 1818
    .end local v2    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :catchall_0
    move-exception v3

    #@29
    :try_start_3
    monitor-exit v4

    #@2a
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2b
    .line 1823
    :catchall_1
    move-exception v3

    #@2c
    .line 1824
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2f
    .line 1823
    throw v3
.end method

.method public requestUnbindListener(Landroid/service/notification/INotificationListener;)V
    .locals 6
    .param p1, "token"    # Landroid/service/notification/INotificationListener;

    #@0
    .prologue
    .line 1668
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 1671
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@6
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@d
    move-result-object v2

    #@e
    .line 1672
    .local v2, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-virtual {v2}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->getOwner()Lcom/android/server/notification/ManagedServices;

    #@11
    move-result-object v3

    #@12
    iget-object v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@14
    const/4 v5, 0x0

    #@15
    invoke-virtual {v3, v4, v5}, Lcom/android/server/notification/ManagedServices;->setComponentState(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 1674
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 1667
    return-void

    #@1c
    .line 1673
    .end local v2    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :catchall_0
    move-exception v3

    #@1d
    .line 1674
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@20
    .line 1673
    throw v3
.end method

.method public setImportance(Ljava/lang/String;II)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "importance"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1470
    const-string/jumbo v1, "Caller not system or systemui"

    #@4
    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    #@7
    .line 1471
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@9
    .line 1472
    if-eqz p3, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    .line 1471
    :cond_0
    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/notification/NotificationManagerService;->setNotificationsEnabledForPackageImpl(Ljava/lang/String;IZ)V

    #@f
    .line 1473
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@11
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/RankingHelper;->setImportance(Ljava/lang/String;II)V

    #@18
    .line 1474
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@1a
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    #@1d
    .line 1469
    return-void
.end method

.method public setInterruptionFilter(Ljava/lang/String;I)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "filter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 1934
    const-string/jumbo v3, "setInterruptionFilter"

    #@4
    invoke-direct {p0, p1, v3}, Lcom/android/server/notification/NotificationManagerService$5;->enforcePolicyAccess(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 1935
    invoke-static {p2, v4}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    #@a
    move-result v2

    #@b
    .line 1936
    .local v2, "zen":I
    if-ne v2, v4, :cond_0

    #@d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@f
    new-instance v4, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v5, "Invalid filter: "

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v3

    #@27
    .line 1937
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2a
    move-result-wide v0

    #@2b
    .line 1939
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2d
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get23(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@30
    move-result-object v3

    #@31
    const-string/jumbo v4, "setInterruptionFilter"

    #@34
    const/4 v5, 0x0

    #@35
    invoke-virtual {v3, v2, v5, p1, v4}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .line 1941
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3b
    .line 1933
    return-void

    #@3c
    .line 1940
    :catchall_0
    move-exception v3

    #@3d
    .line 1941
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@40
    .line 1940
    throw v3
.end method

.method public setNotificationPolicy(Ljava/lang/String;Landroid/app/NotificationManager$Policy;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "policy"    # Landroid/app/NotificationManager$Policy;

    #@0
    .prologue
    .line 2167
    const-string/jumbo v2, "setNotificationPolicy"

    #@3
    invoke-direct {p0, p1, v2}, Lcom/android/server/notification/NotificationManagerService$5;->enforcePolicyAccess(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 2168
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@9
    move-result-wide v0

    #@a
    .line 2170
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@c
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get23(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p2}, Lcom/android/server/notification/ZenModeHelper;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 2172
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@16
    .line 2166
    return-void

    #@17
    .line 2171
    :catchall_0
    move-exception v2

    #@18
    .line 2172
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1b
    .line 2171
    throw v2
.end method

.method public setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "granted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2143
    const-string/jumbo v2, "grant notification policy access"

    #@3
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    #@6
    .line 2144
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@9
    move-result-wide v0

    #@a
    .line 2146
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@c
    iget-object v3, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@e
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@f
    .line 2147
    :try_start_1
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@11
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mPolicyAccess:Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    #@13
    invoke-virtual {v2, p1, p2}, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;->put(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@17
    .line 2150
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1a
    .line 2142
    return-void

    #@1b
    .line 2146
    :catchall_0
    move-exception v2

    #@1c
    :try_start_3
    monitor-exit v3

    #@1d
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1e
    .line 2149
    :catchall_1
    move-exception v2

    #@1f
    .line 2150
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 2149
    throw v2
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z

    #@0
    .prologue
    .line 1417
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap17()V

    #@3
    .line 1419
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->setNotificationsEnabledForPackageImpl(Ljava/lang/String;IZ)V

    #@8
    .line 1420
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@a
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/RankingHelper;->setEnabled(Ljava/lang/String;IZ)V

    #@11
    .line 1421
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@13
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    #@16
    .line 1416
    return-void
.end method

.method public setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    .locals 12
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "keys"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, -0x1

    #@1
    .line 1680
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@4
    move-result-wide v2

    #@5
    .line 1682
    .local v2, "identity":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@7
    iget-object v8, v7, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@9
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@a
    .line 1683
    :try_start_1
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@c
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@f
    move-result-object v7

    #@10
    invoke-virtual {v7, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@13
    move-result-object v4

    #@14
    .line 1684
    .local v4, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz p2, :cond_6

    #@16
    .line 1685
    array-length v0, p2

    #@17
    .line 1686
    .local v0, "N":I
    const/4 v1, 0x0

    #@18
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    #@1a
    .line 1687
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@1c
    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    #@1e
    aget-object v9, p2, v1

    #@20
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v5

    #@24
    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    #@26
    .line 1688
    .local v5, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v5, :cond_1

    #@28
    .line 1686
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1689
    :cond_1
    iget-object v7, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@2d
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    #@30
    move-result v6

    #@31
    .line 1690
    .local v6, "userId":I
    iget v7, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    #@33
    if-eq v6, v7, :cond_2

    #@35
    if-eq v6, v11, :cond_2

    #@37
    .line 1691
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@39
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->-get21(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {v7, v6}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    #@40
    move-result v7

    #@41
    if-eqz v7, :cond_5

    #@43
    .line 1695
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->isSeen()Z

    #@46
    move-result v7

    #@47
    if-nez v7, :cond_0

    #@49
    .line 1696
    sget-boolean v7, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@4b
    if-eqz v7, :cond_3

    #@4d
    const-string/jumbo v7, "NotificationService"

    #@50
    new-instance v9, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v10, "Marking notification as seen "

    #@58
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v9

    #@5c
    aget-object v10, p2, v1

    #@5e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v9

    #@62
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v9

    #@66
    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@69
    .line 1697
    :cond_3
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@6b
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->-get3(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/usage/UsageStatsManagerInternal;

    #@6e
    move-result-object v7

    #@6f
    iget-object v9, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@71
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@74
    move-result-object v9

    #@75
    .line 1698
    if-ne v6, v11, :cond_4

    #@77
    const/4 v6, 0x0

    #@78
    .line 1700
    .end local v6    # "userId":I
    :cond_4
    const/4 v10, 0x7

    #@79
    .line 1697
    invoke-virtual {v7, v9, v6, v10}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    #@7c
    .line 1701
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->setSeen()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7f
    goto :goto_1

    #@80
    .line 1682
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v4    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v7

    #@81
    :try_start_2
    monitor-exit v8

    #@82
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@83
    .line 1706
    :catchall_1
    move-exception v7

    #@84
    .line 1707
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@87
    .line 1706
    throw v7

    #@88
    .line 1692
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v4    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .restart local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    .restart local v6    # "userId":I
    :cond_5
    :try_start_3
    new-instance v7, Ljava/lang/SecurityException;

    #@8a
    new-instance v9, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v10, "Disallowed call from listener: "

    #@92
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v9

    #@96
    .line 1693
    iget-object v10, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    #@98
    .line 1692
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v9

    #@9c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v9

    #@a0
    invoke-direct {v7, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@a3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a4
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v6    # "userId":I
    :cond_6
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@a5
    .line 1707
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@a8
    .line 1679
    return-void
.end method

.method public setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V
    .locals 3
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "trim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1839
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    #@4
    monitor-enter v2

    #@5
    .line 1840
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@7
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v0

    #@f
    .line 1841
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-nez v0, :cond_0

    #@11
    monitor-exit v2

    #@12
    return-void

    #@13
    .line 1842
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@15
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->setOnNotificationPostedTrimLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    monitor-exit v2

    #@1d
    .line 1838
    return-void

    #@1e
    .line 1839
    .end local v0    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :catchall_0
    move-exception v1

    #@1f
    monitor-exit v2

    #@20
    throw v1
.end method

.method public setPriority(Ljava/lang/String;II)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "priority"    # I

    #@0
    .prologue
    .line 1444
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap17()V

    #@3
    .line 1445
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@5
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/RankingHelper;->setPriority(Ljava/lang/String;II)V

    #@c
    .line 1446
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@e
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    #@11
    .line 1443
    return-void
.end method

.method public setVisibilityOverride(Ljava/lang/String;II)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "visibility"    # I

    #@0
    .prologue
    .line 1457
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-wrap17()V

    #@3
    .line 1458
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@5
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/RankingHelper;->setVisibilityOverride(Ljava/lang/String;II)V

    #@c
    .line 1459
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@e
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    #@11
    .line 1456
    return-void
.end method

.method public setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1859
    const-string/jumbo v2, "INotificationManager.setZenMode"

    #@3
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService$5;->enforceSystemOrSystemUIOrVolume(Ljava/lang/String;)V

    #@6
    .line 1860
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@9
    move-result-wide v0

    #@a
    .line 1862
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@c
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get23(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@f
    move-result-object v2

    #@10
    const/4 v3, 0x0

    #@11
    invoke-virtual {v2, p1, p2, v3, p3}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 1864
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@17
    .line 1858
    return-void

    #@18
    .line 1863
    :catchall_0
    move-exception v2

    #@19
    .line 1864
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1c
    .line 1863
    throw v2
.end method

.method public unregisterListener(Landroid/service/notification/INotificationListener;I)V
    .locals 1
    .param p1, "token"    # Landroid/service/notification/INotificationListener;
    .param p2, "userid"    # I

    #@0
    .prologue
    .line 1603
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->unregisterService(Landroid/os/IInterface;I)V

    #@9
    .line 1602
    return-void
.end method

.method public updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "automaticZenRule"    # Landroid/app/AutomaticZenRule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1897
    const-string/jumbo v0, "automaticZenRule is null"

    #@3
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1898
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    const-string/jumbo v1, "Name is null"

    #@d
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 1899
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, "Owner is null"

    #@17
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 1900
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    #@1d
    move-result-object v0

    #@1e
    const-string/jumbo v1, "ConditionId is null"

    #@21
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 1901
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@27
    move-result v0

    #@28
    const-string/jumbo v1, "updateAutomaticZenRule"

    #@2b
    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$5;->enforcePolicyAccess(ILjava/lang/String;)V

    #@2e
    .line 1903
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@30
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get23(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;

    #@33
    move-result-object v0

    #@34
    .line 1904
    const-string/jumbo v1, "updateAutomaticZenRule"

    #@37
    .line 1903
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/notification/ZenModeHelper;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Ljava/lang/String;)Z

    #@3a
    move-result v0

    #@3b
    return v0
.end method
