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
    .line 37
    new-instance v0, Landroid/content/IntentFilter;

    #@2
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    #@7
    .line 38
    new-instance v0, Landroid/content/IntentFilter;

    #@9
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@c
    sput-object v0, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    #@e
    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    #@10
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@13
    sput-object v0, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    #@15
    .line 42
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    #@17
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    #@1a
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1d
    .line 43
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    #@1f
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    #@22
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@25
    .line 44
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    #@27
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    #@2a
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@2d
    .line 45
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    #@2f
    const-string/jumbo v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    #@32
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@35
    .line 46
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    #@37
    const-string/jumbo v1, "android.intent.action.PACKAGE_RESTARTED"

    #@3a
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@3d
    .line 47
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    #@3f
    const-string/jumbo v1, "package"

    #@42
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@45
    .line 48
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    #@47
    const-string/jumbo v1, "android.intent.action.UID_REMOVED"

    #@4a
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@4d
    .line 49
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    #@4f
    const-string/jumbo v1, "android.intent.action.USER_STOPPED"

    #@52
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@55
    .line 50
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    #@57
    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    #@5a
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@5d
    .line 51
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    #@5f
    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@62
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@65
    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    .line 54
    new-instance v0, Ljava/util/HashSet;

    #@5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    #@a
    .line 62
    const/16 v0, -0x2710

    #@c
    iput v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    #@e
    .line 65
    const/4 v0, 0x1

    #@f
    new-array v0, v0, [Ljava/lang/String;

    #@11
    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    #@13
    .line 36
    return-void
.end method


# virtual methods
.method public anyPackagesAppearing()Z
    .locals 1

    #@0
    .prologue
    .line 228
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
    .line 243
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
    .line 213
    iget-boolean v0, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    #@2
    return v0
.end method

.method public getChangingUserId()I
    .locals 1

    #@0
    .prologue
    .line 268
    iget v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    #@2
    return v0
.end method

.method getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 272
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@3
    move-result-object v1

    #@4
    .line 273
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    #@6
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 274
    :goto_0
    return-object v0

    #@b
    .line 273
    :cond_0
    const/4 v0, 0x0

    #@c
    .local v0, "pkg":Ljava/lang/String;
    goto :goto_0
.end method

.method public getRegisteredHandler()Landroid/os/Handler;
    .locals 1

    #@0
    .prologue
    .line 99
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
    .line 217
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 218
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
    .line 219
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
    .line 220
    iget v1, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@18
    return v1

    #@19
    .line 218
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1b
    goto :goto_0

    #@1c
    .line 224
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
    .line 232
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 233
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
    .line 234
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
    .line 235
    iget v1, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@18
    return v1

    #@19
    .line 233
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1b
    goto :goto_0

    #@1c
    .line 239
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
    .line 251
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 252
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
    .line 253
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
    .line 254
    const/4 v1, 0x1

    #@17
    return v1

    #@18
    .line 252
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1a
    goto :goto_0

    #@1b
    .line 258
    .end local v0    # "i":I
    :cond_1
    return v2
.end method

.method isPackageUpdating(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 112
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    #@2
    monitor-enter v1

    #@3
    .line 113
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
    .line 112
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
    .line 247
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
    .line 117
    return-void
.end method

.method public onFinishPackageChanges()V
    .locals 0

    #@0
    .prologue
    .line 264
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
    .line 174
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
    .line 177
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 123
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 203
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
    .line 163
    if-eqz p3, :cond_1

    #@3
    .line 164
    array-length v3, p3

    #@4
    move v1, v2

    #@5
    :goto_0
    if-ge v1, v3, :cond_1

    #@7
    aget-object v0, p3, v1

    #@9
    .line 165
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_0

    #@f
    .line 166
    const/4 v1, 0x1

    #@10
    return v1

    #@11
    .line 164
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 170
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 197
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 209
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 129
    return-void
.end method

.method public onPackageRemovedAllUsers(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 136
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 142
    return-void
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 139
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 0
    .param p1, "packages"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 183
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 0
    .param p1, "packages"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 186
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
    .line 279
    const-string/jumbo v9, "android.intent.extra.user_handle"

    #@9
    invoke-virtual {p2, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@c
    move-result v9

    #@d
    iput v9, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    #@f
    .line 281
    iget v9, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    #@11
    if-ne v9, v12, :cond_0

    #@13
    .line 282
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
    .line 283
    return-void

    #@2e
    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onBeginPackageChanges()V

    #@31
    .line 287
    iput-object v10, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    #@33
    iput-object v10, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    #@35
    .line 288
    iput-boolean v11, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    #@37
    .line 290
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    .line 291
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v9, "android.intent.action.PACKAGE_ADDED"

    #@3e
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v9

    #@42
    if-eqz v9, :cond_4

    #@44
    .line 292
    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    .line 293
    .local v4, "pkg":Ljava/lang/String;
    const-string/jumbo v7, "android.intent.extra.UID"

    #@4b
    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@4e
    move-result v6

    #@4f
    .line 297
    .local v6, "uid":I
    iput-boolean v8, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    #@51
    .line 298
    if-eqz v4, :cond_1

    #@53
    .line 299
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    #@55
    iput-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    #@57
    .line 300
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    #@59
    aput-object v4, v7, v11

    #@5b
    .line 301
    const-string/jumbo v7, "android.intent.extra.REPLACING"

    #@5e
    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@61
    move-result v7

    #@62
    if-eqz v7, :cond_3

    #@64
    .line 302
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    #@66
    iput-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    #@68
    .line 303
    iput v8, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@6a
    .line 304
    invoke-virtual {p0, v4, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateFinished(Ljava/lang/String;I)V

    #@6d
    .line 305
    invoke-virtual {p0, v4}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    #@70
    .line 310
    :goto_0
    iget v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@72
    invoke-virtual {p0, v4, v7}, Lcom/android/internal/content/PackageMonitor;->onPackageAppeared(Ljava/lang/String;I)V

    #@75
    .line 311
    iget v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@77
    if-ne v7, v8, :cond_1

    #@79
    .line 312
    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    #@7b
    monitor-enter v8

    #@7c
    .line 313
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    #@7e
    invoke-virtual {v7, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@81
    monitor-exit v8

    #@82
    .line 401
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v6    # "uid":I
    :cond_1
    :goto_1
    iget-boolean v7, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    #@84
    if-eqz v7, :cond_2

    #@86
    .line 402
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onSomePackagesChanged()V

    #@89
    .line 405
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onFinishPackageChanges()V

    #@8c
    .line 406
    iput v12, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    #@8e
    .line 278
    return-void

    #@8f
    .line 307
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v6    # "uid":I
    :cond_3
    const/4 v7, 0x3

    #@90
    iput v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@92
    .line 308
    invoke-virtual {p0, v4, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    #@95
    goto :goto_0

    #@96
    .line 312
    :catchall_0
    move-exception v7

    #@97
    monitor-exit v8

    #@98
    throw v7

    #@99
    .line 317
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
    .line 318
    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    #@a5
    move-result-object v4

    #@a6
    .line 319
    .restart local v4    # "pkg":Ljava/lang/String;
    const-string/jumbo v7, "android.intent.extra.UID"

    #@a9
    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@ac
    move-result v6

    #@ad
    .line 320
    .restart local v6    # "uid":I
    if-eqz v4, :cond_1

    #@af
    .line 321
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    #@b1
    iput-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    #@b3
    .line 322
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    #@b5
    aput-object v4, v7, v11

    #@b7
    .line 323
    const-string/jumbo v7, "android.intent.extra.REPLACING"

    #@ba
    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@bd
    move-result v7

    #@be
    if-eqz v7, :cond_6

    #@c0
    .line 324
    iput v8, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@c2
    .line 325
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    #@c4
    monitor-enter v7

    #@c5
    monitor-exit v7

    #@c6
    .line 329
    invoke-virtual {p0, v4, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateStarted(Ljava/lang/String;I)V

    #@c9
    .line 341
    :cond_5
    :goto_2
    iget v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@cb
    invoke-virtual {p0, v4, v7}, Lcom/android/internal/content/PackageMonitor;->onPackageDisappeared(Ljava/lang/String;I)V

    #@ce
    goto :goto_1

    #@cf
    .line 331
    :cond_6
    const/4 v7, 0x3

    #@d0
    iput v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@d2
    .line 335
    iput-boolean v8, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    #@d4
    .line 336
    invoke-virtual {p0, v4, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    #@d7
    .line 337
    const-string/jumbo v7, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    #@da
    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@dd
    move-result v7

    #@de
    if-eqz v7, :cond_5

    #@e0
    .line 338
    invoke-virtual {p0, v4, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageRemovedAllUsers(Ljava/lang/String;I)V

    #@e3
    goto :goto_2

    #@e4
    .line 343
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
    .line 344
    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    #@f0
    move-result-object v4

    #@f1
    .line 345
    .restart local v4    # "pkg":Ljava/lang/String;
    const-string/jumbo v7, "android.intent.extra.UID"

    #@f4
    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@f7
    move-result v6

    #@f8
    .line 347
    .restart local v6    # "uid":I
    const-string/jumbo v7, "android.intent.extra.changed_component_name_list"

    #@fb
    .line 346
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@fe
    move-result-object v2

    #@ff
    .line 348
    .local v2, "components":[Ljava/lang/String;
    if-eqz v4, :cond_1

    #@101
    .line 349
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    #@103
    iput-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    #@105
    .line 350
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    #@107
    aput-object v4, v7, v11

    #@109
    .line 351
    const/4 v7, 0x3

    #@10a
    iput v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@10c
    .line 352
    invoke-virtual {p0, v4, v6, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z

    #@10f
    move-result v7

    #@110
    if-eqz v7, :cond_8

    #@112
    .line 353
    iput-boolean v8, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    #@114
    .line 355
    :cond_8
    invoke-virtual {p0, v4}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    #@117
    goto/16 :goto_1

    #@119
    .line 357
    .end local v2    # "components":[Ljava/lang/String;
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v6    # "uid":I
    :cond_9
    const-string/jumbo v9, "android.intent.action.QUERY_PACKAGE_RESTART"

    #@11c
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11f
    move-result v9

    #@120
    if-eqz v9, :cond_a

    #@122
    .line 358
    const-string/jumbo v8, "android.intent.extra.PACKAGES"

    #@125
    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@128
    move-result-object v8

    #@129
    iput-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    #@12b
    .line 359
    iput v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@12d
    .line 361
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    #@12f
    .line 362
    const-string/jumbo v8, "android.intent.extra.UID"

    #@132
    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@135
    move-result v8

    #@136
    .line 360
    invoke-virtual {p0, p2, v7, v8, v11}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    #@139
    move-result v1

    #@13a
    .line 363
    .local v1, "canRestart":Z
    if-eqz v1, :cond_1

    #@13c
    const/4 v7, -0x1

    #@13d
    invoke-virtual {p0, v7}, Lcom/android/internal/content/PackageMonitor;->setResultCode(I)V

    #@140
    goto/16 :goto_1

    #@142
    .line 364
    .end local v1    # "canRestart":Z
    :cond_a
    const-string/jumbo v9, "android.intent.action.PACKAGE_RESTARTED"

    #@145
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@148
    move-result v9

    #@149
    if-eqz v9, :cond_b

    #@14b
    .line 365
    new-array v9, v8, [Ljava/lang/String;

    #@14d
    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    #@150
    move-result-object v10

    #@151
    aput-object v10, v9, v11

    #@153
    iput-object v9, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    #@155
    .line 366
    iput v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@157
    .line 367
    iget-object v7, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    #@159
    .line 368
    const-string/jumbo v9, "android.intent.extra.UID"

    #@15c
    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@15f
    move-result v9

    #@160
    .line 367
    invoke-virtual {p0, p2, v7, v9, v8}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    #@163
    goto/16 :goto_1

    #@165
    .line 369
    :cond_b
    const-string/jumbo v9, "android.intent.action.UID_REMOVED"

    #@168
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16b
    move-result v9

    #@16c
    if-eqz v9, :cond_c

    #@16e
    .line 370
    const-string/jumbo v7, "android.intent.extra.UID"

    #@171
    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@174
    move-result v7

    #@175
    invoke-virtual {p0, v7}, Lcom/android/internal/content/PackageMonitor;->onUidRemoved(I)V

    #@178
    goto/16 :goto_1

    #@17a
    .line 371
    :cond_c
    const-string/jumbo v9, "android.intent.action.USER_STOPPED"

    #@17d
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@180
    move-result v9

    #@181
    if-eqz v9, :cond_d

    #@183
    .line 372
    const-string/jumbo v7, "android.intent.extra.user_handle"

    #@186
    invoke-virtual {p2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@189
    move-result v7

    #@18a
    if-eqz v7, :cond_1

    #@18c
    .line 373
    const-string/jumbo v7, "android.intent.extra.user_handle"

    #@18f
    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@192
    move-result v7

    #@193
    invoke-virtual {p0, p2, v7}, Lcom/android/internal/content/PackageMonitor;->onHandleUserStop(Landroid/content/Intent;I)V

    #@196
    goto/16 :goto_1

    #@198
    .line 375
    :cond_d
    const-string/jumbo v9, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    #@19b
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19e
    move-result v9

    #@19f
    if-eqz v9, :cond_f

    #@1a1
    .line 376
    const-string/jumbo v9, "android.intent.extra.changed_package_list"

    #@1a4
    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@1a7
    move-result-object v5

    #@1a8
    .line 377
    .local v5, "pkgList":[Ljava/lang/String;
    iput-object v5, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    #@1aa
    .line 378
    const-string/jumbo v9, "android.intent.extra.REPLACING"

    #@1ad
    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@1b0
    move-result v9

    #@1b1
    if-eqz v9, :cond_e

    #@1b3
    move v7, v8

    #@1b4
    :cond_e
    iput v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@1b6
    .line 380
    iput-boolean v8, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    #@1b8
    .line 381
    if-eqz v5, :cond_1

    #@1ba
    .line 382
    invoke-virtual {p0, v5}, Lcom/android/internal/content/PackageMonitor;->onPackagesAvailable([Ljava/lang/String;)V

    #@1bd
    .line 383
    const/4 v3, 0x0

    #@1be
    .local v3, "i":I
    :goto_3
    array-length v7, v5

    #@1bf
    if-ge v3, v7, :cond_1

    #@1c1
    .line 384
    aget-object v7, v5, v3

    #@1c3
    iget v8, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@1c5
    invoke-virtual {p0, v7, v8}, Lcom/android/internal/content/PackageMonitor;->onPackageAppeared(Ljava/lang/String;I)V

    #@1c8
    .line 383
    add-int/lit8 v3, v3, 0x1

    #@1ca
    goto :goto_3

    #@1cb
    .line 387
    .end local v3    # "i":I
    .end local v5    # "pkgList":[Ljava/lang/String;
    :cond_f
    const-string/jumbo v9, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #@1ce
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d1
    move-result v9

    #@1d2
    if-eqz v9, :cond_1

    #@1d4
    .line 388
    const-string/jumbo v9, "android.intent.extra.changed_package_list"

    #@1d7
    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@1da
    move-result-object v5

    #@1db
    .line 389
    .restart local v5    # "pkgList":[Ljava/lang/String;
    iput-object v5, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    #@1dd
    .line 390
    const-string/jumbo v9, "android.intent.extra.REPLACING"

    #@1e0
    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@1e3
    move-result v9

    #@1e4
    if-eqz v9, :cond_10

    #@1e6
    move v7, v8

    #@1e7
    :cond_10
    iput v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@1e9
    .line 392
    iput-boolean v8, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    #@1eb
    .line 393
    if-eqz v5, :cond_1

    #@1ed
    .line 394
    invoke-virtual {p0, v5}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnavailable([Ljava/lang/String;)V

    #@1f0
    .line 395
    const/4 v3, 0x0

    #@1f1
    .restart local v3    # "i":I
    :goto_4
    array-length v7, v5

    #@1f2
    if-ge v3, v7, :cond_1

    #@1f4
    .line 396
    aget-object v7, v5, v3

    #@1f6
    iget v8, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    #@1f8
    invoke-virtual {p0, v7, v8}, Lcom/android/internal/content/PackageMonitor;->onPackageDisappeared(Ljava/lang/String;I)V

    #@1fb
    .line 395
    add-int/lit8 v3, v3, 0x1

    #@1fd
    goto :goto_4
.end method

.method public onSomePackagesChanged()V
    .locals 0

    #@0
    .prologue
    .line 261
    return-void
.end method

.method public onUidRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 180
    return-void
.end method

.method public register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thread"    # Landroid/os/Looper;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "externalStorage"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 73
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Already registered"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 76
    :cond_0
    iput-object p1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    #@10
    .line 77
    if-nez p2, :cond_2

    #@12
    .line 78
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    #@18
    .line 82
    :goto_0
    if-eqz p3, :cond_3

    #@1a
    .line 83
    sget-object v3, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    #@1c
    iget-object v5, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    #@1e
    move-object v0, p1

    #@1f
    move-object v1, p0

    #@20
    move-object v2, p3

    #@21
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@24
    .line 84
    sget-object v3, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    #@26
    iget-object v5, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    #@28
    move-object v0, p1

    #@29
    move-object v1, p0

    #@2a
    move-object v2, p3

    #@2b
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@2e
    .line 85
    if-eqz p4, :cond_1

    #@30
    .line 86
    sget-object v3, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    #@32
    .line 87
    iget-object v5, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    #@34
    move-object v0, p1

    #@35
    move-object v1, p0

    #@36
    move-object v2, p3

    #@37
    .line 86
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@3a
    .line 72
    :cond_1
    :goto_1
    return-void

    #@3b
    .line 80
    :cond_2
    new-instance v0, Landroid/os/Handler;

    #@3d
    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@40
    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    #@42
    goto :goto_0

    #@43
    .line 90
    :cond_3
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    #@45
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    #@47
    invoke-virtual {p1, p0, v0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@4a
    .line 91
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    #@4c
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    #@4e
    invoke-virtual {p1, p0, v0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@51
    .line 92
    if-eqz p4, :cond_1

    #@53
    .line 93
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    #@55
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    #@57
    invoke-virtual {p1, p0, v0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@5a
    goto :goto_1
.end method

.method public register(Landroid/content/Context;Landroid/os/Looper;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thread"    # Landroid/os/Looper;
    .param p3, "externalStorage"    # Z

    #@0
    .prologue
    .line 68
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    #@4
    .line 67
    return-void
.end method

.method public unregister()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 103
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Not registered"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    #@10
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@13
    .line 107
    iput-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    #@15
    .line 102
    return-void
.end method
