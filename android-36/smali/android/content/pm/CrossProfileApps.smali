.class public Landroid/content/pm/CrossProfileApps;
.super Ljava/lang/Object;
.source "CrossProfileApps.java"


# static fields
.field public static final whitelist ACTION_CAN_INTERACT_ACROSS_PROFILES_CHANGED:Ljava/lang/String; = "android.content.pm.action.CAN_INTERACT_ACROSS_PROFILES_CHANGED"


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mResources:Landroid/content/res/Resources;

.field private final greylist-max-o mService:Landroid/content/pm/ICrossProfileApps;

.field private final greylist-max-o mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$x33EzZXyqwelNop1RMCq-aFnqqw(Landroid/content/pm/CrossProfileApps;ZLjava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/content/pm/CrossProfileApps;->lambda$getProfileSwitchingLabel$0(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/content/pm/ICrossProfileApps;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/ICrossProfileApps;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    .line 91
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Landroid/content/pm/CrossProfileApps;->mUserManager:Landroid/os/UserManager;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/CrossProfileApps;->mResources:Landroid/content/res/Resources;

    .line 93
    return-void
.end method

.method private blacklist getCallingApplicationLabel()Ljava/lang/CharSequence;
    .registers 5

    .line 383
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 386
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 387
    .local v1, "launchIntent":Landroid/content/Intent;
    if-nez v1, :cond_17

    .line 388
    invoke-direct {p0}, Landroid/content/pm/CrossProfileApps;->getDefaultCallingApplicationLabel()Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 390
    :cond_17
    nop

    .line 392
    const-wide/32 v2, 0x10000

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v2

    .line 391
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v2

    .line 393
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_35

    .line 394
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 396
    :cond_35
    invoke-direct {p0}, Landroid/content/pm/CrossProfileApps;->getDefaultCallingApplicationLabel()Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3
.end method

.method private blacklist getDefaultCallingApplicationLabel()Ljava/lang/CharSequence;
    .registers 5

    .line 400
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 402
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 401
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v0

    .line 400
    return-object v0
.end method

.method private blacklist getDefaultProfileSwitchingLabel(ZLjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "isManagedProfile"    # Z
    .param p2, "label"    # Ljava/lang/String;

    .line 413
    if-eqz p1, :cond_6

    .line 414
    const v0, 0x10405d9

    goto :goto_9

    :cond_6
    const v0, 0x1040a7e

    .line 415
    .local v0, "stringRes":I
    :goto_9
    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mResources:Landroid/content/res/Resources;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getUpdatableProfileSwitchingLabelId(Z)Ljava/lang/String;
    .registers 3
    .param p1, "isManagedProfile"    # Z

    .line 409
    if-eqz p1, :cond_5

    const-string v0, "Core.SWITCH_TO_WORK_LABEL"

    goto :goto_7

    :cond_5
    const-string v0, "Core.SWITCH_TO_PERSONAL_LABEL"

    :goto_7
    return-object v0
.end method

.method private synthetic blacklist lambda$getProfileSwitchingLabel$0(ZLjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "isManagedProfile"    # Z
    .param p2, "callingAppLabel"    # Ljava/lang/String;

    .line 378
    invoke-direct {p0, p1, p2}, Landroid/content/pm/CrossProfileApps;->getDefaultProfileSwitchingLabel(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$resetInteractAcrossProfilesAppOps$1(Ljava/util/Set;Ljava/lang/String;)Z
    .registers 3
    .param p0, "newCrossProfilePackages"    # Ljava/util/Set;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 676
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private greylist-max-o verifyCanAccessUser(Landroid/os/UserHandle;)V
    .registers 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 726
    invoke-virtual {p0}, Landroid/content/pm/CrossProfileApps;->getTargetUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 729
    return-void

    .line 727
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to access "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist canConfigureInteractAcrossProfiles(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 612
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/content/pm/ICrossProfileApps;->canConfigureInteractAcrossProfiles(ILjava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 613
    :catch_d
    move-exception v0

    .line 614
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist canInteractAcrossProfiles()Z
    .registers 3

    .line 514
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/pm/ICrossProfileApps;->canInteractAcrossProfiles(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 515
    :catch_d
    move-exception v0

    .line 516
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist canRequestInteractAcrossProfiles()Z
    .registers 3

    .line 483
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/pm/ICrossProfileApps;->canRequestInteractAcrossProfiles(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 484
    :catch_d
    move-exception v0

    .line 485
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist canUserAttemptToConfigureInteractAcrossProfiles(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 636
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 637
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 636
    invoke-interface {v0, v1, p1}, Landroid/content/pm/ICrossProfileApps;->canUserAttemptToConfigureInteractAcrossProfiles(ILjava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 638
    :catch_d
    move-exception v0

    .line 639
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist clearInteractAcrossProfilesAppOps()V
    .registers 3

    .line 714
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/content/pm/ICrossProfileApps;->clearInteractAcrossProfilesAppOps(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 717
    nop

    .line 718
    return-void

    .line 715
    :catch_d
    move-exception v0

    .line 716
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist createRequestInteractAcrossProfilesIntent()Landroid/content/Intent;
    .registers 4

    .line 538
    invoke-virtual {p0}, Landroid/content/pm/CrossProfileApps;->canRequestInteractAcrossProfiles()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 542
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 543
    .local v0, "settingsIntent":Landroid/content/Intent;
    const-string v1, "android.settings.MANAGE_CROSS_PROFILE_ACCESS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 545
    .local v1, "packageUri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 546
    return-object v0

    .line 539
    .end local v0    # "settingsIntent":Landroid/content/Intent;
    .end local v1    # "packageUri":Landroid/net/Uri;
    :cond_32
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The calling package can not request to interact across profiles."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getProfileSwitchingIconDrawable(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 433
    invoke-direct {p0, p1}, Landroid/content/pm/CrossProfileApps;->verifyCanAccessUser(Landroid/os/UserHandle;)V

    .line 435
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mUserManager:Landroid/os/UserManager;

    .line 436
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    .line 437
    .local v0, "isManagedProfile":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 438
    iget-object v2, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getUserBadgeForDensityNoBackground(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 441
    :cond_1b
    iget-object v2, p0, Landroid/content/pm/CrossProfileApps;->mResources:Landroid/content/res/Resources;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 444
    .local v1, "personalProfileIcon":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 445
    const v2, 0x1060332

    goto :goto_39

    .line 446
    :cond_36
    const v2, 0x1060331

    :goto_39
    nop

    .line 449
    .local v2, "colorId":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 450
    iget-object v4, p0, Landroid/content/pm/CrossProfileApps;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 451
    return-object v1
.end method

.method public whitelist getProfileSwitchingLabel(Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 371
    invoke-direct {p0, p1}, Landroid/content/pm/CrossProfileApps;->verifyCanAccessUser(Landroid/os/UserHandle;)V

    .line 373
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    .line 374
    .local v0, "isManagedProfile":Z
    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 375
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-direct {p0}, Landroid/content/pm/CrossProfileApps;->getCallingApplicationLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 376
    .local v2, "callingAppLabel":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v3

    .line 377
    invoke-direct {p0, v0}, Landroid/content/pm/CrossProfileApps;->getUpdatableProfileSwitchingLabelId(Z)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/pm/CrossProfileApps$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v0, v2}, Landroid/content/pm/CrossProfileApps$$ExternalSyntheticLambda1;-><init>(Landroid/content/pm/CrossProfileApps;ZLjava/lang/String;)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v6

    .line 376
    invoke-virtual {v3, v4, v5, v6}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist getTargetUserProfiles()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 314
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/pm/ICrossProfileApps;->getTargetUserProfiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 315
    :catch_d
    move-exception v0

    .line 316
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isManagedProfile(Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 352
    invoke-direct {p0, p1}, Landroid/content/pm/CrossProfileApps;->verifyCanAccessUser(Landroid/os/UserHandle;)V

    .line 354
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isProfile(Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 334
    invoke-direct {p0, p1}, Landroid/content/pm/CrossProfileApps;->verifyCanAccessUser(Landroid/os/UserHandle;)V

    .line 336
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isProfile(I)Z

    move-result v0

    return v0
.end method

.method public blacklist resetInteractAcrossProfilesAppOps(Ljava/util/Collection;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 671
    .local p1, "previousCrossProfilePackages":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, "newCrossProfilePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 672
    return-void

    .line 674
    :cond_7
    nop

    .line 675
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/content/pm/CrossProfileApps$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Landroid/content/pm/CrossProfileApps$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    .line 676
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 677
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 678
    .local v0, "unsetCrossProfilePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 679
    return-void

    .line 682
    :cond_26
    :try_start_26
    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    iget-object v2, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 683
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 682
    invoke-interface {v1, v2, v0}, Landroid/content/pm/ICrossProfileApps;->resetInteractAcrossProfilesAppOps(ILjava/util/List;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_31} :catch_33

    .line 686
    nop

    .line 687
    return-void

    .line 684
    :catch_33
    move-exception v1

    .line 685
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist setInteractAcrossProfilesAppOp(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newMode"    # I

    .line 591
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/pm/ICrossProfileApps;->setInteractAcrossProfilesAppOp(ILjava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 594
    nop

    .line 595
    return-void

    .line 592
    :catch_d
    move-exception v0

    .line 593
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .registers 12
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "targetUser"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 289
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 290
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_24

    .line 289
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    .end local p1    # "component":Landroid/content/ComponentName;
    .local v4, "component":Landroid/content/ComponentName;
    :try_start_1c
    invoke-interface/range {v0 .. v8}, Landroid/content/pm/ICrossProfileApps;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IZLandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_21

    .line 294
    nop

    .line 295
    return-void

    .line 292
    :catch_21
    move-exception v0

    move-object p1, v0

    goto :goto_27

    .end local v4    # "component":Landroid/content/ComponentName;
    .restart local p1    # "component":Landroid/content/ComponentName;
    :catch_24
    move-exception v0

    move-object v4, p1

    move-object p1, v0

    .line 293
    .restart local v4    # "component":Landroid/content/ComponentName;
    .local p1, "ex":Landroid/os/RemoteException;
    :goto_27
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist startActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 14
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "targetUser"    # Landroid/os/UserHandle;
    .param p3, "callingActivity"    # Landroid/app/Activity;
    .param p4, "options"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 255
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 256
    invoke-virtual {v1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 257
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 258
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 260
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_2f

    .line 262
    if-eqz p3, :cond_23

    :try_start_1a
    invoke-virtual {p3}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1e} :catch_1f

    goto :goto_24

    .line 264
    :catch_1f
    move-exception v0

    move-object v4, p1

    move-object v8, p4

    goto :goto_32

    .line 262
    :cond_23
    const/4 v4, 0x0

    :goto_24
    move-object v7, v4

    .line 255
    const/4 v6, 0x0

    move-object v4, p1

    move-object v8, p4

    .end local p1    # "component":Landroid/content/ComponentName;
    .end local p4    # "options":Landroid/os/Bundle;
    .local v4, "component":Landroid/content/ComponentName;
    .local v8, "options":Landroid/os/Bundle;
    :try_start_28
    invoke-interface/range {v0 .. v8}, Landroid/content/pm/ICrossProfileApps;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IZLandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2b} :catch_2d

    .line 266
    nop

    .line 267
    return-void

    .line 264
    :catch_2d
    move-exception v0

    goto :goto_32

    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v8    # "options":Landroid/os/Bundle;
    .restart local p1    # "component":Landroid/content/ComponentName;
    .restart local p4    # "options":Landroid/os/Bundle;
    :catch_2f
    move-exception v0

    move-object v4, p1

    move-object v8, p4

    .line 265
    .end local p1    # "component":Landroid/content/ComponentName;
    .end local p4    # "options":Landroid/os/Bundle;
    .local v0, "ex":Landroid/os/RemoteException;
    .restart local v4    # "component":Landroid/content/ComponentName;
    .restart local v8    # "options":Landroid/os/Bundle;
    :goto_32
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist startActivity(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/app/Activity;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "targetUser"    # Landroid/os/UserHandle;
    .param p3, "callingActivity"    # Landroid/app/Activity;

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/pm/CrossProfileApps;->startActivity(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 184
    return-void
.end method

.method public whitelist startActivity(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "targetUser"    # Landroid/os/UserHandle;
    .param p3, "callingActivity"    # Landroid/app/Activity;
    .param p4, "options"    # Landroid/os/Bundle;

    .line 214
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 215
    invoke-virtual {v1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 216
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 217
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_2e

    .line 220
    if-eqz p3, :cond_23

    :try_start_1a
    invoke-virtual {p3}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1e} :catch_1f

    goto :goto_24

    .line 222
    :catch_1f
    move-exception v0

    move-object v4, p1

    move-object v7, p4

    goto :goto_31

    .line 220
    :cond_23
    const/4 v4, 0x0

    :goto_24
    move-object v6, v4

    .line 214
    move-object v4, p1

    move-object v7, p4

    .end local p1    # "intent":Landroid/content/Intent;
    .end local p4    # "options":Landroid/os/Bundle;
    .local v4, "intent":Landroid/content/Intent;
    .local v7, "options":Landroid/os/Bundle;
    :try_start_27
    invoke-interface/range {v0 .. v7}, Landroid/content/pm/ICrossProfileApps;->startActivityAsUserByIntent(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_2c

    .line 224
    nop

    .line 225
    return-void

    .line 222
    :catch_2c
    move-exception v0

    goto :goto_31

    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "options":Landroid/os/Bundle;
    .restart local p1    # "intent":Landroid/content/Intent;
    .restart local p4    # "options":Landroid/os/Bundle;
    :catch_2e
    move-exception v0

    move-object v4, p1

    move-object v7, p4

    .line 223
    .end local p1    # "intent":Landroid/content/Intent;
    .end local p4    # "options":Landroid/os/Bundle;
    .local v0, "ex":Landroid/os/RemoteException;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v7    # "options":Landroid/os/Bundle;
    :goto_31
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .registers 12
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "targetUser"    # Landroid/os/UserHandle;

    .line 109
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {v1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 112
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    iget-object v4, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 116
    invoke-virtual {v4}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v7

    .line 117
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_30

    .line 109
    const/4 v6, 0x1

    move-object v4, p1

    .end local p1    # "component":Landroid/content/ComponentName;
    .local v4, "component":Landroid/content/ComponentName;
    :try_start_28
    invoke-interface/range {v0 .. v8}, Landroid/content/pm/ICrossProfileApps;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IZLandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2b} :catch_2d

    .line 120
    nop

    .line 121
    return-void

    .line 118
    :catch_2d
    move-exception v0

    move-object p1, v0

    goto :goto_33

    .end local v4    # "component":Landroid/content/ComponentName;
    .restart local p1    # "component":Landroid/content/ComponentName;
    :catch_30
    move-exception v0

    move-object v4, p1

    move-object p1, v0

    .line 119
    .restart local v4    # "component":Landroid/content/ComponentName;
    .local p1, "ex":Landroid/os/RemoteException;
    :goto_33
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 14
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "targetUser"    # Landroid/os/UserHandle;
    .param p3, "callingActivity"    # Landroid/app/Activity;
    .param p4, "options"    # Landroid/os/Bundle;

    .line 144
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 145
    invoke-virtual {v1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 146
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 147
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_2f

    .line 151
    if-eqz p3, :cond_23

    :try_start_1a
    invoke-virtual {p3}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1e} :catch_1f

    goto :goto_24

    .line 153
    :catch_1f
    move-exception v0

    move-object v4, p1

    move-object v8, p4

    goto :goto_32

    .line 151
    :cond_23
    const/4 v4, 0x0

    :goto_24
    move-object v7, v4

    .line 144
    const/4 v6, 0x1

    move-object v4, p1

    move-object v8, p4

    .end local p1    # "component":Landroid/content/ComponentName;
    .end local p4    # "options":Landroid/os/Bundle;
    .local v4, "component":Landroid/content/ComponentName;
    .local v8, "options":Landroid/os/Bundle;
    :try_start_28
    invoke-interface/range {v0 .. v8}, Landroid/content/pm/ICrossProfileApps;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IZLandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2b} :catch_2d

    .line 155
    nop

    .line 156
    return-void

    .line 153
    :catch_2d
    move-exception v0

    goto :goto_32

    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v8    # "options":Landroid/os/Bundle;
    .restart local p1    # "component":Landroid/content/ComponentName;
    .restart local p4    # "options":Landroid/os/Bundle;
    :catch_2f
    move-exception v0

    move-object v4, p1

    move-object v8, p4

    .line 154
    .end local p1    # "component":Landroid/content/ComponentName;
    .end local p4    # "options":Landroid/os/Bundle;
    .local v0, "ex":Landroid/os/RemoteException;
    .restart local v4    # "component":Landroid/content/ComponentName;
    .restart local v8    # "options":Landroid/os/Bundle;
    :goto_32
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
