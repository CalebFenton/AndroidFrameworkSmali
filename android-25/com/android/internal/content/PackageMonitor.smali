.class public abstract Lcom/android/internal/content/PackageMonitor;
.super Landroid/content/BroadcastReceiver;
.source "PackageMonitor.java"


# static fields
.field public static final PACKAGE_PERMANENT_CHANGE:I = 0x3

.field public static final PACKAGE_TEMPORARY_CHANGE:I = 0x2

.field public static final PACKAGE_UNCHANGED:I = 0x0

.field public static final PACKAGE_UPDATING:I = 0x1

.field static final sExternalFilt:Landroid/content/IntentFilter;

.field static final sNonDataFilt:Landroid/content/IntentFilter;

.field static final sPackageFilt:Landroid/content/IntentFilter;


# instance fields
.field mAppearingPackages:[Ljava/lang/String;

.field mChangeType:I

.field mChangeUserId:I

.field mDisappearingPackages:[Ljava/lang/String;

.field mModifiedPackages:[Ljava/lang/String;

.field mRegisteredContext:Landroid/content/Context;

.field mRegisteredHandler:Landroid/os/Handler;

.field mSomePackagesChanged:Z

.field mTempArray:[Ljava/lang/String;

.field final mUpdatingPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 38
    new-instance v0, Landroid/content/IntentFilter;

    #@2
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    #@7
    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    #@9
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@c
    sput-object v0, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    #@e
    .line 40
    new-instance v0, Landroid/content/IntentFilter;

    #@10
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@13
    sput-object v0, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    #@15
    .line 43
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    #@17
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    #@1a
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1d
    .line 44
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    #@1f
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    #@22
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@25
    .line 45
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    #@27
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    #@2a
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@2d
    .line 46
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    #@2f
    const-string/jumbo v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    #@32
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@35
    .line 47
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    #@37
    const-string/jumbo v1, "android.intent.action.PACKAGE_RESTARTED"

    #@3a
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@3d
    .line 48
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    #@3f
    const-string/jumbo v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    #@42
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@45
    .line 49
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    #@47
    const-string/jumbo v1, "package"

    #@4a
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@4d
    .line 50
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    #@4f
    const-string/jumbo v1, "android.intent.action.UID_REMOVED"

    #@52
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@55
    .line 51
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    #@57
    const-string/jumbo v1, "android.intent.action.USER_STOPPED"

    #@5a
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@5d
    .line 52
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    #@5f
    const-string/jumbo v1, "android.intent.action.PACKAGES_SUSPENDED"

    #@62
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@65
    .line 53
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    #@67
    const-string/jumbo v1, "android.intent.action.PACKAGES_UNSUSPENDED"

    #@6a
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@6d
    .line 54
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    #@6f
    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    #@72
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@75
    .line 55
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    #@77
    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@7a
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@7d
    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    .line 58
    new-instance v0, Ljava/util/HashSet;

    #@5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    #@a
    .line 66
    const/16 v0, -0x2710

    #@c
    iput v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    #@e
    .line 69
    const/4 v0, 0x1

    #@f
    new-array v0, v0, [Ljava/lang/String;

    #@11
    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    #@13
    .line 37
    return-void
.end method


# virtual methods
.method public anyPackagesAppearing()Z
    .locals 1

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public anyPackagesDisappearing()Z
    .locals 1

    #@0
    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public didSomePackagesChange()Z
    .locals 1

    #@0
    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    #@2
    return v0
.end method

.method public getChangingUserId()I
    .locals 1

    #@0
    .prologue
    .line 283
    iget v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    #@2
    return v0
.end method

.method getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 287
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@4
    move-result-object v1

    #@5
    .line 288
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    #@7
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 289
    .local v0, "pkg":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getRegisteredHandler()Landroid/os/Handler;
    .locals 1

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method public isPackageAppearing(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 229
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 230
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    #@7
    array-length v1, v1

    #@8
    add-int/lit8 v0, v1, -0x1

    #@a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@c
    .line 231
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    #@e
    aget-object v1, v1, v0

    #@10
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 232
    iget v1, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@18
    return v1

    #@19
    .line 230
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1b
    goto :goto_0

    #@1c
    .line 236
    .end local v0    # "i":I
    :cond_1
    return v2
.end method

.method public isPackageDisappearing(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 244
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 245
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    #@7
    array-length v1, v1

    #@8
    add-int/lit8 v0, v1, -0x1

    #@a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@c
    .line 246
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    #@e
    aget-object v1, v1, v0

    #@10
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 247
    iget v1, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@18
    return v1

    #@19
    .line 245
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1b
    goto :goto_0

    #@1c
    .line 251
    .end local v0    # "i":I
    :cond_1
    return v2
.end method

.method public isPackageModified(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 263
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 264
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    #@7
    array-length v1, v1

    #@8
    add-int/lit8 v0, v1, -0x1

    #@a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@c
    .line 265
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    #@e
    aget-object v1, v1, v0

    #@10
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 266
    const/4 v1, 0x1

    #@17
    return v1

    #@18
    .line 264
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1a
    goto :goto_0

    #@1b
    .line 270
    .end local v0    # "i":I
    :cond_1
    return v2
.end method

.method isPackageUpdating(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    #@2
    monitor-enter v1

    #@3
    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 118
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public isReplacing()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 259
    iget v1, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@3
    if-ne v1, v0, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public onBeginPackageChanges()V
    .locals 0

    #@0
    .prologue
    .line 123
    return-void
.end method

.method public onFinishPackageChanges()V
    .locals 0

    #@0
    .prologue
    .line 276
    return-void
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    #@0
    .prologue
    .line 180
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onHandleUserStop(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 183
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 129
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 215
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 169
    if-eqz p3, :cond_1

    #@3
    .line 170
    array-length v3, p3

    #@4
    move v1, v2

    #@5
    :goto_0
    if-ge v1, v3, :cond_1

    #@7
    aget-object v0, p3, v1

    #@9
    .line 171
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_0

    #@f
    .line 172
    const/4 v1, 0x1

    #@10
    return v1

    #@11
    .line 170
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 176
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method public onPackageDataCleared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 279
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 209
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 221
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 135
    return-void
.end method

.method public onPackageRemovedAllUsers(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 142
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 148
    return-void
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 145
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 0
    .param p1, "packages"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 189
    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;)V
    .locals 0
    .param p1, "packages"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 195
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 0
    .param p1, "packages"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 192
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;)V
    .locals 0
    .param p1, "packages"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 198
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/16 v12, -0x2710

    #@2
    const/4 v7, 0x2

    #@3
    const/4 v10, 0x0

    #@4
    const/4 v8, 0x1

    #@5
    const/4 v11, 0x0

    #@6
    .line 294
    const-string/jumbo v9, "android.intent.extra.user_handle"

    #@9
    invoke-virtual {p2, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@c
    move-result v9

    #@d
    iput v9, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    #@f
    .line 296
    iget v9, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    #@11
    if-ne v9, v12, :cond_0

    #@13
    .line 297
    const-string/jumbo v7, "PackageMonitor"

    #@16
    new-instance v8, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v9, "Intent broadcast does not contain user handle: "

    #@1e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v8

    #@22
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v8

    #@26
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v8

    #@2a
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 298
    return-void

    #@2e
    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onBeginPackageChanges()V

    #@31
    .line 302
    iput-object v10, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    #@33
    iput-object v10, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    #@35
    .line 303
    iput-boolean v11, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    #@37
    .line 305
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    .line 306
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v9, "android.intent.action.PACKAGE_ADDED"

    #@3e
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v9

    #@42
    if-eqz v9, :cond_4

    #@44
    .line 307
    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    .line 308
    .local v4, "pkg":Ljava/lang/String;
    const-string/jumbo v7, "android.intent.extra.UID"

    #@4b
    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@4e
    move-result v6

    #@4f
    .line 312
    .local v6, "uid":I
    iput-boolean v8, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    #@51
    .line 313
    if-eqz v4, :cond_1

    #@53
    .line 314
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    #@55
    iput-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    #@57
    .line 315
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    #@59
    aput-object v4, v7, v11

    #@5b
    .line 316
    const-string/jumbo v7, "android.intent.extra.REPLACING"

    #@5e
    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@61
    move-result v7

    #@62
    if-eqz v7, :cond_3

    #@64
    .line 317
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    #@66
    iput-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    #@68
    .line 318
    iput v8, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@6a
    .line 319
    invoke-virtual {p0, v4, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateFinished(Ljava/lang/String;I)V

    #@6d
    .line 320
    invoke-virtual {p0, v4}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    #@70
    .line 325
    :goto_0
    iget v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@72
    invoke-virtual {p0, v4, v7}, Lcom/android/internal/content/PackageMonitor;->onPackageAppeared(Ljava/lang/String;I)V

    #@75
    .line 326
    iget v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@77
    if-ne v7, v8, :cond_1

    #@79
    .line 327
    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    #@7b
    monitor-enter v8

    #@7c
    .line 328
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    #@7e
    invoke-virtual {v7, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@81
    monitor-exit v8

    #@82
    .line 430
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v6    # "uid":I
    :cond_1
    :goto_1
    iget-boolean v7, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    #@84
    if-eqz v7, :cond_2

    #@86
    .line 431
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onSomePackagesChanged()V

    #@89
    .line 434
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onFinishPackageChanges()V

    #@8c
    .line 435
    iput v12, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    #@8e
    .line 293
    return-void

    #@8f
    .line 322
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v6    # "uid":I
    :cond_3
    const/4 v7, 0x3

    #@90
    iput v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@92
    .line 323
    invoke-virtual {p0, v4, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    #@95
    goto :goto_0

    #@96
    .line 327
    :catchall_0
    move-exception v7

    #@97
    monitor-exit v8

    #@98
    throw v7

    #@99
    .line 332
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v6    # "uid":I
    :cond_4
    const-string/jumbo v9, "android.intent.action.PACKAGE_REMOVED"

    #@9c
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9f
    move-result v9

    #@a0
    if-eqz v9, :cond_7

    #@a2
    .line 333
    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    #@a5
    move-result-object v4

    #@a6
    .line 334
    .restart local v4    # "pkg":Ljava/lang/String;
    const-string/jumbo v7, "android.intent.extra.UID"

    #@a9
    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@ac
    move-result v6

    #@ad
    .line 335
    .restart local v6    # "uid":I
    if-eqz v4, :cond_1

    #@af
    .line 336
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    #@b1
    iput-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    #@b3
    .line 337
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    #@b5
    aput-object v4, v7, v11

    #@b7
    .line 338
    const-string/jumbo v7, "android.intent.extra.REPLACING"

    #@ba
    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@bd
    move-result v7

    #@be
    if-eqz v7, :cond_6

    #@c0
    .line 339
    iput v8, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@c2
    .line 340
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    #@c4
    monitor-enter v7

    #@c5
    monitor-exit v7

    #@c6
    .line 344
    invoke-virtual {p0, v4, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateStarted(Ljava/lang/String;I)V

    #@c9
    .line 356
    :cond_5
    :goto_2
    iget v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@cb
    invoke-virtual {p0, v4, v7}, Lcom/android/internal/content/PackageMonitor;->onPackageDisappeared(Ljava/lang/String;I)V

    #@ce
    goto :goto_1

    #@cf
    .line 346
    :cond_6
    const/4 v7, 0x3

    #@d0
    iput v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@d2
    .line 350
    iput-boolean v8, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    #@d4
    .line 351
    invoke-virtual {p0, v4, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    #@d7
    .line 352
    const-string/jumbo v7, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    #@da
    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@dd
    move-result v7

    #@de
    if-eqz v7, :cond_5

    #@e0
    .line 353
    invoke-virtual {p0, v4, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageRemovedAllUsers(Ljava/lang/String;I)V

    #@e3
    goto :goto_2

    #@e4
    .line 358
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v6    # "uid":I
    :cond_7
    const-string/jumbo v9, "android.intent.action.PACKAGE_CHANGED"

    #@e7
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ea
    move-result v9

    #@eb
    if-eqz v9, :cond_9

    #@ed
    .line 359
    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    #@f0
    move-result-object v4

    #@f1
    .line 360
    .restart local v4    # "pkg":Ljava/lang/String;
    const-string/jumbo v7, "android.intent.extra.UID"

    #@f4
    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@f7
    move-result v6

    #@f8
    .line 362
    .restart local v6    # "uid":I
    const-string/jumbo v7, "android.intent.extra.changed_component_name_list"

    #@fb
    .line 361
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@fe
    move-result-object v2

    #@ff
    .line 363
    .local v2, "components":[Ljava/lang/String;
    if-eqz v4, :cond_1

    #@101
    .line 364
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    #@103
    iput-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    #@105
    .line 365
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    #@107
    aput-object v4, v7, v11

    #@109
    .line 366
    const/4 v7, 0x3

    #@10a
    iput v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@10c
    .line 367
    invoke-virtual {p0, v4, v6, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z

    #@10f
    move-result v7

    #@110
    if-eqz v7, :cond_8

    #@112
    .line 368
    iput-boolean v8, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    #@114
    .line 370
    :cond_8
    invoke-virtual {p0, v4}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    #@117
    goto/16 :goto_1

    #@119
    .line 372
    .end local v2    # "components":[Ljava/lang/String;
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v6    # "uid":I
    :cond_9
    const-string/jumbo v9, "android.intent.action.PACKAGE_DATA_CLEARED"

    #@11c
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11f
    move-result v9

    #@120
    if-eqz v9, :cond_a

    #@122
    .line 373
    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    #@125
    move-result-object v4

    #@126
    .line 374
    .restart local v4    # "pkg":Ljava/lang/String;
    const-string/jumbo v7, "android.intent.extra.UID"

    #@129
    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@12c
    move-result v6

    #@12d
    .line 375
    .restart local v6    # "uid":I
    if-eqz v4, :cond_1

    #@12f
    .line 376
    invoke-virtual {p0, v4, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageDataCleared(Ljava/lang/String;I)V

    #@132
    goto/16 :goto_1

    #@134
    .line 378
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v6    # "uid":I
    :cond_a
    const-string/jumbo v9, "android.intent.action.QUERY_PACKAGE_RESTART"

    #@137
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13a
    move-result v9

    #@13b
    if-eqz v9, :cond_b

    #@13d
    .line 379
    const-string/jumbo v8, "android.intent.extra.PACKAGES"

    #@140
    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@143
    move-result-object v8

    #@144
    iput-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    #@146
    .line 380
    iput v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@148
    .line 382
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    #@14a
    .line 383
    const-string/jumbo v8, "android.intent.extra.UID"

    #@14d
    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@150
    move-result v8

    #@151
    .line 381
    invoke-virtual {p0, p2, v7, v8, v11}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    #@154
    move-result v1

    #@155
    .line 384
    .local v1, "canRestart":Z
    if-eqz v1, :cond_1

    #@157
    const/4 v7, -0x1

    #@158
    invoke-virtual {p0, v7}, Lcom/android/internal/content/PackageMonitor;->setResultCode(I)V

    #@15b
    goto/16 :goto_1

    #@15d
    .line 385
    .end local v1    # "canRestart":Z
    :cond_b
    const-string/jumbo v9, "android.intent.action.PACKAGE_RESTARTED"

    #@160
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@163
    move-result v9

    #@164
    if-eqz v9, :cond_c

    #@166
    .line 386
    new-array v9, v8, [Ljava/lang/String;

    #@168
    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    #@16b
    move-result-object v10

    #@16c
    aput-object v10, v9, v11

    #@16e
    iput-object v9, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    #@170
    .line 387
    iput v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@172
    .line 388
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    #@174
    .line 389
    const-string/jumbo v9, "android.intent.extra.UID"

    #@177
    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@17a
    move-result v9

    #@17b
    .line 388
    invoke-virtual {p0, p2, v7, v9, v8}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    #@17e
    goto/16 :goto_1

    #@180
    .line 390
    :cond_c
    const-string/jumbo v9, "android.intent.action.UID_REMOVED"

    #@183
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@186
    move-result v9

    #@187
    if-eqz v9, :cond_d

    #@189
    .line 391
    const-string/jumbo v7, "android.intent.extra.UID"

    #@18c
    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@18f
    move-result v7

    #@190
    invoke-virtual {p0, v7}, Lcom/android/internal/content/PackageMonitor;->onUidRemoved(I)V

    #@193
    goto/16 :goto_1

    #@195
    .line 392
    :cond_d
    const-string/jumbo v9, "android.intent.action.USER_STOPPED"

    #@198
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19b
    move-result v9

    #@19c
    if-eqz v9, :cond_e

    #@19e
    .line 393
    const-string/jumbo v7, "android.intent.extra.user_handle"

    #@1a1
    invoke-virtual {p2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@1a4
    move-result v7

    #@1a5
    if-eqz v7, :cond_1

    #@1a7
    .line 394
    const-string/jumbo v7, "android.intent.extra.user_handle"

    #@1aa
    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@1ad
    move-result v7

    #@1ae
    invoke-virtual {p0, p2, v7}, Lcom/android/internal/content/PackageMonitor;->onHandleUserStop(Landroid/content/Intent;I)V

    #@1b1
    goto/16 :goto_1

    #@1b3
    .line 396
    :cond_e
    const-string/jumbo v9, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    #@1b6
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b9
    move-result v9

    #@1ba
    if-eqz v9, :cond_10

    #@1bc
    .line 397
    const-string/jumbo v9, "android.intent.extra.changed_package_list"

    #@1bf
    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@1c2
    move-result-object v5

    #@1c3
    .line 398
    .local v5, "pkgList":[Ljava/lang/String;
    iput-object v5, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    #@1c5
    .line 399
    const-string/jumbo v9, "android.intent.extra.REPLACING"

    #@1c8
    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@1cb
    move-result v9

    #@1cc
    if-eqz v9, :cond_f

    #@1ce
    move v7, v8

    #@1cf
    :cond_f
    iput v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@1d1
    .line 401
    iput-boolean v8, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    #@1d3
    .line 402
    if-eqz v5, :cond_1

    #@1d5
    .line 403
    invoke-virtual {p0, v5}, Lcom/android/internal/content/PackageMonitor;->onPackagesAvailable([Ljava/lang/String;)V

    #@1d8
    .line 404
    const/4 v3, 0x0

    #@1d9
    .local v3, "i":I
    :goto_3
    array-length v7, v5

    #@1da
    if-ge v3, v7, :cond_1

    #@1dc
    .line 405
    aget-object v7, v5, v3

    #@1de
    iget v8, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@1e0
    invoke-virtual {p0, v7, v8}, Lcom/android/internal/content/PackageMonitor;->onPackageAppeared(Ljava/lang/String;I)V

    #@1e3
    .line 404
    add-int/lit8 v3, v3, 0x1

    #@1e5
    goto :goto_3

    #@1e6
    .line 408
    .end local v3    # "i":I
    .end local v5    # "pkgList":[Ljava/lang/String;
    :cond_10
    const-string/jumbo v9, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@1e9
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ec
    move-result v9

    #@1ed
    if-eqz v9, :cond_12

    #@1ef
    .line 409
    const-string/jumbo v9, "android.intent.extra.changed_package_list"

    #@1f2
    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@1f5
    move-result-object v5

    #@1f6
    .line 410
    .restart local v5    # "pkgList":[Ljava/lang/String;
    iput-object v5, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    #@1f8
    .line 411
    const-string/jumbo v9, "android.intent.extra.REPLACING"

    #@1fb
    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@1fe
    move-result v9

    #@1ff
    if-eqz v9, :cond_11

    #@201
    move v7, v8

    #@202
    :cond_11
    iput v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@204
    .line 413
    iput-boolean v8, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    #@206
    .line 414
    if-eqz v5, :cond_1

    #@208
    .line 415
    invoke-virtual {p0, v5}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnavailable([Ljava/lang/String;)V

    #@20b
    .line 416
    const/4 v3, 0x0

    #@20c
    .restart local v3    # "i":I
    :goto_4
    array-length v7, v5

    #@20d
    if-ge v3, v7, :cond_1

    #@20f
    .line 417
    aget-object v7, v5, v3

    #@211
    iget v8, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@213
    invoke-virtual {p0, v7, v8}, Lcom/android/internal/content/PackageMonitor;->onPackageDisappeared(Ljava/lang/String;I)V

    #@216
    .line 416
    add-int/lit8 v3, v3, 0x1

    #@218
    goto :goto_4

    #@219
    .line 420
    .end local v3    # "i":I
    .end local v5    # "pkgList":[Ljava/lang/String;
    :cond_12
    const-string/jumbo v7, "android.intent.action.PACKAGES_SUSPENDED"

    #@21c
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21f
    move-result v7

    #@220
    if-eqz v7, :cond_13

    #@222
    .line 421
    const-string/jumbo v7, "android.intent.extra.changed_package_list"

    #@225
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@228
    move-result-object v5

    #@229
    .line 422
    .restart local v5    # "pkgList":[Ljava/lang/String;
    iput-boolean v8, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    #@22b
    .line 423
    invoke-virtual {p0, v5}, Lcom/android/internal/content/PackageMonitor;->onPackagesSuspended([Ljava/lang/String;)V

    #@22e
    goto/16 :goto_1

    #@230
    .line 424
    .end local v5    # "pkgList":[Ljava/lang/String;
    :cond_13
    const-string/jumbo v7, "android.intent.action.PACKAGES_UNSUSPENDED"

    #@233
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@236
    move-result v7

    #@237
    if-eqz v7, :cond_1

    #@239
    .line 425
    const-string/jumbo v7, "android.intent.extra.changed_package_list"

    #@23c
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@23f
    move-result-object v5

    #@240
    .line 426
    .restart local v5    # "pkgList":[Ljava/lang/String;
    iput-boolean v8, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    #@242
    .line 427
    invoke-virtual {p0, v5}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnsuspended([Ljava/lang/String;)V

    #@245
    goto/16 :goto_1
.end method

.method public onSomePackagesChanged()V
    .locals 0

    #@0
    .prologue
    .line 273
    return-void
.end method

.method public onUidRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 186
    return-void
.end method

.method public register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thread"    # Landroid/os/Looper;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "externalStorage"    # Z

    #@0
    .prologue
    .line 78
    if-nez p2, :cond_0

    #@2
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    .line 77
    :goto_0
    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V

    #@9
    .line 76
    return-void

    #@a
    .line 78
    :cond_0
    new-instance v0, Landroid/os/Handler;

    #@c
    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@f
    goto :goto_0
.end method

.method public register(Landroid/content/Context;Landroid/os/Looper;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thread"    # Landroid/os/Looper;
    .param p3, "externalStorage"    # Z

    #@0
    .prologue
    .line 72
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    #@4
    .line 71
    return-void
.end method

.method public register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "externalStorage"    # Z
    .param p4, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 83
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Already registered"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 86
    :cond_0
    iput-object p1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    #@10
    .line 87
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/os/Handler;

    #@16
    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    #@18
    .line 88
    if-eqz p2, :cond_2

    #@1a
    .line 89
    sget-object v3, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    #@1c
    iget-object v5, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    #@1e
    move-object v0, p1

    #@1f
    move-object v1, p0

    #@20
    move-object v2, p2

    #@21
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@24
    .line 90
    sget-object v3, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    #@26
    iget-object v5, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    #@28
    move-object v0, p1

    #@29
    move-object v1, p0

    #@2a
    move-object v2, p2

    #@2b
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@2e
    .line 91
    if-eqz p3, :cond_1

    #@30
    .line 92
    sget-object v3, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    #@32
    .line 93
    iget-object v5, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    #@34
    move-object v0, p1

    #@35
    move-object v1, p0

    #@36
    move-object v2, p2

    #@37
    .line 92
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@3a
    .line 82
    :cond_1
    :goto_0
    return-void

    #@3b
    .line 96
    :cond_2
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    #@3d
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    #@3f
    invoke-virtual {p1, p0, v0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@42
    .line 97
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    #@44
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    #@46
    invoke-virtual {p1, p0, v0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@49
    .line 98
    if-eqz p3, :cond_1

    #@4b
    .line 99
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    #@4d
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    #@4f
    invoke-virtual {p1, p0, v0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@52
    goto :goto_0
.end method

.method public unregister()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 109
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Not registered"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    #@10
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@13
    .line 113
    iput-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    #@15
    .line 108
    return-void
.end method
