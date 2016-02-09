.class Lcom/android/server/print/PrintManagerService$PrintManagerImpl;
.super Landroid/print/IPrintManager$Stub;
.source "PrintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/PrintManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrintManagerImpl"
.end annotation


# static fields
.field private static final BACKGROUND_USER_ID:I = -0xa

.field private static final COMPONENT_NAME_SEPARATOR:C = ':'

.field private static final EXTRA_PRINT_SERVICE_COMPONENT_NAME:Ljava/lang/String; = "EXTRA_PRINT_SERVICE_COMPONENT_NAME"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/print/UserState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/print/PrintManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)Lcom/android/server/print/UserState;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->handleUserStarted(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->handleUserStopped(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 0
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->showEnableInstalledPrintServiceNotification(Landroid/content/ComponentName;Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/server/print/PrintManagerService;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/print/PrintManagerService;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->this$0:Lcom/android/server/print/PrintManagerService;

    #@2
    invoke-direct {p0}, Landroid/print/IPrintManager$Stub;-><init>()V

    #@5
    .line 102
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@c
    .line 108
    new-instance v0, Landroid/util/SparseArray;

    #@e
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    #@13
    .line 111
    iput-object p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    #@15
    .line 112
    const-string/jumbo v0, "user"

    #@18
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/os/UserManager;

    #@1e
    iput-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    #@20
    .line 113
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->registerContentObservers()V

    #@23
    .line 114
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->registerBroadcastReceivers()V

    #@26
    .line 110
    return-void
.end method

.method private getCurrentUserId()I
    .locals 3

    #@0
    .prologue
    .line 729
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 731
    .local v0, "identity":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result v2

    #@8
    .line 733
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@b
    .line 731
    return v2

    #@c
    .line 732
    :catchall_0
    move-exception v2

    #@d
    .line 733
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@10
    .line 732
    throw v2
.end method

.method private getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 622
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/print/UserState;

    #@8
    .line 623
    .local v0, "userState":Lcom/android/server/print/UserState;
    if-nez v0, :cond_0

    #@a
    .line 624
    new-instance v0, Lcom/android/server/print/UserState;

    #@c
    .end local v0    # "userState":Lcom/android/server/print/UserState;
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    #@e
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@10
    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/print/UserState;-><init>(Landroid/content/Context;ILjava/lang/Object;)V

    #@13
    .line 625
    .restart local v0    # "userState":Lcom/android/server/print/UserState;
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    #@15
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@18
    .line 627
    :cond_0
    return-object v0
.end method

.method private handleUserStarted(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 633
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;

    #@6
    invoke-direct {v1, p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@c
    .line 630
    return-void
.end method

.method private handleUserStopped(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 652
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;

    #@6
    invoke-direct {v1, p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@c
    .line 649
    return-void
.end method

.method private registerBroadcastReceivers()V
    .locals 5

    #@0
    .prologue
    .line 496
    new-instance v0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;

    #@2
    invoke-direct {v0, p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)V

    #@5
    .line 617
    .local v0, "monitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    #@7
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@e
    move-result-object v2

    #@f
    .line 618
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@11
    const/4 v4, 0x1

    #@12
    .line 617
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    #@15
    .line 495
    return-void
.end method

.method private registerContentObservers()V
    .locals 5

    #@0
    .prologue
    .line 470
    const-string/jumbo v2, "enabled_print_services"

    #@3
    .line 469
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    .line 471
    .local v0, "enabledPrintServicesUri":Landroid/net/Uri;
    new-instance v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;

    #@9
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;Landroid/os/Handler;Landroid/net/Uri;)V

    #@10
    .line 491
    .local v1, "observer":Landroid/database/ContentObserver;
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    #@12
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@15
    move-result-object v2

    #@16
    .line 492
    const/4 v3, 0x0

    #@17
    const/4 v4, -0x1

    #@18
    .line 491
    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@1b
    .line 468
    return-void
.end method

.method private resolveCallingAppEnforcingPermissions(I)I
    .locals 5
    .param p1, "appId"    # I

    #@0
    .prologue
    .line 684
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v1

    #@4
    .line 685
    .local v1, "callingUid":I
    if-eqz v1, :cond_0

    #@6
    const/16 v2, 0x3e8

    #@8
    if-ne v1, v2, :cond_1

    #@a
    .line 687
    :cond_0
    return p1

    #@b
    .line 686
    :cond_1
    const/16 v2, 0x7d0

    #@d
    if-eq v1, v2, :cond_0

    #@f
    .line 689
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    #@12
    move-result v0

    #@13
    .line 690
    .local v0, "callingAppId":I
    if-ne p1, v0, :cond_2

    #@15
    .line 691
    return p1

    #@16
    .line 693
    :cond_2
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    #@18
    .line 694
    const-string/jumbo v3, "com.android.printspooler.permission.ACCESS_ALL_PRINT_JOBS"

    #@1b
    .line 693
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_3

    #@21
    .line 696
    new-instance v2, Ljava/lang/SecurityException;

    #@23
    new-instance v3, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v4, "Call from app "

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    const-string/jumbo v4, " as app "

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    .line 697
    const-string/jumbo v4, " without com.android.printspooler.permission"

    #@41
    .line 696
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    .line 698
    const-string/jumbo v4, ".ACCESS_ALL_PRINT_JOBS"

    #@48
    .line 696
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@53
    throw v2

    #@54
    .line 700
    :cond_3
    return p1
.end method

.method private resolveCallingPackageNameEnforcingSecurity(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 714
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v3

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 715
    return-object v5

    #@8
    .line 717
    :cond_0
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@d
    move-result-object v3

    #@e
    .line 718
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@11
    move-result v4

    #@12
    .line 717
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    .line 719
    .local v2, "packages":[Ljava/lang/String;
    array-length v1, v2

    #@17
    .line 720
    .local v1, "packageCount":I
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@1a
    .line 721
    aget-object v3, v2, v0

    #@1c
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_1

    #@22
    .line 722
    return-object p1

    #@23
    .line 720
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 725
    :cond_2
    return-object v5
.end method

.method private resolveCallingProfileParentLocked(I)I
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 667
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    #@3
    move-result v3

    #@4
    if-eq p1, v3, :cond_1

    #@6
    .line 668
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@9
    move-result-wide v0

    #@a
    .line 670
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    #@c
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@f
    move-result-object v2

    #@10
    .line 671
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    #@12
    .line 672
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result v3

    #@1a
    .line 677
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1d
    .line 672
    return v3

    #@1e
    .line 674
    :cond_0
    const/16 v3, -0xa

    #@20
    .line 677
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@23
    .line 674
    return v3

    #@24
    .line 676
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    #@25
    .line 677
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@28
    .line 676
    throw v3

    #@29
    .line 680
    .end local v0    # "identity":J
    :cond_1
    return p1
.end method

.method private resolveCallingUserEnforcingPermissions(I)I
    .locals 9
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 705
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@7
    move-result v1

    #@8
    .line 706
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@b
    move-result v2

    #@c
    const-string/jumbo v6, ""

    #@f
    const/4 v4, 0x1

    #@10
    const/4 v5, 0x1

    #@11
    const/4 v7, 0x0

    #@12
    move v3, p1

    #@13
    .line 705
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result v0

    #@17
    return v0

    #@18
    .line 707
    :catch_0
    move-exception v8

    #@19
    .line 710
    .local v8, "re":Landroid/os/RemoteException;
    return p1
.end method

.method private showEnableInstalledPrintServiceNotification(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 16
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 739
    new-instance v7, Landroid/os/UserHandle;

    #@2
    move/from16 v0, p3

    #@4
    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    #@7
    .line 741
    .local v7, "userHandle":Landroid/os/UserHandle;
    new-instance v4, Landroid/content/Intent;

    #@9
    const-string/jumbo v2, "android.settings.ACTION_PRINT_SETTINGS"

    #@c
    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@f
    .line 742
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

    #@12
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@19
    .line 744
    move-object/from16 v0, p0

    #@1b
    iget-object v2, v0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    #@1d
    const/4 v3, 0x0

    #@1e
    .line 745
    const/high16 v5, 0x50000000

    #@20
    const/4 v6, 0x0

    #@21
    .line 744
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@24
    move-result-object v13

    #@25
    .line 748
    .local v13, "pendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    #@27
    iget-object v9, v0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    #@29
    .line 750
    .local v9, "builderContext":Landroid/content/Context;
    :try_start_0
    move-object/from16 v0, p0

    #@2b
    iget-object v2, v0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    #@2d
    move-object/from16 v0, p0

    #@2f
    iget-object v3, v0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    #@31
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    const/4 v5, 0x0

    #@36
    invoke-virtual {v2, v3, v5, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    move-result-object v9

    #@3a
    .line 755
    :goto_0
    new-instance v2, Landroid/app/Notification$Builder;

    #@3c
    invoke-direct {v2, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@3f
    .line 756
    const v3, 0x1080415

    #@42
    .line 755
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@45
    move-result-object v2

    #@46
    .line 757
    move-object/from16 v0, p0

    #@48
    iget-object v3, v0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    #@4a
    const/4 v5, 0x1

    #@4b
    new-array v5, v5, [Ljava/lang/Object;

    #@4d
    .line 758
    const/4 v6, 0x0

    #@4e
    aput-object p2, v5, v6

    #@50
    .line 757
    const v6, 0x1040547

    #@53
    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    .line 755
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@5a
    move-result-object v2

    #@5b
    .line 759
    move-object/from16 v0, p0

    #@5d
    iget-object v3, v0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    #@5f
    const v5, 0x1040548

    #@62
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@65
    move-result-object v3

    #@66
    .line 755
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@69
    move-result-object v2

    #@6a
    invoke-virtual {v2, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@6d
    move-result-object v2

    #@6e
    .line 761
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@71
    move-result-wide v14

    #@72
    .line 755
    invoke-virtual {v2, v14, v15}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@75
    move-result-object v2

    #@76
    .line 762
    const/4 v3, 0x1

    #@77
    .line 755
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    #@7a
    move-result-object v2

    #@7b
    .line 763
    const/4 v3, 0x1

    #@7c
    .line 755
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    #@7f
    move-result-object v2

    #@80
    .line 764
    move-object/from16 v0, p0

    #@82
    iget-object v3, v0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    #@84
    .line 765
    const v5, 0x1060059

    #@87
    .line 764
    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    #@8a
    move-result v3

    #@8b
    .line 755
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@8e
    move-result-object v8

    #@8f
    .line 767
    .local v8, "builder":Landroid/app/Notification$Builder;
    move-object/from16 v0, p0

    #@91
    iget-object v2, v0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    #@93
    .line 768
    const-string/jumbo v3, "notification"

    #@96
    .line 767
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@99
    move-result-object v11

    #@9a
    check-cast v11, Landroid/app/NotificationManager;

    #@9c
    .line 770
    .local v11, "notificationManager":Landroid/app/NotificationManager;
    new-instance v2, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getClass()Ljava/lang/Class;

    #@a4
    move-result-object v3

    #@a5
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a8
    move-result-object v3

    #@a9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v2

    #@ad
    const-string/jumbo v3, ":"

    #@b0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v2

    #@b4
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@b7
    move-result-object v3

    #@b8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v2

    #@bc
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v12

    #@c0
    .line 771
    .local v12, "notificationTag":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@c3
    move-result-object v2

    #@c4
    const/4 v3, 0x0

    #@c5
    invoke-virtual {v11, v12, v3, v2, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@c8
    .line 738
    return-void

    #@c9
    .line 752
    .end local v8    # "builder":Landroid/app/Notification$Builder;
    .end local v11    # "notificationManager":Landroid/app/NotificationManager;
    .end local v12    # "notificationTag":Ljava/lang/String;
    :catch_0
    move-exception v10

    #@ca
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0
.end method


# virtual methods
.method public addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;II)V
    .locals 8
    .param p1, "listener"    # Landroid/print/IPrintJobStateChangeListener;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 403
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@3
    move-result v3

    #@4
    .line 406
    .local v3, "resolvedUserId":I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v6

    #@7
    .line 408
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@a
    move-result v5

    #@b
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v7

    #@f
    if-eq v5, v7, :cond_0

    #@11
    monitor-exit v6

    #@12
    .line 409
    return-void

    #@13
    .line 411
    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    #@16
    move-result v2

    #@17
    .line 412
    .local v2, "resolvedAppId":I
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    move-result-object v4

    #@1b
    .local v4, "userState":Lcom/android/server/print/UserState;
    monitor-exit v6

    #@1c
    .line 414
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1f
    move-result-wide v0

    #@20
    .line 416
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v4, p1, v2}, Lcom/android/server/print/UserState;->addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@23
    .line 418
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@26
    .line 402
    return-void

    #@27
    .line 406
    .end local v0    # "identity":J
    .end local v2    # "resolvedAppId":I
    .end local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    #@28
    monitor-exit v6

    #@29
    throw v5

    #@2a
    .line 417
    .restart local v0    # "identity":J
    .restart local v2    # "resolvedAppId":I
    .restart local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    #@2b
    .line 418
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2e
    .line 417
    throw v5
.end method

.method public cancelPrintJob(Landroid/print/PrintJobId;II)V
    .locals 8
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 186
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@3
    move-result v3

    #@4
    .line 189
    .local v3, "resolvedUserId":I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v6

    #@7
    .line 191
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@a
    move-result v5

    #@b
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v7

    #@f
    if-eq v5, v7, :cond_0

    #@11
    monitor-exit v6

    #@12
    .line 192
    return-void

    #@13
    .line 194
    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    #@16
    move-result v2

    #@17
    .line 195
    .local v2, "resolvedAppId":I
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    move-result-object v4

    #@1b
    .local v4, "userState":Lcom/android/server/print/UserState;
    monitor-exit v6

    #@1c
    .line 197
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1f
    move-result-wide v0

    #@20
    .line 199
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v4, p1, v2}, Lcom/android/server/print/UserState;->cancelPrintJob(Landroid/print/PrintJobId;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@23
    .line 201
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@26
    .line 185
    return-void

    #@27
    .line 189
    .end local v0    # "identity":J
    .end local v2    # "resolvedAppId":I
    .end local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    #@28
    monitor-exit v6

    #@29
    throw v5

    #@2a
    .line 200
    .restart local v0    # "identity":J
    .restart local v2    # "resolvedAppId":I
    .restart local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    #@2b
    .line 201
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2e
    .line 200
    throw v5
.end method

.method public createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    .locals 7
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 267
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@3
    move-result v2

    #@4
    .line 269
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v5

    #@7
    .line 271
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@a
    move-result v4

    #@b
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v6

    #@f
    if-eq v4, v6, :cond_0

    #@11
    monitor-exit v5

    #@12
    .line 272
    return-void

    #@13
    .line 274
    :cond_0
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result-object v3

    #@17
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    #@18
    .line 276
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1b
    move-result-wide v0

    #@1c
    .line 278
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1f
    .line 280
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 266
    return-void

    #@23
    .line 269
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    #@24
    monitor-exit v5

    #@25
    throw v4

    #@26
    .line 279
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    #@27
    .line 280
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 279
    throw v4
.end method

.method public destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    .locals 7
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 287
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@3
    move-result v2

    #@4
    .line 289
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v5

    #@7
    .line 291
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@a
    move-result v4

    #@b
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v6

    #@f
    if-eq v4, v6, :cond_0

    #@11
    monitor-exit v5

    #@12
    .line 292
    return-void

    #@13
    .line 294
    :cond_0
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result-object v3

    #@17
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    #@18
    .line 296
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1b
    move-result-wide v0

    #@1c
    .line 298
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1f
    .line 300
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 286
    return-void

    #@23
    .line 289
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    #@24
    monitor-exit v5

    #@25
    throw v4

    #@26
    .line 299
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    #@27
    .line 300
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 299
    throw v4
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 444
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v6, "android.permission.DUMP"

    #@5
    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@8
    move-result v5

    #@9
    if-eqz v5, :cond_0

    #@b
    .line 446
    new-instance v5, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v6, "Permission Denial: can\'t dump PrintManager from from pid="

    #@13
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v5

    #@17
    .line 447
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v6

    #@1b
    .line 446
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    .line 448
    const-string/jumbo v6, ", uid="

    #@22
    .line 446
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    .line 448
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v6

    #@2a
    .line 446
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35
    .line 449
    return-void

    #@36
    .line 452
    :cond_0
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@38
    monitor-enter v6

    #@39
    .line 453
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3c
    move-result-wide v2

    #@3d
    .line 455
    .local v2, "identity":J
    :try_start_1
    const-string/jumbo v5, "PRINT MANAGER STATE (dumpsys print)"

    #@40
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@43
    .line 456
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    #@45
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@48
    move-result v4

    #@49
    .line 457
    .local v4, "userStateCount":I
    const/4 v0, 0x0

    #@4a
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    #@4c
    .line 458
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    #@4e
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@51
    move-result-object v1

    #@52
    check-cast v1, Lcom/android/server/print/UserState;

    #@54
    .line 459
    .local v1, "userState":Lcom/android/server/print/UserState;
    const-string/jumbo v5, ""

    #@57
    invoke-virtual {v1, p1, p2, v5}, Lcom/android/server/print/UserState;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@5a
    .line 460
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5d
    .line 457
    add-int/lit8 v0, v0, 0x1

    #@5f
    goto :goto_0

    #@60
    .line 463
    .end local v1    # "userState":Lcom/android/server/print/UserState;
    :cond_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@63
    monitor-exit v6

    #@64
    .line 443
    return-void

    #@65
    .line 462
    .end local v0    # "i":I
    .end local v4    # "userStateCount":I
    :catchall_0
    move-exception v5

    #@66
    .line 463
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@69
    .line 462
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@6a
    .line 452
    .end local v2    # "identity":J
    :catchall_1
    move-exception v5

    #@6b
    monitor-exit v6

    #@6c
    throw v5
.end method

.method public getEnabledPrintServices(I)Ljava/util/List;
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@3
    move-result v2

    #@4
    .line 230
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v5

    #@7
    .line 232
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@a
    move-result v4

    #@b
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v6

    #@f
    if-eq v4, v6, :cond_0

    #@11
    .line 233
    const/4 v4, 0x0

    #@12
    monitor-exit v5

    #@13
    return-object v4

    #@14
    .line 235
    :cond_0
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    move-result-object v3

    #@18
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    #@19
    .line 237
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1c
    move-result-wide v0

    #@1d
    .line 239
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/print/UserState;->getEnabledPrintServices()Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@20
    move-result-object v4

    #@21
    .line 241
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 239
    return-object v4

    #@25
    .line 230
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    #@26
    monitor-exit v5

    #@27
    throw v4

    #@28
    .line 240
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    #@29
    .line 241
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2c
    .line 240
    throw v4
.end method

.method public getInstalledPrintServices(I)Ljava/util/List;
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@3
    move-result v2

    #@4
    .line 249
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v5

    #@7
    .line 251
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@a
    move-result v4

    #@b
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v6

    #@f
    if-eq v4, v6, :cond_0

    #@11
    .line 252
    const/4 v4, 0x0

    #@12
    monitor-exit v5

    #@13
    return-object v4

    #@14
    .line 254
    :cond_0
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    move-result-object v3

    #@18
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    #@19
    .line 256
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1c
    move-result-wide v0

    #@1d
    .line 258
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/print/UserState;->getInstalledPrintServices()Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@20
    move-result-object v4

    #@21
    .line 260
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@24
    .line 258
    return-object v4

    #@25
    .line 249
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    #@26
    monitor-exit v5

    #@27
    throw v4

    #@28
    .line 259
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    #@29
    .line 260
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2c
    .line 259
    throw v4
.end method

.method public getPrintJobInfo(Landroid/print/PrintJobId;II)Landroid/print/PrintJobInfo;
    .locals 8
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 165
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@3
    move-result v3

    #@4
    .line 168
    .local v3, "resolvedUserId":I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v6

    #@7
    .line 170
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@a
    move-result v5

    #@b
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v7

    #@f
    if-eq v5, v7, :cond_0

    #@11
    .line 171
    const/4 v5, 0x0

    #@12
    monitor-exit v6

    #@13
    return-object v5

    #@14
    .line 173
    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    #@17
    move-result v2

    #@18
    .line 174
    .local v2, "resolvedAppId":I
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    move-result-object v4

    #@1c
    .local v4, "userState":Lcom/android/server/print/UserState;
    monitor-exit v6

    #@1d
    .line 176
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@20
    move-result-wide v0

    #@21
    .line 178
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v4, p1, v2}, Lcom/android/server/print/UserState;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@24
    move-result-object v5

    #@25
    .line 180
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@28
    .line 178
    return-object v5

    #@29
    .line 168
    .end local v0    # "identity":J
    .end local v2    # "resolvedAppId":I
    .end local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    #@2a
    monitor-exit v6

    #@2b
    throw v5

    #@2c
    .line 179
    .restart local v0    # "identity":J
    .restart local v2    # "resolvedAppId":I
    .restart local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    #@2d
    .line 180
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@30
    .line 179
    throw v5
.end method

.method public getPrintJobInfos(II)Ljava/util/List;
    .locals 8
    .param p1, "appId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 144
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@3
    move-result v3

    #@4
    .line 147
    .local v3, "resolvedUserId":I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v6

    #@7
    .line 149
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@a
    move-result v5

    #@b
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v7

    #@f
    if-eq v5, v7, :cond_0

    #@11
    .line 150
    const/4 v5, 0x0

    #@12
    monitor-exit v6

    #@13
    return-object v5

    #@14
    .line 152
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    #@17
    move-result v2

    #@18
    .line 153
    .local v2, "resolvedAppId":I
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    move-result-object v4

    #@1c
    .local v4, "userState":Lcom/android/server/print/UserState;
    monitor-exit v6

    #@1d
    .line 155
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@20
    move-result-wide v0

    #@21
    .line 157
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v4, v2}, Lcom/android/server/print/UserState;->getPrintJobInfos(I)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@24
    move-result-object v5

    #@25
    .line 159
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@28
    .line 157
    return-object v5

    #@29
    .line 147
    .end local v0    # "identity":J
    .end local v2    # "resolvedAppId":I
    .end local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    #@2a
    monitor-exit v6

    #@2b
    throw v5

    #@2c
    .line 158
    .restart local v0    # "identity":J
    .restart local v2    # "resolvedAppId":I
    .restart local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    #@2d
    .line 159
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@30
    .line 158
    throw v5
.end method

.method public print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;II)Landroid/os/Bundle;
    .locals 9
    .param p1, "printJobName"    # Ljava/lang/String;
    .param p2, "adapter"    # Landroid/print/IPrintDocumentAdapter;
    .param p3, "attributes"    # Landroid/print/PrintAttributes;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "appId"    # I
    .param p6, "userId"    # I

    #@0
    .prologue
    .line 120
    invoke-direct {p0, p6}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@3
    move-result v8

    #@4
    .line 124
    .local v8, "resolvedUserId":I
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 126
    :try_start_0
    invoke-direct {p0, v8}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@a
    move-result v1

    #@b
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v3

    #@f
    if-eq v1, v3, :cond_0

    #@11
    .line 127
    const/4 v1, 0x0

    #@12
    monitor-exit v2

    #@13
    return-object v1

    #@14
    .line 129
    :cond_0
    :try_start_1
    invoke-direct {p0, p5}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    #@17
    move-result v5

    #@18
    .line 130
    .local v5, "resolvedAppId":I
    invoke-direct {p0, p4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingPackageNameEnforcingSecurity(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    .line 131
    .local v4, "resolvedPackageName":Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    move-result-object v0

    #@20
    .local v0, "userState":Lcom/android/server/print/UserState;
    monitor-exit v2

    #@21
    .line 133
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@24
    move-result-wide v6

    #@25
    .local v6, "identity":J
    move-object v1, p1

    #@26
    move-object v2, p2

    #@27
    move-object v3, p3

    #@28
    .line 135
    :try_start_2
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/print/UserState;->print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2b
    move-result-object v1

    #@2c
    .line 138
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2f
    .line 135
    return-object v1

    #@30
    .line 124
    .end local v0    # "userState":Lcom/android/server/print/UserState;
    .end local v4    # "resolvedPackageName":Ljava/lang/String;
    .end local v5    # "resolvedAppId":I
    .end local v6    # "identity":J
    :catchall_0
    move-exception v1

    #@31
    monitor-exit v2

    #@32
    throw v1

    #@33
    .line 137
    .restart local v0    # "userState":Lcom/android/server/print/UserState;
    .restart local v4    # "resolvedPackageName":Ljava/lang/String;
    .restart local v5    # "resolvedAppId":I
    .restart local v6    # "identity":J
    :catchall_1
    move-exception v1

    #@34
    .line 138
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@37
    .line 137
    throw v1
.end method

.method public removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    .locals 7
    .param p1, "listener"    # Landroid/print/IPrintJobStateChangeListener;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 425
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@3
    move-result v2

    #@4
    .line 427
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v5

    #@7
    .line 429
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@a
    move-result v4

    #@b
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v6

    #@f
    if-eq v4, v6, :cond_0

    #@11
    monitor-exit v5

    #@12
    .line 430
    return-void

    #@13
    .line 432
    :cond_0
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result-object v3

    #@17
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    #@18
    .line 434
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1b
    move-result-wide v0

    #@1c
    .line 436
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1f
    .line 438
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 424
    return-void

    #@23
    .line 427
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    #@24
    monitor-exit v5

    #@25
    throw v4

    #@26
    .line 437
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    #@27
    .line 438
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 437
    throw v4
.end method

.method public restartPrintJob(Landroid/print/PrintJobId;II)V
    .locals 8
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 207
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@3
    move-result v3

    #@4
    .line 210
    .local v3, "resolvedUserId":I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v6

    #@7
    .line 212
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@a
    move-result v5

    #@b
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v7

    #@f
    if-eq v5, v7, :cond_0

    #@11
    monitor-exit v6

    #@12
    .line 213
    return-void

    #@13
    .line 215
    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    #@16
    move-result v2

    #@17
    .line 216
    .local v2, "resolvedAppId":I
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    move-result-object v4

    #@1b
    .local v4, "userState":Lcom/android/server/print/UserState;
    monitor-exit v6

    #@1c
    .line 218
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1f
    move-result-wide v0

    #@20
    .line 220
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v4, p1, v2}, Lcom/android/server/print/UserState;->restartPrintJob(Landroid/print/PrintJobId;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@23
    .line 222
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@26
    .line 206
    return-void

    #@27
    .line 210
    .end local v0    # "identity":J
    .end local v2    # "resolvedAppId":I
    .end local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    #@28
    monitor-exit v6

    #@29
    throw v5

    #@2a
    .line 221
    .restart local v0    # "identity":J
    .restart local v2    # "resolvedAppId":I
    .restart local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    #@2b
    .line 222
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2e
    .line 221
    throw v5
.end method

.method public startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;I)V
    .locals 7
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrinterDiscoveryObserver;",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 307
    .local p2, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@3
    move-result v2

    #@4
    .line 309
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v5

    #@7
    .line 311
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@a
    move-result v4

    #@b
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v6

    #@f
    if-eq v4, v6, :cond_0

    #@11
    monitor-exit v5

    #@12
    .line 312
    return-void

    #@13
    .line 314
    :cond_0
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result-object v3

    #@17
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    #@18
    .line 316
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1b
    move-result-wide v0

    #@1c
    .line 318
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1, p2}, Lcom/android/server/print/UserState;->startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1f
    .line 320
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 306
    return-void

    #@23
    .line 309
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    #@24
    monitor-exit v5

    #@25
    throw v4

    #@26
    .line 319
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    #@27
    .line 320
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 319
    throw v4
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;I)V
    .locals 7
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 364
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@3
    move-result v2

    #@4
    .line 366
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v5

    #@7
    .line 368
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@a
    move-result v4

    #@b
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v6

    #@f
    if-eq v4, v6, :cond_0

    #@11
    monitor-exit v5

    #@12
    .line 369
    return-void

    #@13
    .line 371
    :cond_0
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result-object v3

    #@17
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    #@18
    .line 373
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1b
    move-result-wide v0

    #@1c
    .line 375
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->startPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1f
    .line 377
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 363
    return-void

    #@23
    .line 366
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    #@24
    monitor-exit v5

    #@25
    throw v4

    #@26
    .line 376
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    #@27
    .line 377
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 376
    throw v4
.end method

.method public stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;I)V
    .locals 7
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 326
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@3
    move-result v2

    #@4
    .line 328
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v5

    #@7
    .line 330
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@a
    move-result v4

    #@b
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v6

    #@f
    if-eq v4, v6, :cond_0

    #@11
    monitor-exit v5

    #@12
    .line 331
    return-void

    #@13
    .line 333
    :cond_0
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result-object v3

    #@17
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    #@18
    .line 335
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1b
    move-result-wide v0

    #@1c
    .line 337
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1f
    .line 339
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 325
    return-void

    #@23
    .line 328
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    #@24
    monitor-exit v5

    #@25
    throw v4

    #@26
    .line 338
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    #@27
    .line 339
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 338
    throw v4
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;I)V
    .locals 7
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 383
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@3
    move-result v2

    #@4
    .line 385
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v5

    #@7
    .line 387
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@a
    move-result v4

    #@b
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v6

    #@f
    if-eq v4, v6, :cond_0

    #@11
    monitor-exit v5

    #@12
    .line 388
    return-void

    #@13
    .line 390
    :cond_0
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result-object v3

    #@17
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    #@18
    .line 392
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1b
    move-result-wide v0

    #@1c
    .line 394
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->stopPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1f
    .line 396
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 382
    return-void

    #@23
    .line 385
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    #@24
    monitor-exit v5

    #@25
    throw v4

    #@26
    .line 395
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    #@27
    .line 396
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 395
    throw v4
.end method

.method public validatePrinters(Ljava/util/List;I)V
    .locals 7
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 345
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@3
    move-result v2

    #@4
    .line 347
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v5

    #@7
    .line 349
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@a
    move-result v4

    #@b
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v6

    #@f
    if-eq v4, v6, :cond_0

    #@11
    monitor-exit v5

    #@12
    .line 350
    return-void

    #@13
    .line 352
    :cond_0
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(I)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    move-result-object v3

    #@17
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    #@18
    .line 354
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1b
    move-result-wide v0

    #@1c
    .line 356
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->validatePrinters(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1f
    .line 358
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 344
    return-void

    #@23
    .line 347
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    #@24
    monitor-exit v5

    #@25
    throw v4

    #@26
    .line 357
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    #@27
    .line 358
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 357
    throw v4
.end method
