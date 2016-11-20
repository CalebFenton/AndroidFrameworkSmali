.class Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
.super Landroid/content/pm/ILauncherApps$Stub;
.source "LauncherAppsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/LauncherAppsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LauncherAppsImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;,
        Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LauncherAppsService"


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mCallbackHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList",
            "<",
            "Landroid/content/pm/IOnAppsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

.field private final mUm:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/pm/ShortcutServiceInternal;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "listeningUser"    # Landroid/os/UserHandle;
    .param p3, "debugMsg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 111
    invoke-direct {p0}, Landroid/content/pm/ILauncherApps$Stub;-><init>()V

    #@3
    .line 105
    new-instance v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@5
    invoke-direct {v0, p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    #@8
    .line 104
    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@a
    .line 107
    new-instance v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;)V

    #@10
    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    #@12
    .line 112
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    #@14
    .line 113
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    #@16
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPm:Landroid/content/pm/PackageManager;

    #@1c
    .line 114
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    #@1e
    const-string/jumbo v1, "user"

    #@21
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/os/UserManager;

    #@27
    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    #@29
    .line 116
    const-class v0, Landroid/app/ActivityManagerInternal;

    #@2b
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Landroid/app/ActivityManagerInternal;

    #@31
    .line 115
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Landroid/app/ActivityManagerInternal;

    #@37
    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    #@39
    .line 118
    const-class v0, Landroid/content/pm/ShortcutServiceInternal;

    #@3b
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Landroid/content/pm/ShortcutServiceInternal;

    #@41
    .line 117
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    move-result-object v0

    #@45
    check-cast v0, Landroid/content/pm/ShortcutServiceInternal;

    #@47
    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    #@49
    .line 119
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    #@4b
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    #@4d
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutServiceInternal;->addListener(Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;)V

    #@50
    .line 120
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@53
    move-result-object v0

    #@54
    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mCallbackHandler:Landroid/os/Handler;

    #@56
    .line 111
    return-void
.end method

.method private ensureInUserProfiles(ILjava/lang/String;)V
    .locals 7
    .param p1, "targetUserId"    # I
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 227
    .local v0, "callingUserId":I
    if-ne p1, v0, :cond_0

    #@6
    return-void

    #@7
    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectClearCallingIdentity()J

    #@a
    move-result-wide v2

    #@b
    .line 231
    .local v2, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    #@d
    invoke-virtual {v5, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@10
    move-result-object v1

    #@11
    .line 232
    .local v1, "callingUserInfo":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    #@13
    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@16
    move-result-object v4

    #@17
    .line 233
    .local v4, "targetUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_1

    #@19
    .line 234
    iget v5, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@1b
    const/16 v6, -0x2710

    #@1d
    if-ne v5, v6, :cond_2

    #@1f
    .line 236
    :cond_1
    new-instance v5, Ljava/lang/SecurityException;

    #@21
    invoke-direct {v5, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@24
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 238
    .end local v1    # "callingUserInfo":Landroid/content/pm/UserInfo;
    .end local v4    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v5

    #@26
    .line 239
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    #@29
    .line 238
    throw v5

    #@2a
    .line 235
    .restart local v1    # "callingUserInfo":Landroid/content/pm/UserInfo;
    .restart local v4    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :cond_2
    :try_start_1
    iget v5, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@2c
    iget v6, v1, Landroid/content/pm/UserInfo;->profileGroupId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    if-ne v5, v6, :cond_1

    #@30
    .line 239
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    #@33
    .line 224
    return-void
.end method

.method private ensureInUserProfiles(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 1
    .param p1, "userToCheck"    # Landroid/os/UserHandle;
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureInUserProfiles(ILjava/lang/String;)V

    #@7
    .line 220
    return-void
.end method

.method private ensureShortcutPermission(Ljava/lang/String;I)V
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 365
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    #@3
    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "Cannot start activity for unrelated profile "

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    invoke-direct {p0, p2, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureInUserProfiles(ILjava/lang/String;)V

    #@1a
    .line 368
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    #@1c
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    #@1f
    move-result v1

    #@20
    invoke-virtual {v0, v1, p1}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;)Z

    #@23
    move-result v0

    #@24
    if-nez v0, :cond_0

    #@26
    .line 370
    new-instance v0, Ljava/lang/SecurityException;

    #@28
    const-string/jumbo v1, "Caller can\'t access shortcut information"

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    .line 364
    :cond_0
    return-void
.end method

.method private ensureShortcutPermission(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 361
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;I)V

    #@7
    .line 360
    return-void
.end method

.method private getCallingUserId()I
    .locals 1

    #@0
    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    .locals 7
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "listeningUser"    # Landroid/os/UserHandle;
    .param p3, "debugMsg"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 592
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@4
    move-result v4

    #@5
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@8
    move-result v5

    #@9
    if-ne v4, v5, :cond_0

    #@b
    .line 594
    return v6

    #@c
    .line 596
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectClearCallingIdentity()J

    #@f
    move-result-wide v0

    #@10
    .line 598
    .local v0, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    #@12
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@15
    move-result v5

    #@16
    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@19
    move-result-object v3

    #@1a
    .line 599
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    #@1c
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@1f
    move-result v5

    #@20
    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result-object v2

    #@24
    .line 600
    .local v2, "listeningUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_1

    #@26
    if-nez v2, :cond_2

    #@28
    .line 608
    :cond_1
    const/4 v4, 0x0

    #@29
    .line 617
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    #@2c
    .line 608
    return v4

    #@2d
    .line 601
    :cond_2
    :try_start_1
    iget v4, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@2f
    const/16 v5, -0x2710

    #@31
    if-eq v4, v5, :cond_1

    #@33
    .line 602
    iget v4, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@35
    iget v5, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@37
    if-ne v4, v5, :cond_1

    #@39
    .line 603
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    move-result v4

    #@3d
    if-eqz v4, :cond_1

    #@3f
    .line 617
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    #@42
    .line 614
    return v6

    #@43
    .line 616
    .end local v2    # "listeningUserInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v4

    #@44
    .line 617
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    #@47
    .line 616
    throw v4
.end method

.method private isUserEnabled(I)Z
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectClearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 270
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    #@6
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@9
    move-result-object v2

    #@a
    .line 271
    .local v2, "targetUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    #@c
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result v3

    #@10
    .line 273
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    #@13
    .line 271
    return v3

    #@14
    :cond_0
    const/4 v3, 0x0

    #@15
    goto :goto_0

    #@16
    .line 272
    .end local v2    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    #@17
    .line 273
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    #@1a
    .line 272
    throw v3
.end method

.method private isUserEnabled(Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 264
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private startShortcutIntentsAsPublisher([Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)Z
    .locals 9
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "publisherPackage"    # Ljava/lang/String;
    .param p3, "startActivityOptions"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 472
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectClearCallingIdentity()J

    #@5
    move-result-wide v2

    #@6
    .line 474
    .local v2, "ident":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    #@8
    invoke-virtual {v6, p2, p4, p1, p3}, Landroid/app/ActivityManagerInternal;->startActivitiesAsPackage(Ljava/lang/String;I[Landroid/content/Intent;Landroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result v0

    #@c
    .line 476
    .local v0, "code":I
    if-ltz v0, :cond_0

    #@e
    .line 488
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    #@11
    .line 477
    return v4

    #@12
    .line 479
    :cond_0
    :try_start_1
    const-string/jumbo v6, "LauncherAppsService"

    #@15
    new-instance v7, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v8, "Couldn\'t start activity, code="

    #@1d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v7

    #@21
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v7

    #@25
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v7

    #@29
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    .line 481
    if-ltz v0, :cond_1

    #@2e
    .line 488
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    #@31
    .line 481
    return v4

    #@32
    :cond_1
    move v4, v5

    #@33
    goto :goto_0

    #@34
    .line 482
    .end local v0    # "code":I
    :catch_0
    move-exception v1

    #@35
    .line 488
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    #@38
    .line 486
    return v5

    #@39
    .line 487
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v4

    #@3a
    .line 488
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    #@3d
    .line 487
    throw v4
.end method

.method private startWatchingPackageBroadcasts()V
    .locals 5

    #@0
    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    #@2
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    #@4
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@6
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mCallbackHandler:Landroid/os/Handler;

    #@8
    const/4 v4, 0x1

    #@9
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V

    #@c
    .line 192
    return-void
.end method

.method private stopWatchingPackageBroadcasts()V
    .locals 1

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    #@2
    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->unregister()V

    #@5
    .line 199
    return-void
.end method


# virtual methods
.method public addOnAppsChangedListener(Ljava/lang/String;Landroid/content/pm/IOnAppsChangedListener;)V
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/pm/IOnAppsChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    #@3
    .line 155
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@5
    monitor-enter v1

    #@6
    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@8
    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getRegisteredCallbackCount()I

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 163
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->startWatchingPackageBroadcasts()V

    #@11
    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@13
    invoke-virtual {v0, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->unregister(Landroid/os/IInterface;)Z

    #@16
    .line 166
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@18
    new-instance v2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    #@1a
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    #@1d
    move-result v3

    #@1e
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@21
    move-result-object v3

    #@22
    invoke-direct {v2, v3, p1}, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;-><init>(Landroid/os/UserHandle;Ljava/lang/String;)V

    #@25
    invoke-virtual {v0, p2, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    monitor-exit v1

    #@29
    .line 153
    return-void

    #@2a
    .line 155
    :catchall_0
    move-exception v0

    #@2b
    monitor-exit v1

    #@2c
    throw v0
.end method

.method checkCallbackCount()V
    .locals 2

    #@0
    .prologue
    .line 207
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@2
    monitor-enter v1

    #@3
    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@5
    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getRegisteredCallbackCount()I

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 212
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->stopWatchingPackageBroadcasts()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit v1

    #@f
    .line 206
    return-void

    #@10
    .line 207
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method public getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 344
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v5, "Cannot check package for unrelated profile "

    #@8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    invoke-direct {p0, p3, v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureInUserProfiles(Landroid/os/UserHandle;Ljava/lang/String;)V

    #@17
    .line 345
    invoke-direct {p0, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    #@1a
    move-result v4

    #@1b
    if-nez v4, :cond_0

    #@1d
    .line 346
    const/4 v4, 0x0

    #@1e
    return-object v4

    #@1f
    .line 349
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@22
    move-result-wide v0

    #@23
    .line 351
    .local v0, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@26
    move-result-object v3

    #@27
    .line 353
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    #@2a
    move-result v4

    #@2b
    .line 352
    invoke-interface {v3, p1, p2, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    move-result-object v2

    #@2f
    .line 356
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@32
    .line 354
    return-object v2

    #@33
    .line 355
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_0
    move-exception v4

    #@34
    .line 356
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@37
    .line 355
    throw v4
.end method

.method public getLauncherActivities(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/pm/ResolveInfo;",
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
    const/4 v6, 0x0

    #@1
    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v5, "Cannot retrieve activities for unrelated profile "

    #@9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v4

    #@d
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    invoke-direct {p0, p2, v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureInUserProfiles(Landroid/os/UserHandle;Ljava/lang/String;)V

    #@18
    .line 281
    invoke-direct {p0, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    #@1b
    move-result v4

    #@1c
    if-nez v4, :cond_0

    #@1e
    .line 282
    return-object v6

    #@1f
    .line 285
    :cond_0
    new-instance v1, Landroid/content/Intent;

    #@21
    const-string/jumbo v4, "android.intent.action.MAIN"

    #@24
    invoke-direct {v1, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@27
    .line 286
    .local v1, "mainIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    #@2a
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@2d
    .line 287
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@30
    .line 288
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@33
    move-result-wide v2

    #@34
    .line 290
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPm:Landroid/content/pm/PackageManager;

    #@36
    .line 293
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@39
    move-result v5

    #@3a
    .line 291
    const/high16 v6, 0xc0000

    #@3c
    .line 290
    invoke-virtual {v4, v1, v6, v5}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@3f
    move-result-object v0

    #@40
    .line 294
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    #@42
    invoke-direct {v4, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    .line 296
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@48
    .line 294
    return-object v4

    #@49
    .line 295
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_0
    move-exception v4

    #@4a
    .line 296
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4d
    .line 295
    throw v4
.end method

.method public getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 422
    invoke-direct {p0, p1, p4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;I)V

    #@3
    .line 423
    invoke-direct {p0, p4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(I)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 424
    const/4 v0, 0x0

    #@a
    return-object v0

    #@b
    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    #@d
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    #@10
    move-result v1

    #@11
    move-object v2, p1

    #@12
    move-object v3, p2

    #@13
    move-object v4, p3

    #@14
    move v5, p4

    #@15
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/ShortcutServiceInternal;->getShortcutIconFd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method public getShortcutIconResId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 410
    invoke-direct {p0, p1, p4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;I)V

    #@3
    .line 411
    invoke-direct {p0, p4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(I)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 412
    const/4 v0, 0x0

    #@a
    return v0

    #@b
    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    #@d
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    #@10
    move-result v1

    #@11
    move-object v2, p1

    #@12
    move-object v3, p2

    #@13
    move-object v4, p3

    #@14
    move v5, p4

    #@15
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/ShortcutServiceInternal;->getShortcutIconResId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    #@18
    move-result v0

    #@19
    return v0
.end method

.method public getShortcuts(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;ILandroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .locals 14
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "changedSince"    # J
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "shortcutIds"    # Ljava/util/List;
    .param p6, "componentName"    # Landroid/content/ComponentName;
    .param p7, "flags"    # I
    .param p8, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 378
    move-object/from16 v0, p8

    #@2
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;Landroid/os/UserHandle;)V

    #@5
    .line 379
    move-object/from16 v0, p8

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    .line 380
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    #@f
    new-instance v3, Ljava/util/ArrayList;

    #@11
    const/4 v4, 0x0

    #@12
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@15
    invoke-direct {v2, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    #@18
    return-object v2

    #@19
    .line 382
    :cond_0
    if-eqz p5, :cond_1

    #@1b
    if-nez p4, :cond_1

    #@1d
    .line 383
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1f
    .line 384
    const-string/jumbo v3, "To query by shortcut ID, package name must also be set"

    #@22
    .line 383
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v2

    #@26
    .line 388
    :cond_1
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    #@28
    .line 389
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    #@2a
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    #@2d
    move-result v4

    #@2e
    .line 391
    invoke-virtual/range {p8 .. p8}, Landroid/os/UserHandle;->getIdentifier()I

    #@31
    move-result v12

    #@32
    move-object v5, p1

    #@33
    move-wide/from16 v6, p2

    #@35
    move-object/from16 v8, p4

    #@37
    move-object/from16 v9, p5

    #@39
    move-object/from16 v10, p6

    #@3b
    move/from16 v11, p7

    #@3d
    .line 389
    invoke-virtual/range {v3 .. v12}, Landroid/content/pm/ShortcutServiceInternal;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;II)Ljava/util/List;

    #@40
    move-result-object v3

    #@41
    .line 388
    invoke-direct {v2, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    #@44
    return-object v2
.end method

.method public hasShortcutHostPermission(Ljava/lang/String;)Z
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    #@3
    .line 434
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    #@5
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    #@8
    move-result v1

    #@9
    invoke-virtual {v0, v1, p1}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method injectBinderCallingUid()I
    .locals 1

    #@0
    .prologue
    .line 125
    invoke-static {}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUid()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method final injectCallingUserId()I
    .locals 1

    #@0
    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method injectClearCallingIdentity()J
    .locals 2

    #@0
    .prologue
    .line 134
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method injectRestoreCallingIdentity(J)V
    .locals 1
    .param p1, "token"    # J

    #@0
    .prologue
    .line 140
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3
    .line 139
    return-void
.end method

.method public isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 7
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 495
    new-instance v5, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v6, "Cannot check component for unrelated profile "

    #@9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v5

    #@d
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v5

    #@11
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    invoke-direct {p0, p2, v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureInUserProfiles(Landroid/os/UserHandle;Ljava/lang/String;)V

    #@18
    .line 496
    invoke-direct {p0, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    #@1b
    move-result v5

    #@1c
    if-nez v5, :cond_0

    #@1e
    .line 497
    return v4

    #@1f
    .line 500
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@22
    move-result-wide v0

    #@23
    .line 502
    .local v0, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@26
    move-result-object v3

    #@27
    .line 506
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@2a
    move-result v5

    #@2b
    .line 504
    const/high16 v6, 0xc0000

    #@2d
    .line 503
    invoke-interface {v3, p1, v6, v5}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    move-result-object v2

    #@31
    .line 507
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_1

    #@33
    const/4 v4, 0x1

    #@34
    .line 509
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@37
    .line 507
    return v4

    #@38
    .line 508
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    .end local v3    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_0
    move-exception v4

    #@39
    .line 509
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 508
    throw v4
.end method

.method public isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 323
    new-instance v5, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v6, "Cannot check package for unrelated profile "

    #@9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v5

    #@d
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v5

    #@11
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    invoke-direct {p0, p2, v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureInUserProfiles(Landroid/os/UserHandle;Ljava/lang/String;)V

    #@18
    .line 324
    invoke-direct {p0, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    #@1b
    move-result v5

    #@1c
    if-nez v5, :cond_0

    #@1e
    .line 325
    return v4

    #@1f
    .line 328
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@22
    move-result-wide v0

    #@23
    .line 330
    .local v0, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@26
    move-result-object v3

    #@27
    .line 334
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@2a
    move-result v5

    #@2b
    .line 332
    const/high16 v6, 0xc0000

    #@2d
    .line 331
    invoke-interface {v3, p1, v6, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    #@30
    move-result-object v2

    #@31
    .line 335
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_1

    #@33
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@35
    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .line 337
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3a
    .line 335
    return v4

    #@3b
    .line 336
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_0
    move-exception v4

    #@3c
    .line 337
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3f
    .line 336
    throw v4
.end method

.method public pinShortcuts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 397
    .local p3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;Landroid/os/UserHandle;)V

    #@3
    .line 398
    invoke-direct {p0, p4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 399
    new-instance v0, Ljava/lang/IllegalStateException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Cannot pin shortcuts for disabled profile "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 403
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    #@25
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    #@28
    move-result v1

    #@29
    .line 404
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    #@2c
    move-result v5

    #@2d
    move-object v2, p1

    #@2e
    move-object v3, p2

    #@2f
    move-object v4, p3

    #@30
    .line 403
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/ShortcutServiceInternal;->pinShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    #@33
    .line 396
    return-void
.end method

.method postToPackageMonitorHandler(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mCallbackHandler:Landroid/os/Handler;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@5
    .line 622
    return-void
.end method

.method public removeOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/content/pm/IOnAppsChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@2
    monitor-enter v1

    #@3
    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->unregister(Landroid/os/IInterface;)Z

    #@8
    .line 183
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@a
    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getRegisteredCallbackCount()I

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    .line 184
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->stopWatchingPackageBroadcasts()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit v1

    #@14
    .line 177
    return-void

    #@15
    .line 178
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method public resolveActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/pm/ActivityInfo;
    .locals 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v4, "Cannot resolve activity for unrelated profile "

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-direct {p0, p2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureInUserProfiles(Landroid/os/UserHandle;Ljava/lang/String;)V

    #@17
    .line 304
    invoke-direct {p0, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    #@1a
    move-result v3

    #@1b
    if-nez v3, :cond_0

    #@1d
    .line 305
    const/4 v3, 0x0

    #@1e
    return-object v3

    #@1f
    .line 308
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@22
    move-result-wide v0

    #@23
    .line 310
    .local v0, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@26
    move-result-object v2

    #@27
    .line 314
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@2a
    move-result v3

    #@2b
    .line 312
    const/high16 v4, 0xc0000

    #@2d
    .line 311
    invoke-interface {v2, p1, v4, v3}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    move-result-object v3

    #@31
    .line 316
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@34
    .line 311
    return-object v3

    #@35
    .line 315
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_0
    move-exception v3

    #@36
    .line 316
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@39
    .line 315
    throw v3
.end method

.method public showAppDetailsAsUser(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 7
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "sourceBounds"    # Landroid/graphics/Rect;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 569
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v5, "Cannot show app details for unrelated profile "

    #@8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    invoke-direct {p0, p4, v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureInUserProfiles(Landroid/os/UserHandle;Ljava/lang/String;)V

    #@17
    .line 570
    invoke-direct {p0, p4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    #@1a
    move-result v4

    #@1b
    if-nez v4, :cond_0

    #@1d
    .line 571
    new-instance v4, Ljava/lang/IllegalStateException;

    #@1f
    new-instance v5, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v6, "Cannot show app details for disabled profile "

    #@27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@36
    throw v4

    #@37
    .line 575
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3a
    move-result-wide v0

    #@3b
    .line 577
    .local v0, "ident":J
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    .line 578
    .local v3, "packageName":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    #@41
    const-string/jumbo v4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    #@44
    .line 579
    const-string/jumbo v5, "package"

    #@47
    const/4 v6, 0x0

    #@48
    invoke-static {v5, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@4b
    move-result-object v5

    #@4c
    .line 578
    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@4f
    .line 580
    .local v2, "intent":Landroid/content/Intent;
    const v4, 0x10008000

    #@52
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@55
    .line 581
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    #@58
    .line 582
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    #@5a
    invoke-virtual {v4, v2, p3, p4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5d
    .line 584
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@60
    .line 568
    return-void

    #@61
    .line 583
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@62
    .line 584
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@65
    .line 583
    throw v4
.end method

.method public startActivityAsUser(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 14
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "sourceBounds"    # Landroid/graphics/Rect;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 516
    new-instance v11, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v12, "Cannot start activity for unrelated profile "

    #@8
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v11

    #@c
    move-object/from16 v0, p4

    #@e
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v11

    #@12
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v11

    #@16
    move-object/from16 v0, p4

    #@18
    invoke-direct {p0, v0, v11}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureInUserProfiles(Landroid/os/UserHandle;Ljava/lang/String;)V

    #@1b
    .line 517
    move-object/from16 v0, p4

    #@1d
    invoke-direct {p0, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    #@20
    move-result v11

    #@21
    if-nez v11, :cond_0

    #@23
    .line 518
    new-instance v11, Ljava/lang/IllegalStateException;

    #@25
    new-instance v12, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v13, "Cannot start activity for disabled profile "

    #@2d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v12

    #@31
    move-object/from16 v0, p4

    #@33
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v12

    #@37
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v12

    #@3b
    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v11

    #@3f
    .line 521
    :cond_0
    new-instance v8, Landroid/content/Intent;

    #@41
    const-string/jumbo v11, "android.intent.action.MAIN"

    #@44
    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@47
    .line 522
    .local v8, "launchIntent":Landroid/content/Intent;
    const-string/jumbo v11, "android.intent.category.LAUNCHER"

    #@4a
    invoke-virtual {v8, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@4d
    .line 523
    move-object/from16 v0, p2

    #@4f
    invoke-virtual {v8, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    #@52
    .line 524
    const/high16 v11, 0x10200000

    #@54
    invoke-virtual {v8, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@57
    .line 526
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@5a
    move-result-object v11

    #@5b
    invoke-virtual {v8, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@5e
    .line 528
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@61
    move-result-wide v6

    #@62
    .line 530
    .local v6, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@65
    move-result-object v9

    #@66
    .line 534
    .local v9, "pm":Landroid/content/pm/IPackageManager;
    invoke-virtual/range {p4 .. p4}, Landroid/os/UserHandle;->getIdentifier()I

    #@69
    move-result v11

    #@6a
    .line 532
    const/high16 v12, 0xc0000

    #@6c
    .line 531
    invoke-interface {v9, p1, v12, v11}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    #@6f
    move-result-object v5

    #@70
    .line 535
    .local v5, "info":Landroid/content/pm/ActivityInfo;
    iget-boolean v11, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    #@72
    if-nez v11, :cond_1

    #@74
    .line 536
    new-instance v11, Ljava/lang/SecurityException;

    #@76
    new-instance v12, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v13, "Cannot launch non-exported components "

    #@7e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v12

    #@82
    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v12

    #@86
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v12

    #@8a
    invoke-direct {v11, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@8d
    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8e
    .line 561
    .end local v5    # "info":Landroid/content/pm/ActivityInfo;
    .end local v9    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_0
    move-exception v11

    #@8f
    .line 562
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@92
    .line 561
    throw v11

    #@93
    .line 543
    .restart local v5    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v9    # "pm":Landroid/content/pm/IPackageManager;
    :cond_1
    :try_start_1
    iget-object v11, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPm:Landroid/content/pm/PackageManager;

    #@95
    .line 546
    invoke-virtual/range {p4 .. p4}, Landroid/os/UserHandle;->getIdentifier()I

    #@98
    move-result v12

    #@99
    .line 544
    const/high16 v13, 0xc0000

    #@9b
    .line 543
    invoke-virtual {v11, v8, v13, v12}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@9e
    move-result-object v3

    #@9f
    .line 547
    .local v3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@a2
    move-result v10

    #@a3
    .line 548
    .local v10, "size":I
    const/4 v4, 0x0

    #@a4
    .local v4, "i":I
    :goto_0
    if-ge v4, v10, :cond_3

    #@a6
    .line 549
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a9
    move-result-object v11

    #@aa
    check-cast v11, Landroid/content/pm/ResolveInfo;

    #@ac
    iget-object v2, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@ae
    .line 550
    .local v2, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v11, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@b0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@b3
    move-result-object v12

    #@b4
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b7
    move-result v11

    #@b8
    if-eqz v11, :cond_2

    #@ba
    .line 551
    iget-object v11, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@bc
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@bf
    move-result-object v12

    #@c0
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c3
    move-result v11

    #@c4
    .line 550
    if-eqz v11, :cond_2

    #@c6
    .line 554
    invoke-virtual {v8, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@c9
    .line 555
    iget-object v11, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    #@cb
    move-object/from16 v0, p3

    #@cd
    move-object/from16 v1, p4

    #@cf
    invoke-virtual {v11, v8, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d2
    .line 562
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d5
    .line 556
    return-void

    #@d6
    .line 548
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@d8
    goto :goto_0

    #@d9
    .line 559
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_3
    :try_start_2
    new-instance v11, Ljava/lang/SecurityException;

    #@db
    new-instance v12, Ljava/lang/StringBuilder;

    #@dd
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@e0
    const-string/jumbo v13, "Attempt to launch activity without  category Intent.CATEGORY_LAUNCHER "

    #@e3
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v12

    #@e7
    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v12

    #@eb
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ee
    move-result-object v12

    #@ef
    invoke-direct {v11, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@f2
    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "shortcutId"    # Ljava/lang/String;
    .param p4, "sourceBounds"    # Landroid/graphics/Rect;
    .param p5, "startActivityOptions"    # Landroid/os/Bundle;
    .param p6, "userId"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 441
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    #@4
    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v1, "Cannot start activity for unrelated profile "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-direct {p0, p6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureInUserProfiles(ILjava/lang/String;)V

    #@1b
    .line 444
    invoke-direct {p0, p6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(I)Z

    #@1e
    move-result v0

    #@1f
    if-nez v0, :cond_0

    #@21
    .line 445
    new-instance v0, Ljava/lang/IllegalStateException;

    #@23
    new-instance v1, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v2, "Cannot start a shortcut for disabled profile "

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    .line 450
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    #@3d
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    #@40
    move-result v1

    #@41
    move-object v2, p1

    #@42
    move-object v3, p2

    #@43
    move-object v4, p3

    #@44
    move v5, p6

    #@45
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/ShortcutServiceInternal;->isPinnedByCaller(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    #@48
    move-result v0

    #@49
    if-nez v0, :cond_1

    #@4b
    .line 452
    invoke-direct {p0, p1, p6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;I)V

    #@4e
    .line 455
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    #@50
    .line 456
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    #@53
    move-result v1

    #@54
    move-object v2, p1

    #@55
    move-object v3, p2

    #@56
    move-object v4, p3

    #@57
    move v5, p6

    #@58
    .line 455
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/ShortcutServiceInternal;->createShortcutIntents(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[Landroid/content/Intent;

    #@5b
    move-result-object v6

    #@5c
    .line 457
    .local v6, "intents":[Landroid/content/Intent;
    if-eqz v6, :cond_2

    #@5e
    array-length v0, v6

    #@5f
    if-nez v0, :cond_3

    #@61
    .line 458
    :cond_2
    return v7

    #@62
    .line 462
    :cond_3
    aget-object v0, v6, v7

    #@64
    const/high16 v1, 0x10000000

    #@66
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@69
    .line 463
    aget-object v0, v6, v7

    #@6b
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    #@6e
    .line 465
    invoke-direct {p0, v6, p2, p5, p6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->startShortcutIntentsAsPublisher([Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)Z

    #@71
    move-result v0

    #@72
    return v0
.end method

.method verifyCallingPackage(Ljava/lang/String;)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 245
    const/4 v1, -0x1

    #@1
    .line 247
    .local v1, "packageUid":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPm:Landroid/content/pm/PackageManager;

    #@3
    .line 251
    invoke-static {}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUid()I

    #@6
    move-result v3

    #@7
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    #@a
    move-result v3

    #@b
    .line 248
    const v4, 0xc2000

    #@e
    .line 247
    invoke-virtual {v2, p1, v4, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v1

    #@12
    .line 255
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@15
    move-result v2

    #@16
    if-eq v1, v2, :cond_0

    #@18
    .line 256
    new-instance v2, Ljava/lang/SecurityException;

    #@1a
    const-string/jumbo v3, "Calling package name mismatch"

    #@1d
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 252
    :catch_0
    move-exception v0

    #@22
    .line 253
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "LauncherAppsService"

    #@25
    new-instance v3, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v4, "Package not found: "

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    goto :goto_0

    #@3d
    .line 244
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return-void
.end method
