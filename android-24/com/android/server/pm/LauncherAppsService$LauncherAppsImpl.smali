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
    .line 109
    invoke-direct {p0}, Landroid/content/pm/ILauncherApps$Stub;-><init>()V

    #@3
    .line 103
    new-instance v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@5
    invoke-direct {v0, p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    #@8
    .line 102
    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@a
    .line 105
    new-instance v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;)V

    #@10
    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    #@12
    .line 110
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    #@14
    .line 111
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    #@16
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPm:Landroid/content/pm/PackageManager;

    #@1c
    .line 112
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
    .line 114
    const-class v0, Landroid/content/pm/ShortcutServiceInternal;

    #@2b
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Landroid/content/pm/ShortcutServiceInternal;

    #@31
    .line 113
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Landroid/content/pm/ShortcutServiceInternal;

    #@37
    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    #@39
    .line 115
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    #@3b
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    #@3d
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutServiceInternal;->addListener(Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;)V

    #@40
    .line 116
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@43
    move-result-object v0

    #@44
    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mCallbackHandler:Landroid/os/Handler;

    #@46
    .line 109
    return-void
.end method

.method private ensureInUserProfiles(ILjava/lang/String;)V
    .locals 7
    .param p1, "targetUserId"    # I
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectCallingUserId()I

    #@3
    move-result v0

    #@4
    .line 223
    .local v0, "callingUserId":I
    if-ne p1, v0, :cond_0

    #@6
    return-void

    #@7
    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectClearCallingIdentity()J

    #@a
    move-result-wide v2

    #@b
    .line 227
    .local v2, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    #@d
    invoke-virtual {v5, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@10
    move-result-object v1

    #@11
    .line 228
    .local v1, "callingUserInfo":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    #@13
    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@16
    move-result-object v4

    #@17
    .line 229
    .local v4, "targetUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_1

    #@19
    .line 230
    iget v5, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@1b
    const/16 v6, -0x2710

    #@1d
    if-ne v5, v6, :cond_2

    #@1f
    .line 232
    :cond_1
    new-instance v5, Ljava/lang/SecurityException;

    #@21
    invoke-direct {v5, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@24
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 234
    .end local v1    # "callingUserInfo":Landroid/content/pm/UserInfo;
    .end local v4    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v5

    #@26
    .line 235
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    #@29
    .line 234
    throw v5

    #@2a
    .line 231
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
    .line 235
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    #@33
    .line 220
    return-void
.end method

.method private ensureInUserProfiles(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 1
    .param p1, "userToCheck"    # Landroid/os/UserHandle;
    .param p2, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureInUserProfiles(ILjava/lang/String;)V

    #@7
    .line 216
    return-void
.end method

.method private ensureShortcutPermission(Ljava/lang/String;I)V
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 361
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    #@3
    .line 362
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
    .line 364
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
    .line 366
    new-instance v0, Ljava/lang/SecurityException;

    #@28
    const-string/jumbo v1, "Caller can\'t access shortcut information"

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    .line 360
    :cond_0
    return-void
.end method

.method private ensureShortcutPermission(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 357
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;I)V

    #@7
    .line 356
    return-void
.end method

.method private getCallingUserId()I
    .locals 1

    #@0
    .prologue
    .line 140
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
    .line 574
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
    .line 576
    return v6

    #@c
    .line 578
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectClearCallingIdentity()J

    #@f
    move-result-wide v0

    #@10
    .line 580
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
    .line 581
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
    .line 582
    .local v2, "listeningUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_1

    #@26
    if-nez v2, :cond_2

    #@28
    .line 590
    :cond_1
    const/4 v4, 0x0

    #@29
    .line 599
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    #@2c
    .line 590
    return v4

    #@2d
    .line 583
    :cond_2
    :try_start_1
    iget v4, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@2f
    const/16 v5, -0x2710

    #@31
    if-eq v4, v5, :cond_1

    #@33
    .line 584
    iget v4, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@35
    iget v5, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    #@37
    if-ne v4, v5, :cond_1

    #@39
    .line 585
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    move-result v4

    #@3d
    if-eqz v4, :cond_1

    #@3f
    .line 599
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    #@42
    .line 596
    return v6

    #@43
    .line 598
    .end local v2    # "listeningUserInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v4

    #@44
    .line 599
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    #@47
    .line 598
    throw v4
.end method

.method private isUserEnabled(I)Z
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectClearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 266
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    #@6
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@9
    move-result-object v2

    #@a
    .line 267
    .local v2, "targetUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    #@c
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result v3

    #@10
    .line 269
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    #@13
    .line 267
    return v3

    #@14
    :cond_0
    const/4 v3, 0x0

    #@15
    goto :goto_0

    #@16
    .line 268
    .end local v2    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    #@17
    .line 269
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    #@1a
    .line 268
    throw v3
.end method

.method private isUserEnabled(Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 260
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

.method private prepareIntentForLaunch(Landroid/content/Intent;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "launchIntent"    # Landroid/content/Intent;
    .param p2, "sourceBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 543
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    #@3
    .line 544
    const/high16 v0, 0x10200000

    #@5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@8
    .line 542
    return-void
.end method

.method private startWatchingPackageBroadcasts()V
    .locals 5

    #@0
    .prologue
    .line 189
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
    .line 188
    return-void
.end method

.method private stopWatchingPackageBroadcasts()V
    .locals 1

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    #@2
    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->unregister()V

    #@5
    .line 195
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
    .line 150
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    #@3
    .line 151
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@5
    monitor-enter v1

    #@6
    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@8
    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getRegisteredCallbackCount()I

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 159
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->startWatchingPackageBroadcasts()V

    #@11
    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@13
    invoke-virtual {v0, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->unregister(Landroid/os/IInterface;)Z

    #@16
    .line 162
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
    .line 149
    return-void

    #@2a
    .line 151
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
    .line 203
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@2
    monitor-enter v1

    #@3
    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@5
    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getRegisteredCallbackCount()I

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 208
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->stopWatchingPackageBroadcasts()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit v1

    #@f
    .line 202
    return-void

    #@10
    .line 203
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
    .line 340
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
    .line 341
    invoke-direct {p0, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    #@1a
    move-result v4

    #@1b
    if-nez v4, :cond_0

    #@1d
    .line 342
    const/4 v4, 0x0

    #@1e
    return-object v4

    #@1f
    .line 345
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@22
    move-result-wide v0

    #@23
    .line 347
    .local v0, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@26
    move-result-object v3

    #@27
    .line 349
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    #@2a
    move-result v4

    #@2b
    .line 348
    invoke-interface {v3, p1, p2, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    move-result-object v2

    #@2f
    .line 352
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@32
    .line 350
    return-object v2

    #@33
    .line 351
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_0
    move-exception v4

    #@34
    .line 352
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@37
    .line 351
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
    .line 276
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
    .line 277
    invoke-direct {p0, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    #@1b
    move-result v4

    #@1c
    if-nez v4, :cond_0

    #@1e
    .line 278
    return-object v6

    #@1f
    .line 281
    :cond_0
    new-instance v1, Landroid/content/Intent;

    #@21
    const-string/jumbo v4, "android.intent.action.MAIN"

    #@24
    invoke-direct {v1, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@27
    .line 282
    .local v1, "mainIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    #@2a
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@2d
    .line 283
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@30
    .line 284
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@33
    move-result-wide v2

    #@34
    .line 286
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPm:Landroid/content/pm/PackageManager;

    #@36
    .line 289
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@39
    move-result v5

    #@3a
    .line 287
    const/high16 v6, 0xc0000

    #@3c
    .line 286
    invoke-virtual {v4, v1, v6, v5}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@3f
    move-result-object v0

    #@40
    .line 290
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    #@42
    invoke-direct {v4, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    .line 292
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@48
    .line 290
    return-object v4

    #@49
    .line 291
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_0
    move-exception v4

    #@4a
    .line 292
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4d
    .line 291
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
    .line 417
    invoke-direct {p0, p1, p4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;I)V

    #@3
    .line 418
    invoke-direct {p0, p4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(I)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 419
    const/4 v0, 0x0

    #@a
    return-object v0

    #@b
    .line 422
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
    .line 405
    invoke-direct {p0, p1, p4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;I)V

    #@3
    .line 406
    invoke-direct {p0, p4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(I)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 407
    const/4 v0, 0x0

    #@a
    return v0

    #@b
    .line 410
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
    .line 374
    move-object/from16 v0, p8

    #@2
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;Landroid/os/UserHandle;)V

    #@5
    .line 375
    move-object/from16 v0, p8

    #@7
    invoke-direct {p0, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    .line 376
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
    .line 378
    :cond_0
    if-eqz p5, :cond_1

    #@1b
    if-nez p4, :cond_1

    #@1d
    .line 379
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1f
    .line 380
    const-string/jumbo v3, "To query by shortcut ID, package name must also be set"

    #@22
    .line 379
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v2

    #@26
    .line 383
    :cond_1
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    #@28
    .line 384
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    #@2a
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    #@2d
    move-result v4

    #@2e
    .line 386
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
    .line 384
    invoke-virtual/range {v3 .. v12}, Landroid/content/pm/ShortcutServiceInternal;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;II)Ljava/util/List;

    #@40
    move-result-object v3

    #@41
    .line 383
    invoke-direct {v2, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    #@44
    return-object v2
.end method

.method public hasShortcutHostPermission(Ljava/lang/String;)Z
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 428
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    #@3
    .line 429
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
    .line 121
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
    .line 125
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
    .line 130
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
    .line 136
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3
    .line 135
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
    .line 472
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
    .line 473
    invoke-direct {p0, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    #@1b
    move-result v5

    #@1c
    if-nez v5, :cond_0

    #@1e
    .line 474
    return v4

    #@1f
    .line 477
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@22
    move-result-wide v0

    #@23
    .line 479
    .local v0, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@26
    move-result-object v3

    #@27
    .line 483
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@2a
    move-result v5

    #@2b
    .line 481
    const/high16 v6, 0xc0000

    #@2d
    .line 480
    invoke-interface {v3, p1, v6, v5}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    move-result-object v2

    #@31
    .line 484
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_1

    #@33
    const/4 v4, 0x1

    #@34
    .line 486
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@37
    .line 484
    return v4

    #@38
    .line 485
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    .end local v3    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_0
    move-exception v4

    #@39
    .line 486
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 485
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
    .line 319
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
    .line 320
    invoke-direct {p0, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    #@1b
    move-result v5

    #@1c
    if-nez v5, :cond_0

    #@1e
    .line 321
    return v4

    #@1f
    .line 324
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@22
    move-result-wide v0

    #@23
    .line 326
    .local v0, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@26
    move-result-object v3

    #@27
    .line 330
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@2a
    move-result v5

    #@2b
    .line 328
    const/high16 v6, 0xc0000

    #@2d
    .line 327
    invoke-interface {v3, p1, v6, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    #@30
    move-result-object v2

    #@31
    .line 331
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_1

    #@33
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@35
    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .line 333
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3a
    .line 331
    return v4

    #@3b
    .line 332
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_0
    move-exception v4

    #@3c
    .line 333
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3f
    .line 332
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
    .line 392
    .local p3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;Landroid/os/UserHandle;)V

    #@3
    .line 393
    invoke-direct {p0, p4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 394
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
    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    #@25
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    #@28
    move-result v1

    #@29
    .line 399
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
    .line 398
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/ShortcutServiceInternal;->pinShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    #@33
    .line 391
    return-void
.end method

.method postToPackageMonitorHandler(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mCallbackHandler:Landroid/os/Handler;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@5
    .line 604
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
    .line 174
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@2
    monitor-enter v1

    #@3
    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->unregister(Landroid/os/IInterface;)Z

    #@8
    .line 179
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    #@a
    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getRegisteredCallbackCount()I

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    .line 180
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->stopWatchingPackageBroadcasts()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit v1

    #@14
    .line 173
    return-void

    #@15
    .line 174
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
    .line 299
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
    .line 300
    invoke-direct {p0, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    #@1a
    move-result v3

    #@1b
    if-nez v3, :cond_0

    #@1d
    .line 301
    const/4 v3, 0x0

    #@1e
    return-object v3

    #@1f
    .line 304
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@22
    move-result-wide v0

    #@23
    .line 306
    .local v0, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@26
    move-result-object v2

    #@27
    .line 310
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@2a
    move-result v3

    #@2b
    .line 308
    const/high16 v4, 0xc0000

    #@2d
    .line 307
    invoke-interface {v2, p1, v4, v3}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    move-result-object v3

    #@31
    .line 312
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@34
    .line 307
    return-object v3

    #@35
    .line 311
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_0
    move-exception v3

    #@36
    .line 312
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@39
    .line 311
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
    .line 551
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
    .line 552
    invoke-direct {p0, p4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    #@1a
    move-result v4

    #@1b
    if-nez v4, :cond_0

    #@1d
    .line 553
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
    .line 557
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3a
    move-result-wide v0

    #@3b
    .line 559
    .local v0, "ident":J
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    .line 560
    .local v3, "packageName":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    #@41
    const-string/jumbo v4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    #@44
    .line 561
    const-string/jumbo v5, "package"

    #@47
    const/4 v6, 0x0

    #@48
    invoke-static {v5, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@4b
    move-result-object v5

    #@4c
    .line 560
    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@4f
    .line 562
    .local v2, "intent":Landroid/content/Intent;
    const v4, 0x10008000

    #@52
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@55
    .line 563
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    #@58
    .line 564
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    #@5a
    invoke-virtual {v4, v2, p3, p4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5d
    .line 566
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@60
    .line 550
    return-void

    #@61
    .line 565
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@62
    .line 566
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@65
    .line 565
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
    .line 493
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
    .line 494
    move-object/from16 v0, p4

    #@1d
    invoke-direct {p0, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(Landroid/os/UserHandle;)Z

    #@20
    move-result v11

    #@21
    if-nez v11, :cond_0

    #@23
    .line 495
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
    .line 498
    :cond_0
    new-instance v8, Landroid/content/Intent;

    #@41
    const-string/jumbo v11, "android.intent.action.MAIN"

    #@44
    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@47
    .line 499
    .local v8, "launchIntent":Landroid/content/Intent;
    const-string/jumbo v11, "android.intent.category.LAUNCHER"

    #@4a
    invoke-virtual {v8, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@4d
    .line 500
    move-object/from16 v0, p2

    #@4f
    invoke-direct {p0, v8, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->prepareIntentForLaunch(Landroid/content/Intent;Landroid/graphics/Rect;)V

    #@52
    .line 501
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@55
    move-result-object v11

    #@56
    invoke-virtual {v8, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@59
    .line 503
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@5c
    move-result-wide v6

    #@5d
    .line 505
    .local v6, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@60
    move-result-object v9

    #@61
    .line 509
    .local v9, "pm":Landroid/content/pm/IPackageManager;
    invoke-virtual/range {p4 .. p4}, Landroid/os/UserHandle;->getIdentifier()I

    #@64
    move-result v11

    #@65
    .line 507
    const/high16 v12, 0xc0000

    #@67
    .line 506
    invoke-interface {v9, p1, v12, v11}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    #@6a
    move-result-object v5

    #@6b
    .line 510
    .local v5, "info":Landroid/content/pm/ActivityInfo;
    iget-boolean v11, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    #@6d
    if-nez v11, :cond_1

    #@6f
    .line 511
    new-instance v11, Ljava/lang/SecurityException;

    #@71
    new-instance v12, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v13, "Cannot launch non-exported components "

    #@79
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v12

    #@7d
    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v12

    #@81
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v12

    #@85
    invoke-direct {v11, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@88
    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@89
    .line 536
    .end local v5    # "info":Landroid/content/pm/ActivityInfo;
    .end local v9    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_0
    move-exception v11

    #@8a
    .line 537
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@8d
    .line 536
    throw v11

    #@8e
    .line 518
    .restart local v5    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v9    # "pm":Landroid/content/pm/IPackageManager;
    :cond_1
    :try_start_1
    iget-object v11, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPm:Landroid/content/pm/PackageManager;

    #@90
    .line 521
    invoke-virtual/range {p4 .. p4}, Landroid/os/UserHandle;->getIdentifier()I

    #@93
    move-result v12

    #@94
    .line 519
    const/high16 v13, 0xc0000

    #@96
    .line 518
    invoke-virtual {v11, v8, v13, v12}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@99
    move-result-object v3

    #@9a
    .line 522
    .local v3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@9d
    move-result v10

    #@9e
    .line 523
    .local v10, "size":I
    const/4 v4, 0x0

    #@9f
    .local v4, "i":I
    :goto_0
    if-ge v4, v10, :cond_3

    #@a1
    .line 524
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a4
    move-result-object v11

    #@a5
    check-cast v11, Landroid/content/pm/ResolveInfo;

    #@a7
    iget-object v2, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@a9
    .line 525
    .local v2, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v11, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@ab
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@ae
    move-result-object v12

    #@af
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b2
    move-result v11

    #@b3
    if-eqz v11, :cond_2

    #@b5
    .line 526
    iget-object v11, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@b7
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@ba
    move-result-object v12

    #@bb
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@be
    move-result v11

    #@bf
    .line 525
    if-eqz v11, :cond_2

    #@c1
    .line 529
    invoke-virtual {v8, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@c4
    .line 530
    iget-object v11, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    #@c6
    move-object/from16 v0, p3

    #@c8
    move-object/from16 v1, p4

    #@ca
    invoke-virtual {v11, v8, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@cd
    .line 537
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@d0
    .line 531
    return-void

    #@d1
    .line 523
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@d3
    goto :goto_0

    #@d4
    .line 534
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_3
    :try_start_2
    new-instance v11, Ljava/lang/SecurityException;

    #@d6
    new-instance v12, Ljava/lang/StringBuilder;

    #@d8
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@db
    const-string/jumbo v13, "Attempt to launch activity without  category Intent.CATEGORY_LAUNCHER "

    #@de
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v12

    #@e2
    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v12

    #@e6
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v12

    #@ea
    invoke-direct {v11, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@ed
    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "shortcutId"    # Ljava/lang/String;
    .param p4, "sourceBounds"    # Landroid/graphics/Rect;
    .param p5, "startActivityOptions"    # Landroid/os/Bundle;
    .param p6, "userId"    # I

    #@0
    .prologue
    .line 436
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    #@3
    .line 437
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
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    invoke-direct {p0, p6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureInUserProfiles(ILjava/lang/String;)V

    #@1a
    .line 439
    invoke-direct {p0, p6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isUserEnabled(I)Z

    #@1d
    move-result v0

    #@1e
    if-nez v0, :cond_0

    #@20
    .line 440
    new-instance v0, Ljava/lang/IllegalStateException;

    #@22
    new-instance v1, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v2, "Cannot start a shortcut for disabled profile "

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0

    #@3a
    .line 445
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    #@3c
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    #@3f
    move-result v1

    #@40
    move-object v2, p1

    #@41
    move-object v3, p2

    #@42
    move-object v4, p3

    #@43
    move v5, p6

    #@44
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/ShortcutServiceInternal;->isPinnedByCaller(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    #@47
    move-result v0

    #@48
    if-nez v0, :cond_1

    #@4a
    .line 447
    invoke-direct {p0, p1, p6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;I)V

    #@4d
    .line 450
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    #@4f
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    #@52
    move-result v1

    #@53
    move-object v2, p1

    #@54
    move-object v3, p2

    #@55
    move-object v4, p3

    #@56
    move v5, p6

    #@57
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/ShortcutServiceInternal;->createShortcutIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    #@5a
    move-result-object v8

    #@5b
    .line 452
    .local v8, "intent":Landroid/content/Intent;
    if-nez v8, :cond_2

    #@5d
    .line 453
    const/4 v0, 0x0

    #@5e
    return v0

    #@5f
    .line 457
    :cond_2
    invoke-virtual {v8, p4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    #@62
    .line 458
    invoke-direct {p0, v8, p4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->prepareIntentForLaunch(Landroid/content/Intent;Landroid/graphics/Rect;)V

    #@65
    .line 460
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@68
    move-result-wide v6

    #@69
    .line 462
    .local v6, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    #@6b
    invoke-static {p6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@6e
    move-result-object v1

    #@6f
    invoke-virtual {v0, v8, p5, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@72
    .line 464
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@75
    .line 466
    const/4 v0, 0x1

    #@76
    return v0

    #@77
    .line 463
    :catchall_0
    move-exception v0

    #@78
    .line 464
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@7b
    .line 463
    throw v0
.end method

.method verifyCallingPackage(Ljava/lang/String;)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 241
    const/4 v1, -0x1

    #@1
    .line 243
    .local v1, "packageUid":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPm:Landroid/content/pm/PackageManager;

    #@3
    .line 247
    invoke-static {}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUid()I

    #@6
    move-result v3

    #@7
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    #@a
    move-result v3

    #@b
    .line 244
    const v4, 0xc2000

    #@e
    .line 243
    invoke-virtual {v2, p1, v4, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v1

    #@12
    .line 251
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@15
    move-result v2

    #@16
    if-eq v1, v2, :cond_0

    #@18
    .line 252
    new-instance v2, Ljava/lang/SecurityException;

    #@1a
    const-string/jumbo v3, "Calling package name mismatch"

    #@1d
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 248
    :catch_0
    move-exception v0

    #@22
    .line 249
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
    .line 240
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return-void
.end method
