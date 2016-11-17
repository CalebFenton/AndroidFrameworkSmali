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

.method static synthetic -get2(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZ)Lcom/android/server/print/UserState;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "lowPriority"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

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
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->handleUserStopped(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->handleUserUnlocked(I)V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/server/print/PrintManagerService;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/print/PrintManagerService;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->this$0:Lcom/android/server/print/PrintManagerService;

    #@2
    invoke-direct {p0}, Landroid/print/IPrintManager$Stub;-><init>()V

    #@5
    .line 101
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@c
    .line 107
    new-instance v0, Landroid/util/SparseArray;

    #@e
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    #@13
    .line 110
    iput-object p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    #@15
    .line 111
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
    .line 112
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->registerContentObservers()V

    #@23
    .line 113
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->registerBroadcastReceivers()V

    #@26
    .line 109
    return-void
.end method

.method private getCurrentUserId()I
    .locals 3

    #@0
    .prologue
    .line 932
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 934
    .local v0, "identity":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result v2

    #@8
    .line 936
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@b
    .line 934
    return v2

    #@c
    .line 935
    :catchall_0
    move-exception v2

    #@d
    .line 936
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@10
    .line 935
    throw v2
.end method

.method private getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    .locals 4
    .param p1, "userId"    # I
    .param p2, "lowPriority"    # Z

    #@0
    .prologue
    .line 815
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    #@2
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 816
    new-instance v1, Ljava/lang/IllegalStateException;

    #@a
    .line 817
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "User "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    const-string/jumbo v3, " must be unlocked for printing to be available"

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 816
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1

    #@29
    .line 820
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    #@2b
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Lcom/android/server/print/UserState;

    #@31
    .line 821
    .local v0, "userState":Lcom/android/server/print/UserState;
    if-nez v0, :cond_1

    #@33
    .line 822
    new-instance v0, Lcom/android/server/print/UserState;

    #@35
    .end local v0    # "userState":Lcom/android/server/print/UserState;
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    #@37
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@39
    invoke-direct {v0, v1, p1, v2, p2}, Lcom/android/server/print/UserState;-><init>(Landroid/content/Context;ILjava/lang/Object;Z)V

    #@3c
    .line 823
    .restart local v0    # "userState":Lcom/android/server/print/UserState;
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    #@3e
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@41
    .line 826
    :cond_1
    if-nez p2, :cond_2

    #@43
    .line 827
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->increasePriority()V

    #@46
    .line 830
    :cond_2
    return-object v0
.end method

.method private handleUserStopped(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 857
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
    .line 854
    return-void
.end method

.method private handleUserUnlocked(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 836
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
    .line 833
    return-void
.end method

.method private registerBroadcastReceivers()V
    .locals 5

    #@0
    .prologue
    .line 681
    new-instance v0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;

    #@2
    invoke-direct {v0, p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)V

    #@5
    .line 810
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
    .line 811
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@11
    const/4 v4, 0x1

    #@12
    .line 810
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    #@15
    .line 680
    return-void
.end method

.method private registerContentObservers()V
    .locals 5

    #@0
    .prologue
    .line 658
    const-string/jumbo v2, "disabled_print_services"

    #@3
    .line 657
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    .line 659
    .local v0, "enabledPrintServicesUri":Landroid/net/Uri;
    new-instance v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;

    #@9
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;Landroid/os/Handler;Landroid/net/Uri;)V

    #@10
    .line 676
    .local v1, "observer":Landroid/database/ContentObserver;
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    #@12
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@15
    move-result-object v2

    #@16
    .line 677
    const/4 v3, 0x0

    #@17
    const/4 v4, -0x1

    #@18
    .line 676
    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@1b
    .line 656
    return-void
.end method

.method private resolveCallingAppEnforcingPermissions(I)I
    .locals 5
    .param p1, "appId"    # I

    #@0
    .prologue
    .line 889
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v1

    #@4
    .line 890
    .local v1, "callingUid":I
    if-eqz v1, :cond_0

    #@6
    const/16 v2, 0x3e8

    #@8
    if-ne v1, v2, :cond_1

    #@a
    .line 892
    :cond_0
    return p1

    #@b
    .line 891
    :cond_1
    const/16 v2, 0x7d0

    #@d
    if-eq v1, v2, :cond_0

    #@f
    .line 894
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    #@12
    move-result v0

    #@13
    .line 895
    .local v0, "callingAppId":I
    if-ne p1, v0, :cond_2

    #@15
    .line 896
    return p1

    #@16
    .line 898
    :cond_2
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    #@18
    .line 899
    const-string/jumbo v3, "com.android.printspooler.permission.ACCESS_ALL_PRINT_JOBS"

    #@1b
    .line 898
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_3

    #@21
    .line 901
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
    .line 902
    const-string/jumbo v4, " without com.android.printspooler.permission"

    #@41
    .line 901
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    .line 903
    const-string/jumbo v4, ".ACCESS_ALL_PRINT_JOBS"

    #@48
    .line 901
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
    .line 905
    :cond_3
    return p1
.end method

.method private resolveCallingPackageNameEnforcingSecurity(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 920
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v3

    #@6
    .line 921
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@9
    move-result v4

    #@a
    .line 920
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    .line 922
    .local v2, "packages":[Ljava/lang/String;
    array-length v1, v2

    #@f
    .line 923
    .local v1, "packageCount":I
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@12
    .line 924
    aget-object v3, v2, v0

    #@14
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 925
    return-object p1

    #@1b
    .line 923
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 928
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@20
    const-string/jumbo v4, "packageName has to belong to the caller"

    #@23
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v3
.end method

.method private resolveCallingProfileParentLocked(I)I
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 872
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    #@3
    move-result v3

    #@4
    if-eq p1, v3, :cond_1

    #@6
    .line 873
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@9
    move-result-wide v0

    #@a
    .line 875
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    #@c
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@f
    move-result-object v2

    #@10
    .line 876
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    #@12
    .line 877
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
    .line 882
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1d
    .line 877
    return v3

    #@1e
    .line 879
    :cond_0
    const/16 v3, -0xa

    #@20
    .line 882
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@23
    .line 879
    return v3

    #@24
    .line 881
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    #@25
    .line 882
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@28
    .line 881
    throw v3

    #@29
    .line 885
    .end local v0    # "identity":J
    :cond_1
    return p1
.end method

.method private resolveCallingUserEnforcingPermissions(I)I
    .locals 9
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 910
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@7
    move-result v1

    #@8
    .line 911
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
    .line 910
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result v0

    #@17
    return v0

    #@18
    .line 912
    :catch_0
    move-exception v8

    #@19
    .line 915
    .local v8, "re":Landroid/os/RemoteException;
    return p1
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
    .line 494
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object p1

    #@4
    .end local p1    # "listener":Landroid/print/IPrintJobStateChangeListener;
    check-cast p1, Landroid/print/IPrintJobStateChangeListener;

    #@6
    .line 496
    .restart local p1    # "listener":Landroid/print/IPrintJobStateChangeListener;
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@9
    move-result v3

    #@a
    .line 499
    .local v3, "resolvedUserId":I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@c
    monitor-enter v6

    #@d
    .line 501
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@10
    move-result v5

    #@11
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v7

    #@15
    if-eq v5, v7, :cond_0

    #@17
    monitor-exit v6

    #@18
    .line 502
    return-void

    #@19
    .line 504
    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    #@1c
    move-result v2

    #@1d
    .line 505
    .local v2, "resolvedAppId":I
    const/4 v5, 0x0

    #@1e
    invoke-direct {p0, v3, v5}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    move-result-object v4

    #@22
    .local v4, "userState":Lcom/android/server/print/UserState;
    monitor-exit v6

    #@23
    .line 507
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@26
    move-result-wide v0

    #@27
    .line 509
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v4, p1, v2}, Lcom/android/server/print/UserState;->addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2a
    .line 511
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2d
    .line 493
    return-void

    #@2e
    .line 499
    .end local v0    # "identity":J
    .end local v2    # "resolvedAppId":I
    .end local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    #@2f
    monitor-exit v6

    #@30
    throw v5

    #@31
    .line 510
    .restart local v0    # "identity":J
    .restart local v2    # "resolvedAppId":I
    .restart local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    #@32
    .line 511
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@35
    .line 510
    throw v5
.end method

.method public addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;I)V
    .locals 7
    .param p1, "listener"    # Landroid/printservice/recommendation/IRecommendationsChangeListener;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 585
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object p1

    #@4
    .end local p1    # "listener":Landroid/printservice/recommendation/IRecommendationsChangeListener;
    check-cast p1, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    #@6
    .line 587
    .restart local p1    # "listener":Landroid/printservice/recommendation/IRecommendationsChangeListener;
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@9
    move-result v2

    #@a
    .line 589
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@c
    monitor-enter v5

    #@d
    .line 591
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@10
    move-result v4

    #@11
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v6

    #@15
    if-eq v4, v6, :cond_0

    #@17
    monitor-exit v5

    #@18
    .line 592
    return-void

    #@19
    .line 594
    :cond_0
    const/4 v4, 0x0

    #@1a
    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    move-result-object v3

    #@1e
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    #@1f
    .line 596
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@22
    move-result-wide v0

    #@23
    .line 598
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 600
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 584
    return-void

    #@2a
    .line 589
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    #@2b
    monitor-exit v5

    #@2c
    throw v4

    #@2d
    .line 599
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    #@2e
    .line 600
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 599
    throw v4
.end method

.method public addPrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;I)V
    .locals 7
    .param p1, "listener"    # Landroid/print/IPrintServicesChangeListener;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 540
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object p1

    #@4
    .end local p1    # "listener":Landroid/print/IPrintServicesChangeListener;
    check-cast p1, Landroid/print/IPrintServicesChangeListener;

    #@6
    .line 542
    .restart local p1    # "listener":Landroid/print/IPrintServicesChangeListener;
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@9
    move-result v2

    #@a
    .line 544
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@c
    monitor-enter v5

    #@d
    .line 546
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@10
    move-result v4

    #@11
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v6

    #@15
    if-eq v4, v6, :cond_0

    #@17
    monitor-exit v5

    #@18
    .line 547
    return-void

    #@19
    .line 549
    :cond_0
    const/4 v4, 0x0

    #@1a
    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    move-result-object v3

    #@1e
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    #@1f
    .line 551
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@22
    move-result-wide v0

    #@23
    .line 553
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->addPrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 555
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 539
    return-void

    #@2a
    .line 544
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    #@2b
    monitor-exit v5

    #@2c
    throw v4

    #@2d
    .line 554
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    #@2e
    .line 555
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 554
    throw v4
.end method

.method public cancelPrintJob(Landroid/print/PrintJobId;II)V
    .locals 8
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 214
    if-nez p1, :cond_0

    #@2
    .line 215
    return-void

    #@3
    .line 218
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@6
    move-result v3

    #@7
    .line 221
    .local v3, "resolvedUserId":I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v6

    #@a
    .line 223
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@d
    move-result v5

    #@e
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result v7

    #@12
    if-eq v5, v7, :cond_1

    #@14
    monitor-exit v6

    #@15
    .line 224
    return-void

    #@16
    .line 226
    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    #@19
    move-result v2

    #@1a
    .line 227
    .local v2, "resolvedAppId":I
    const/4 v5, 0x0

    #@1b
    invoke-direct {p0, v3, v5}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    move-result-object v4

    #@1f
    .local v4, "userState":Lcom/android/server/print/UserState;
    monitor-exit v6

    #@20
    .line 229
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@23
    move-result-wide v0

    #@24
    .line 231
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v4, p1, v2}, Lcom/android/server/print/UserState;->cancelPrintJob(Landroid/print/PrintJobId;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@27
    .line 233
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 213
    return-void

    #@2b
    .line 221
    .end local v0    # "identity":J
    .end local v2    # "resolvedAppId":I
    .end local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    #@2c
    monitor-exit v6

    #@2d
    throw v5

    #@2e
    .line 232
    .restart local v0    # "identity":J
    .restart local v2    # "resolvedAppId":I
    .restart local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    #@2f
    .line 233
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@32
    .line 232
    throw v5
.end method

.method public createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    .locals 7
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 340
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object p1

    #@4
    .end local p1    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    check-cast p1, Landroid/print/IPrinterDiscoveryObserver;

    #@6
    .line 342
    .restart local p1    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@9
    move-result v2

    #@a
    .line 344
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@c
    monitor-enter v5

    #@d
    .line 346
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@10
    move-result v4

    #@11
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v6

    #@15
    if-eq v4, v6, :cond_0

    #@17
    monitor-exit v5

    #@18
    .line 347
    return-void

    #@19
    .line 349
    :cond_0
    const/4 v4, 0x0

    #@1a
    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    move-result-object v3

    #@1e
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    #@1f
    .line 351
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@22
    move-result-wide v0

    #@23
    .line 353
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 355
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 339
    return-void

    #@2a
    .line 344
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    #@2b
    monitor-exit v5

    #@2c
    throw v4

    #@2d
    .line 354
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    #@2e
    .line 355
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 354
    throw v4
.end method

.method public destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    .locals 7
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 362
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object p1

    #@4
    .end local p1    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    check-cast p1, Landroid/print/IPrinterDiscoveryObserver;

    #@6
    .line 364
    .restart local p1    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@9
    move-result v2

    #@a
    .line 366
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@c
    monitor-enter v5

    #@d
    .line 368
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@10
    move-result v4

    #@11
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v6

    #@15
    if-eq v4, v6, :cond_0

    #@17
    monitor-exit v5

    #@18
    .line 369
    return-void

    #@19
    .line 371
    :cond_0
    const/4 v4, 0x0

    #@1a
    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    move-result-object v3

    #@1e
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    #@1f
    .line 373
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@22
    move-result-wide v0

    #@23
    .line 375
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 377
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 361
    return-void

    #@2a
    .line 366
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    #@2b
    monitor-exit v5

    #@2c
    throw v4

    #@2d
    .line 376
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    #@2e
    .line 377
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 376
    throw v4
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 629
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object p1

    #@4
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    check-cast p1, Ljava/io/FileDescriptor;

    #@6
    .line 630
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object p2

    #@a
    .end local p2    # "pw":Ljava/io/PrintWriter;
    check-cast p2, Ljava/io/PrintWriter;

    #@c
    .line 632
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    #@e
    const-string/jumbo v6, "android.permission.DUMP"

    #@11
    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_0

    #@17
    .line 634
    new-instance v5, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v6, "Permission Denial: can\'t dump PrintManager from from pid="

    #@1f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    .line 635
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@26
    move-result v6

    #@27
    .line 634
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    .line 636
    const-string/jumbo v6, ", uid="

    #@2e
    .line 634
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    .line 636
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@35
    move-result v6

    #@36
    .line 634
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@41
    .line 637
    return-void

    #@42
    .line 640
    :cond_0
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@44
    monitor-enter v6

    #@45
    .line 641
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@48
    move-result-wide v2

    #@49
    .line 643
    .local v2, "identity":J
    :try_start_1
    const-string/jumbo v5, "PRINT MANAGER STATE (dumpsys print)"

    #@4c
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4f
    .line 644
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    #@51
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@54
    move-result v4

    #@55
    .line 645
    .local v4, "userStateCount":I
    const/4 v0, 0x0

    #@56
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    #@58
    .line 646
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    #@5a
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@5d
    move-result-object v1

    #@5e
    check-cast v1, Lcom/android/server/print/UserState;

    #@60
    .line 647
    .local v1, "userState":Lcom/android/server/print/UserState;
    const-string/jumbo v5, ""

    #@63
    invoke-virtual {v1, p1, p2, v5}, Lcom/android/server/print/UserState;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@66
    .line 648
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@69
    .line 645
    add-int/lit8 v0, v0, 0x1

    #@6b
    goto :goto_0

    #@6c
    .line 651
    .end local v1    # "userState":Lcom/android/server/print/UserState;
    :cond_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@6f
    monitor-exit v6

    #@70
    .line 628
    return-void

    #@71
    .line 650
    .end local v0    # "i":I
    .end local v4    # "userStateCount":I
    :catchall_0
    move-exception v5

    #@72
    .line 651
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@75
    .line 650
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@76
    .line 640
    .end local v2    # "identity":J
    :catchall_1
    move-exception v5

    #@77
    monitor-exit v6

    #@78
    throw v5
.end method

.method public getCustomPrinterIcon(Landroid/print/PrinterId;I)Landroid/graphics/drawable/Icon;
    .locals 7
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 193
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object p1

    #@4
    .end local p1    # "printerId":Landroid/print/PrinterId;
    check-cast p1, Landroid/print/PrinterId;

    #@6
    .line 195
    .restart local p1    # "printerId":Landroid/print/PrinterId;
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@9
    move-result v2

    #@a
    .line 197
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@c
    monitor-enter v5

    #@d
    .line 199
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@10
    move-result v4

    #@11
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v6

    #@15
    if-eq v4, v6, :cond_0

    #@17
    .line 200
    const/4 v4, 0x0

    #@18
    monitor-exit v5

    #@19
    return-object v4

    #@1a
    .line 202
    :cond_0
    const/4 v4, 0x0

    #@1b
    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    move-result-object v3

    #@1f
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    #@20
    .line 204
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@23
    move-result-wide v0

    #@24
    .line 206
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@27
    move-result-object v4

    #@28
    .line 208
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2b
    .line 206
    return-object v4

    #@2c
    .line 197
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    #@2d
    monitor-exit v5

    #@2e
    throw v4

    #@2f
    .line 207
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    #@30
    .line 208
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@33
    .line 207
    throw v4
.end method

.method public getPrintJobInfo(Landroid/print/PrintJobId;II)Landroid/print/PrintJobInfo;
    .locals 9
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 168
    if-nez p1, :cond_0

    #@3
    .line 169
    return-object v8

    #@4
    .line 172
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@7
    move-result v3

    #@8
    .line 175
    .local v3, "resolvedUserId":I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@a
    monitor-enter v6

    #@b
    .line 177
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@e
    move-result v5

    #@f
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v7

    #@13
    if-eq v5, v7, :cond_1

    #@15
    monitor-exit v6

    #@16
    .line 178
    return-object v8

    #@17
    .line 180
    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    #@1a
    move-result v2

    #@1b
    .line 181
    .local v2, "resolvedAppId":I
    const/4 v5, 0x0

    #@1c
    invoke-direct {p0, v3, v5}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    move-result-object v4

    #@20
    .local v4, "userState":Lcom/android/server/print/UserState;
    monitor-exit v6

    #@21
    .line 183
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@24
    move-result-wide v0

    #@25
    .line 185
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v4, p1, v2}, Lcom/android/server/print/UserState;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@28
    move-result-object v5

    #@29
    .line 187
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2c
    .line 185
    return-object v5

    #@2d
    .line 175
    .end local v0    # "identity":J
    .end local v2    # "resolvedAppId":I
    .end local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    #@2e
    monitor-exit v6

    #@2f
    throw v5

    #@30
    .line 186
    .restart local v0    # "identity":J
    .restart local v2    # "resolvedAppId":I
    .restart local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    #@31
    .line 187
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@34
    .line 186
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
    .line 147
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@3
    move-result v3

    #@4
    .line 150
    .local v3, "resolvedUserId":I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v6

    #@7
    .line 152
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
    .line 153
    const/4 v5, 0x0

    #@12
    monitor-exit v6

    #@13
    return-object v5

    #@14
    .line 155
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    #@17
    move-result v2

    #@18
    .line 156
    .local v2, "resolvedAppId":I
    const/4 v5, 0x0

    #@19
    invoke-direct {p0, v3, v5}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    move-result-object v4

    #@1d
    .local v4, "userState":Lcom/android/server/print/UserState;
    monitor-exit v6

    #@1e
    .line 158
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@21
    move-result-wide v0

    #@22
    .line 160
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v4, v2}, Lcom/android/server/print/UserState;->getPrintJobInfos(I)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@25
    move-result-object v5

    #@26
    .line 162
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 160
    return-object v5

    #@2a
    .line 150
    .end local v0    # "identity":J
    .end local v2    # "resolvedAppId":I
    .end local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    #@2b
    monitor-exit v6

    #@2c
    throw v5

    #@2d
    .line 161
    .restart local v0    # "identity":J
    .restart local v2    # "resolvedAppId":I
    .restart local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    #@2e
    .line 162
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 161
    throw v5
.end method

.method public getPrintServiceRecommendations(I)Ljava/util/List;
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@3
    move-result v2

    #@4
    .line 322
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v5

    #@7
    .line 324
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
    .line 325
    const/4 v4, 0x0

    #@12
    monitor-exit v5

    #@13
    return-object v4

    #@14
    .line 327
    :cond_0
    const/4 v4, 0x0

    #@15
    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    move-result-object v3

    #@19
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    #@1a
    .line 329
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1d
    move-result-wide v0

    #@1e
    .line 331
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/print/UserState;->getPrintServiceRecommendations()Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@21
    move-result-object v4

    #@22
    .line 333
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@25
    .line 331
    return-object v4

    #@26
    .line 322
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    #@27
    monitor-exit v5

    #@28
    throw v4

    #@29
    .line 332
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    #@2a
    .line 333
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2d
    .line 332
    throw v4
.end method

.method public getPrintServices(II)Ljava/util/List;
    .locals 7
    .param p1, "selectionFlags"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 265
    const/4 v4, 0x3

    #@1
    .line 264
    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    #@4
    .line 267
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@7
    move-result v2

    #@8
    .line 269
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@a
    monitor-enter v5

    #@b
    .line 271
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@e
    move-result v4

    #@f
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v6

    #@13
    if-eq v4, v6, :cond_0

    #@15
    .line 272
    const/4 v4, 0x0

    #@16
    monitor-exit v5

    #@17
    return-object v4

    #@18
    .line 274
    :cond_0
    const/4 v4, 0x0

    #@19
    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    move-result-object v3

    #@1d
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    #@1e
    .line 276
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@21
    move-result-wide v0

    #@22
    .line 278
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->getPrintServices(I)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@25
    move-result-object v4

    #@26
    .line 280
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 278
    return-object v4

    #@2a
    .line 269
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    #@2b
    monitor-exit v5

    #@2c
    throw v4

    #@2d
    .line 279
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    #@2e
    .line 280
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 279
    throw v4
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
    .line 119
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object p1

    #@4
    .end local p1    # "printJobName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    #@6
    .line 120
    .restart local p1    # "printJobName":Ljava/lang/String;
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object p2

    #@a
    .end local p2    # "adapter":Landroid/print/IPrintDocumentAdapter;
    check-cast p2, Landroid/print/IPrintDocumentAdapter;

    #@c
    .line 121
    .restart local p2    # "adapter":Landroid/print/IPrintDocumentAdapter;
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@f
    move-result-object p4

    #@10
    .end local p4    # "packageName":Ljava/lang/String;
    check-cast p4, Ljava/lang/String;

    #@12
    .line 123
    .restart local p4    # "packageName":Ljava/lang/String;
    invoke-direct {p0, p6}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@15
    move-result v8

    #@16
    .line 127
    .local v8, "resolvedUserId":I
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@18
    monitor-enter v2

    #@19
    .line 129
    :try_start_0
    invoke-direct {p0, v8}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@1c
    move-result v1

    #@1d
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move-result v3

    #@21
    if-eq v1, v3, :cond_0

    #@23
    .line 130
    const/4 v1, 0x0

    #@24
    monitor-exit v2

    #@25
    return-object v1

    #@26
    .line 132
    :cond_0
    :try_start_1
    invoke-direct {p0, p5}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    #@29
    move-result v5

    #@2a
    .line 133
    .local v5, "resolvedAppId":I
    invoke-direct {p0, p4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingPackageNameEnforcingSecurity(Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    .line 134
    .local v4, "resolvedPackageName":Ljava/lang/String;
    const/4 v1, 0x0

    #@2f
    invoke-direct {p0, v8, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    move-result-object v0

    #@33
    .local v0, "userState":Lcom/android/server/print/UserState;
    monitor-exit v2

    #@34
    .line 136
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@37
    move-result-wide v6

    #@38
    .local v6, "identity":J
    move-object v1, p1

    #@39
    move-object v2, p2

    #@3a
    move-object v3, p3

    #@3b
    .line 138
    :try_start_2
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/print/UserState;->print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@3e
    move-result-object v1

    #@3f
    .line 141
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@42
    .line 138
    return-object v1

    #@43
    .line 127
    .end local v0    # "userState":Lcom/android/server/print/UserState;
    .end local v4    # "resolvedPackageName":Ljava/lang/String;
    .end local v5    # "resolvedAppId":I
    .end local v6    # "identity":J
    :catchall_0
    move-exception v1

    #@44
    monitor-exit v2

    #@45
    throw v1

    #@46
    .line 140
    .restart local v0    # "userState":Lcom/android/server/print/UserState;
    .restart local v4    # "resolvedPackageName":Ljava/lang/String;
    .restart local v5    # "resolvedAppId":I
    .restart local v6    # "identity":J
    :catchall_1
    move-exception v1

    #@47
    .line 141
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4a
    .line 140
    throw v1
.end method

.method public removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    .locals 7
    .param p1, "listener"    # Landroid/print/IPrintJobStateChangeListener;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 518
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object p1

    #@4
    .end local p1    # "listener":Landroid/print/IPrintJobStateChangeListener;
    check-cast p1, Landroid/print/IPrintJobStateChangeListener;

    #@6
    .line 520
    .restart local p1    # "listener":Landroid/print/IPrintJobStateChangeListener;
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@9
    move-result v2

    #@a
    .line 522
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@c
    monitor-enter v5

    #@d
    .line 524
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@10
    move-result v4

    #@11
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v6

    #@15
    if-eq v4, v6, :cond_0

    #@17
    monitor-exit v5

    #@18
    .line 525
    return-void

    #@19
    .line 527
    :cond_0
    const/4 v4, 0x0

    #@1a
    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    move-result-object v3

    #@1e
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    #@1f
    .line 529
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@22
    move-result-wide v0

    #@23
    .line 531
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 533
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 517
    return-void

    #@2a
    .line 522
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    #@2b
    monitor-exit v5

    #@2c
    throw v4

    #@2d
    .line 532
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    #@2e
    .line 533
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 532
    throw v4
.end method

.method public removePrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;I)V
    .locals 7
    .param p1, "listener"    # Landroid/printservice/recommendation/IRecommendationsChangeListener;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 607
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object p1

    #@4
    .end local p1    # "listener":Landroid/printservice/recommendation/IRecommendationsChangeListener;
    check-cast p1, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    #@6
    .line 609
    .restart local p1    # "listener":Landroid/printservice/recommendation/IRecommendationsChangeListener;
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@9
    move-result v2

    #@a
    .line 611
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@c
    monitor-enter v5

    #@d
    .line 614
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@10
    move-result v4

    #@11
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v6

    #@15
    if-eq v4, v6, :cond_0

    #@17
    monitor-exit v5

    #@18
    .line 615
    return-void

    #@19
    .line 617
    :cond_0
    const/4 v4, 0x0

    #@1a
    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    move-result-object v3

    #@1e
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    #@1f
    .line 619
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@22
    move-result-wide v0

    #@23
    .line 621
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->removePrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 623
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 606
    return-void

    #@2a
    .line 611
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    #@2b
    monitor-exit v5

    #@2c
    throw v4

    #@2d
    .line 622
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    #@2e
    .line 623
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 622
    throw v4
.end method

.method public removePrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;I)V
    .locals 7
    .param p1, "listener"    # Landroid/print/IPrintServicesChangeListener;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 562
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object p1

    #@4
    .end local p1    # "listener":Landroid/print/IPrintServicesChangeListener;
    check-cast p1, Landroid/print/IPrintServicesChangeListener;

    #@6
    .line 564
    .restart local p1    # "listener":Landroid/print/IPrintServicesChangeListener;
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@9
    move-result v2

    #@a
    .line 566
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@c
    monitor-enter v5

    #@d
    .line 568
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@10
    move-result v4

    #@11
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v6

    #@15
    if-eq v4, v6, :cond_0

    #@17
    monitor-exit v5

    #@18
    .line 569
    return-void

    #@19
    .line 571
    :cond_0
    const/4 v4, 0x0

    #@1a
    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    move-result-object v3

    #@1e
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    #@1f
    .line 573
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@22
    move-result-wide v0

    #@23
    .line 575
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->removePrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 577
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 561
    return-void

    #@2a
    .line 566
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    #@2b
    monitor-exit v5

    #@2c
    throw v4

    #@2d
    .line 576
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    #@2e
    .line 577
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 576
    throw v4
.end method

.method public restartPrintJob(Landroid/print/PrintJobId;II)V
    .locals 8
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 239
    if-nez p1, :cond_0

    #@2
    .line 240
    return-void

    #@3
    .line 243
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@6
    move-result v3

    #@7
    .line 246
    .local v3, "resolvedUserId":I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v6

    #@a
    .line 248
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@d
    move-result v5

    #@e
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result v7

    #@12
    if-eq v5, v7, :cond_1

    #@14
    monitor-exit v6

    #@15
    .line 249
    return-void

    #@16
    .line 251
    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    #@19
    move-result v2

    #@1a
    .line 252
    .local v2, "resolvedAppId":I
    const/4 v5, 0x0

    #@1b
    invoke-direct {p0, v3, v5}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    move-result-object v4

    #@1f
    .local v4, "userState":Lcom/android/server/print/UserState;
    monitor-exit v6

    #@20
    .line 254
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@23
    move-result-wide v0

    #@24
    .line 256
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v4, p1, v2}, Lcom/android/server/print/UserState;->restartPrintJob(Landroid/print/PrintJobId;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@27
    .line 258
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 238
    return-void

    #@2b
    .line 246
    .end local v0    # "identity":J
    .end local v2    # "resolvedAppId":I
    .end local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    #@2c
    monitor-exit v6

    #@2d
    throw v5

    #@2e
    .line 257
    .restart local v0    # "identity":J
    .restart local v2    # "resolvedAppId":I
    .restart local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    #@2f
    .line 258
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@32
    .line 257
    throw v5
.end method

.method public setPrintServiceEnabled(Landroid/content/ComponentName;ZI)V
    .locals 9
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "isEnabled"    # Z
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 286
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@3
    move-result v4

    #@4
    .line 287
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v6

    #@8
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    #@b
    move-result v0

    #@c
    .line 290
    .local v0, "appId":I
    const/16 v6, 0x3e8

    #@e
    if-eq v0, v6, :cond_0

    #@10
    .line 291
    :try_start_0
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    #@12
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@15
    move-result-object v6

    #@16
    .line 292
    const-string/jumbo v7, "com.android.printspooler"

    #@19
    .line 291
    invoke-virtual {v6, v7, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    #@1c
    move-result v6

    #@1d
    .line 290
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    #@20
    move-result v6

    #@21
    if-eq v0, v6, :cond_0

    #@23
    .line 293
    new-instance v6, Ljava/lang/SecurityException;

    #@25
    const-string/jumbo v7, "Only system and print spooler can call this"

    #@28
    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 295
    :catch_0
    move-exception v1

    #@2d
    .line 296
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "PrintManagerService"

    #@30
    const-string/jumbo v7, "Could not verify caller"

    #@33
    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@36
    .line 297
    return-void

    #@37
    .line 300
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    move-result-object p1

    #@3b
    .end local p1    # "service":Landroid/content/ComponentName;
    check-cast p1, Landroid/content/ComponentName;

    #@3d
    .line 303
    .restart local p1    # "service":Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@3f
    monitor-enter v7

    #@40
    .line 305
    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@43
    move-result v6

    #@44
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    move-result v8

    #@48
    if-eq v6, v8, :cond_1

    #@4a
    monitor-exit v7

    #@4b
    .line 306
    return-void

    #@4c
    .line 308
    :cond_1
    const/4 v6, 0x0

    #@4d
    :try_start_2
    invoke-direct {p0, v4, v6}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@50
    move-result-object v5

    #@51
    .local v5, "userState":Lcom/android/server/print/UserState;
    monitor-exit v7

    #@52
    .line 310
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@55
    move-result-wide v2

    #@56
    .line 312
    .local v2, "identity":J
    :try_start_3
    invoke-virtual {v5, p1, p2}, Lcom/android/server/print/UserState;->setPrintServiceEnabled(Landroid/content/ComponentName;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@59
    .line 314
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5c
    .line 285
    return-void

    #@5d
    .line 303
    .end local v2    # "identity":J
    .end local v5    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v6

    #@5e
    monitor-exit v7

    #@5f
    throw v6

    #@60
    .line 313
    .restart local v2    # "identity":J
    .restart local v5    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v6

    #@61
    .line 314
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@64
    .line 313
    throw v6
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
    .line 384
    .local p2, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object p1

    #@4
    .end local p1    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    check-cast p1, Landroid/print/IPrinterDiscoveryObserver;

    #@6
    .line 385
    .restart local p1    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    if-eqz p2, :cond_0

    #@8
    .line 387
    const-string/jumbo v4, "PrinterId"

    #@b
    .line 386
    invoke-static {p2, v4}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    #@e
    move-result-object p2

    #@f
    .end local p2    # "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    check-cast p2, Ljava/util/List;

    #@11
    .line 390
    .restart local p2    # "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@14
    move-result v2

    #@15
    .line 392
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@17
    monitor-enter v5

    #@18
    .line 394
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@1b
    move-result v4

    #@1c
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v6

    #@20
    if-eq v4, v6, :cond_1

    #@22
    monitor-exit v5

    #@23
    .line 395
    return-void

    #@24
    .line 397
    :cond_1
    const/4 v4, 0x0

    #@25
    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    move-result-object v3

    #@29
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    #@2a
    .line 399
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2d
    move-result-wide v0

    #@2e
    .line 401
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1, p2}, Lcom/android/server/print/UserState;->startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@31
    .line 403
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@34
    .line 383
    return-void

    #@35
    .line 392
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    #@36
    monitor-exit v5

    #@37
    throw v4

    #@38
    .line 402
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    #@39
    .line 403
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 402
    throw v4
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;I)V
    .locals 7
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 451
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object p1

    #@4
    .end local p1    # "printerId":Landroid/print/PrinterId;
    check-cast p1, Landroid/print/PrinterId;

    #@6
    .line 453
    .restart local p1    # "printerId":Landroid/print/PrinterId;
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@9
    move-result v2

    #@a
    .line 455
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@c
    monitor-enter v5

    #@d
    .line 457
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@10
    move-result v4

    #@11
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v6

    #@15
    if-eq v4, v6, :cond_0

    #@17
    monitor-exit v5

    #@18
    .line 458
    return-void

    #@19
    .line 460
    :cond_0
    const/4 v4, 0x0

    #@1a
    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    move-result-object v3

    #@1e
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    #@1f
    .line 462
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@22
    move-result-wide v0

    #@23
    .line 464
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->startPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 466
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 450
    return-void

    #@2a
    .line 455
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    #@2b
    monitor-exit v5

    #@2c
    throw v4

    #@2d
    .line 465
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    #@2e
    .line 466
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 465
    throw v4
.end method

.method public stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;I)V
    .locals 7
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 409
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object p1

    #@4
    .end local p1    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    check-cast p1, Landroid/print/IPrinterDiscoveryObserver;

    #@6
    .line 411
    .restart local p1    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@9
    move-result v2

    #@a
    .line 413
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@c
    monitor-enter v5

    #@d
    .line 415
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@10
    move-result v4

    #@11
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v6

    #@15
    if-eq v4, v6, :cond_0

    #@17
    monitor-exit v5

    #@18
    .line 416
    return-void

    #@19
    .line 418
    :cond_0
    const/4 v4, 0x0

    #@1a
    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    move-result-object v3

    #@1e
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    #@1f
    .line 420
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@22
    move-result-wide v0

    #@23
    .line 422
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 424
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 408
    return-void

    #@2a
    .line 413
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    #@2b
    monitor-exit v5

    #@2c
    throw v4

    #@2d
    .line 423
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    #@2e
    .line 424
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 423
    throw v4
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;I)V
    .locals 7
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 472
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object p1

    #@4
    .end local p1    # "printerId":Landroid/print/PrinterId;
    check-cast p1, Landroid/print/PrinterId;

    #@6
    .line 474
    .restart local p1    # "printerId":Landroid/print/PrinterId;
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@9
    move-result v2

    #@a
    .line 476
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@c
    monitor-enter v5

    #@d
    .line 478
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@10
    move-result v4

    #@11
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v6

    #@15
    if-eq v4, v6, :cond_0

    #@17
    monitor-exit v5

    #@18
    .line 479
    return-void

    #@19
    .line 481
    :cond_0
    const/4 v4, 0x0

    #@1a
    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    move-result-object v3

    #@1e
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    #@1f
    .line 483
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@22
    move-result-wide v0

    #@23
    .line 485
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->stopPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 487
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@29
    .line 471
    return-void

    #@2a
    .line 476
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    #@2b
    monitor-exit v5

    #@2c
    throw v4

    #@2d
    .line 486
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    #@2e
    .line 487
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@31
    .line 486
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
    .line 430
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    const-string/jumbo v4, "PrinterId"

    #@3
    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    #@6
    move-result-object p1

    #@7
    .end local p1    # "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    check-cast p1, Ljava/util/List;

    #@9
    .line 432
    .restart local p1    # "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    #@c
    move-result v2

    #@d
    .line 434
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    #@f
    monitor-enter v5

    #@10
    .line 436
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    #@13
    move-result v4

    #@14
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result v6

    #@18
    if-eq v4, v6, :cond_0

    #@1a
    monitor-exit v5

    #@1b
    .line 437
    return-void

    #@1c
    .line 439
    :cond_0
    const/4 v4, 0x0

    #@1d
    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    move-result-object v3

    #@21
    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    #@22
    .line 441
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@25
    move-result-wide v0

    #@26
    .line 443
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->validatePrinters(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@29
    .line 445
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2c
    .line 429
    return-void

    #@2d
    .line 434
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    #@2e
    monitor-exit v5

    #@2f
    throw v4

    #@30
    .line 444
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    #@31
    .line 445
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@34
    .line 444
    throw v4
.end method
