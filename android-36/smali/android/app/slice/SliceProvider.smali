.class public abstract Landroid/app/slice/SliceProvider;
.super Landroid/content/ContentProvider;
.source "SliceProvider.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field public static final greylist-max-o EXTRA_BIND_URI:Ljava/lang/String; = "slice_uri"

.field public static final greylist-max-o EXTRA_INTENT:Ljava/lang/String; = "slice_intent"

.field public static final greylist-max-o EXTRA_PKG:Ljava/lang/String; = "pkg"

.field public static final greylist-max-o EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final greylist-max-o EXTRA_SLICE:Ljava/lang/String; = "slice"

.field public static final greylist-max-o EXTRA_SLICE_DESCENDANTS:Ljava/lang/String; = "slice_descendants"

.field public static final greylist-max-o EXTRA_SUPPORTED_SPECS:Ljava/lang/String; = "supported_specs"

.field public static final greylist-max-o METHOD_GET_DESCENDANTS:Ljava/lang/String; = "get_descendants"

.field public static final greylist-max-o METHOD_GET_PERMISSIONS:Ljava/lang/String; = "get_permissions"

.field public static final greylist-max-o METHOD_MAP_INTENT:Ljava/lang/String; = "map_slice"

.field public static final greylist-max-o METHOD_MAP_ONLY_INTENT:Ljava/lang/String; = "map_only"

.field public static final greylist-max-o METHOD_PIN:Ljava/lang/String; = "pin"

.field public static final greylist-max-o METHOD_SLICE:Ljava/lang/String; = "bind_slice"

.field public static final greylist-max-o METHOD_UNPIN:Ljava/lang/String; = "unpin"

.field private static final greylist-max-o SLICE_BIND_ANR:J = 0x7d0L

.field public static final whitelist SLICE_TYPE:Ljava/lang/String; = "vnd.android.slice"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SliceProvider"


# instance fields
.field private final greylist-max-o mAnr:Ljava/lang/Runnable;

.field private final greylist-max-o mAutoGrantPermissions:[Ljava/lang/String;

.field private greylist-max-o mCallback:Ljava/lang/String;

.field private greylist-max-o mSliceManager:Landroid/app/slice/SliceManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$KEjm38pZ15vH2YxxnDw7rsgFj_s(Landroid/app/slice/SliceProvider;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/slice/SliceProvider;->lambda$new$0()V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 189
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 560
    new-instance v0, Landroid/app/slice/SliceProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/app/slice/SliceProvider$$ExternalSyntheticLambda0;-><init>(Landroid/app/slice/SliceProvider;)V

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    .line 190
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mAutoGrantPermissions:[Ljava/lang/String;

    .line 191
    return-void
.end method

.method public varargs constructor whitelist <init>([Ljava/lang/String;)V
    .registers 3
    .param p1, "autoGrantPermissions"    # [Ljava/lang/String;

    .line 185
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 560
    new-instance v0, Landroid/app/slice/SliceProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/app/slice/SliceProvider$$ExternalSyntheticLambda0;-><init>(Landroid/app/slice/SliceProvider;)V

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    .line 186
    iput-object p1, p0, Landroid/app/slice/SliceProvider;->mAutoGrantPermissions:[Ljava/lang/String;

    .line 187
    return-void
.end method

.method public static blacklist createPermissionIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sliceUri"    # Landroid/net/Uri;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 520
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.REQUEST_SLICE_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 521
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10402db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 523
    const-string/jumbo v1, "slice_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 524
    const-string/jumbo v1, "pkg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 527
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 526
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 528
    return-object v0
.end method

.method public static blacklist createPermissionPendingIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sliceUri"    # Landroid/net/Uri;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 510
    nop

    .line 511
    invoke-static {p0, p1, p2}, Landroid/app/slice/SliceProvider;->createPermissionIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 510
    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getPermissionString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 535
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 537
    .local v0, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 539
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 540
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 537
    const v2, 0x10409d9

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_21} :catch_22

    return-object v1

    .line 541
    :catch_22
    move-exception v1

    .line 543
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unknown calling app"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private greylist-max-o handleBindSlice(Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;II)Landroid/app/slice/Slice;
    .registers 11
    .param p1, "sliceUri"    # Landroid/net/Uri;
    .param p3, "callingPkg"    # Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "callingPid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/app/slice/SliceSpec;",
            ">;",
            "Ljava/lang/String;",
            "II)",
            "Landroid/app/slice/Slice;"
        }
    .end annotation

    .line 448
    .local p2, "supportedSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/app/slice/SliceSpec;>;"
    if-eqz p3, :cond_4

    move-object v0, p3

    goto :goto_10

    .line 449
    :cond_4
    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    :goto_10
    nop

    .line 451
    .local v0, "pkg":Ljava/lang/String;
    :try_start_11
    iget-object v1, p0, Landroid/app/slice/SliceProvider;->mSliceManager:Landroid/app/slice/SliceManager;

    iget-object v2, p0, Landroid/app/slice/SliceProvider;->mAutoGrantPermissions:[Ljava/lang/String;

    invoke-virtual {v1, p1, p5, p4, v2}, Landroid/app/slice/SliceManager;->enforceSlicePermission(Landroid/net/Uri;II[Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_18} :catch_42

    .line 455
    nop

    .line 456
    const-string/jumbo v1, "onBindSlice"

    iput-object v1, p0, Landroid/app/slice/SliceProvider;->mCallback:Ljava/lang/String;

    .line 457
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 459
    :try_start_29
    invoke-direct {p0, p1, p2}, Landroid/app/slice/SliceProvider;->onBindSliceStrict(Landroid/net/Uri;Ljava/util/List;)Landroid/app/slice/Slice;

    move-result-object v1
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_37

    .line 461
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 459
    return-object v1

    .line 461
    :catchall_37
    move-exception v1

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 462
    throw v1

    .line 453
    :catch_42
    move-exception v1

    .line 454
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, p1, v0}, Landroid/app/slice/SliceProvider;->createPermissionSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/slice/Slice;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o handleGetDescendants(Landroid/net/Uri;)Ljava/util/Collection;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 420
    const-string/jumbo v0, "onGetSliceDescendants"

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mCallback:Ljava/lang/String;

    .line 421
    invoke-virtual {p0, p1}, Landroid/app/slice/SliceProvider;->onGetSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o handlePinSlice(Landroid/net/Uri;)V
    .registers 6
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 425
    const-string/jumbo v0, "onSlicePinned"

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mCallback:Ljava/lang/String;

    .line 426
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 428
    :try_start_10
    invoke-virtual {p0, p1}, Landroid/app/slice/SliceProvider;->onSlicePinned(Landroid/net/Uri;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1e

    .line 430
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 431
    nop

    .line 432
    return-void

    .line 430
    :catchall_1e
    move-exception v0

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 431
    throw v0
.end method

.method private greylist-max-o handleUnpinSlice(Landroid/net/Uri;)V
    .registers 6
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 435
    const-string/jumbo v0, "onSliceUnpinned"

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mCallback:Ljava/lang/String;

    .line 436
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 438
    :try_start_10
    invoke-virtual {p0, p1}, Landroid/app/slice/SliceProvider;->onSliceUnpinned(Landroid/net/Uri;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1e

    .line 440
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 441
    nop

    .line 442
    return-void

    .line 440
    :catchall_1e
    move-exception v0

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 441
    throw v0
.end method

.method private synthetic blacklist lambda$new$0()V
    .registers 3

    .line 561
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Process;->sendSignal(II)V

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timed out while handling slice callback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/slice/SliceProvider;->mCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SliceProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    return-void
.end method

.method private greylist-max-o onBindSliceStrict(Landroid/net/Uri;Ljava/util/List;)Landroid/app/slice/Slice;
    .registers 5
    .param p1, "sliceUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/app/slice/SliceSpec;",
            ">;)",
            "Landroid/app/slice/Slice;"
        }
    .end annotation

    .line 548
    .local p2, "supportedSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/app/slice/SliceSpec;>;"
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 550
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 551
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    .line 552
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    .line 553
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 550
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 554
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v1}, Landroid/app/slice/SliceProvider;->onBindSlice(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;

    move-result-object v1
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_25

    .line 556
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 554
    return-object v1

    .line 556
    :catchall_25
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 557
    throw v1
.end method

.method private blacklist validateIncomingUriOrNull(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 416
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0, p1}, Landroid/app/slice/SliceProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    :goto_8
    return-object v0
.end method


# virtual methods
.method public whitelist attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .line 195
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 196
    const-class v0, Landroid/app/slice/SliceManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/slice/SliceManager;

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mSliceManager:Landroid/app/slice/SliceManager;

    .line 197
    return-void
.end method

.method public whitelist call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 13
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 349
    const-string v1, "bind_slice"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "supported_specs"

    const-string/jumbo v6, "slice"

    const-string/jumbo v3, "slice_uri"

    if-eqz v1, :cond_41

    .line 350
    const-class v1, Landroid/net/Uri;

    .line 351
    invoke-virtual {p3, v3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 350
    invoke-direct {p0, v1}, Landroid/app/slice/SliceProvider;->validateIncomingUriOrNull(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/app/slice/SliceProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 352
    .local v1, "uri":Landroid/net/Uri;
    const-class v3, Landroid/app/slice/SliceSpec;

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    .line 354
    .local v2, "supportedSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/app/slice/SliceSpec;>;"
    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, "callingPackage":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 356
    .local v4, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 358
    .local v5, "callingPid":I
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/slice/SliceProvider;->handleBindSlice(Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;II)Landroid/app/slice/Slice;

    move-result-object v7

    .line 359
    .local v7, "s":Landroid/app/slice/Slice;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 360
    .local v8, "b":Landroid/os/Bundle;
    invoke-virtual {v8, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 361
    return-object v8

    .line 362
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "supportedSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/app/slice/SliceSpec;>;"
    .end local v3    # "callingPackage":Ljava/lang/String;
    .end local v4    # "callingUid":I
    .end local v5    # "callingPid":I
    .end local v7    # "s":Landroid/app/slice/Slice;
    .end local v8    # "b":Landroid/os/Bundle;
    :cond_41
    const-string/jumbo v1, "map_slice"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v4, "slice_intent"

    const/4 v5, 0x0

    if-eqz v1, :cond_89

    .line 363
    const-class v1, Landroid/content/Intent;

    invoke-virtual {p3, v4, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/content/Intent;

    .line 364
    .local v7, "intent":Landroid/content/Intent;
    if-nez v7, :cond_5a

    return-object v5

    .line 365
    :cond_5a
    invoke-virtual {p0, v7}, Landroid/app/slice/SliceProvider;->onMapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/app/slice/SliceProvider;->validateIncomingUriOrNull(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 366
    .restart local v1    # "uri":Landroid/net/Uri;
    const-class v3, Landroid/app/slice/SliceSpec;

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    .line 367
    .restart local v2    # "supportedSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/app/slice/SliceSpec;>;"
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v8, v3

    .line 368
    .restart local v8    # "b":Landroid/os/Bundle;
    if-eqz v1, :cond_85

    .line 369
    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    .line 370
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 369
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/slice/SliceProvider;->handleBindSlice(Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;II)Landroid/app/slice/Slice;

    move-result-object v3

    .line 371
    .local v3, "s":Landroid/app/slice/Slice;
    invoke-virtual {v8, v6, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 372
    .end local v3    # "s":Landroid/app/slice/Slice;
    goto :goto_88

    .line 373
    :cond_85
    invoke-virtual {v8, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 375
    :goto_88
    return-object v8

    .line 376
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "supportedSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/app/slice/SliceSpec;>;"
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "b":Landroid/os/Bundle;
    :cond_89
    const-string/jumbo v1, "map_only"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 377
    const-class v1, Landroid/content/Intent;

    invoke-virtual {p3, v4, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 378
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_9d

    return-object v5

    .line 379
    :cond_9d
    invoke-virtual {p0, v1}, Landroid/app/slice/SliceProvider;->onMapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/app/slice/SliceProvider;->validateIncomingUriOrNull(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 380
    .local v2, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 381
    .local v3, "b":Landroid/os/Bundle;
    invoke-virtual {v3, v6, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 382
    return-object v3

    .line 383
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "b":Landroid/os/Bundle;
    :cond_ae
    const-string/jumbo v1, "pin"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Only the system can pin/unpin slices"

    const/16 v4, 0x3e8

    if-eqz v1, :cond_dc

    .line 384
    const-class v1, Landroid/net/Uri;

    .line 385
    invoke-virtual {p3, v3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 384
    invoke-direct {p0, v1}, Landroid/app/slice/SliceProvider;->validateIncomingUriOrNull(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/app/slice/SliceProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 386
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-ne v3, v4, :cond_d6

    .line 389
    invoke-direct {p0, v1}, Landroid/app/slice/SliceProvider;->handlePinSlice(Landroid/net/Uri;)V

    .line 390
    .end local v1    # "uri":Landroid/net/Uri;
    goto/16 :goto_158

    .line 387
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_d6
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 390
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_dc
    const-string/jumbo v1, "unpin"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_105

    .line 391
    const-class v1, Landroid/net/Uri;

    .line 392
    invoke-virtual {p3, v3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 391
    invoke-direct {p0, v1}, Landroid/app/slice/SliceProvider;->validateIncomingUriOrNull(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/app/slice/SliceProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 393
    .restart local v1    # "uri":Landroid/net/Uri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-ne v3, v4, :cond_ff

    .line 396
    invoke-direct {p0, v1}, Landroid/app/slice/SliceProvider;->handleUnpinSlice(Landroid/net/Uri;)V

    .line 397
    .end local v1    # "uri":Landroid/net/Uri;
    goto :goto_158

    .line 394
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_ff
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 397
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_105
    const-string/jumbo v1, "get_descendants"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_133

    .line 398
    const-class v1, Landroid/net/Uri;

    .line 399
    invoke-virtual {p3, v3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-direct {p0, v1}, Landroid/app/slice/SliceProvider;->validateIncomingUriOrNull(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 398
    invoke-static {v1}, Landroid/app/slice/SliceProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 400
    .restart local v1    # "uri":Landroid/net/Uri;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 401
    .local v2, "b":Landroid/os/Bundle;
    new-instance v3, Ljava/util/ArrayList;

    .line 402
    invoke-direct {p0, v1}, Landroid/app/slice/SliceProvider;->handleGetDescendants(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 401
    const-string/jumbo v4, "slice_descendants"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 403
    return-object v2

    .line 404
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "b":Landroid/os/Bundle;
    :cond_133
    const-string/jumbo v1, "get_permissions"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_158

    .line 405
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v1, v4, :cond_150

    .line 408
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 409
    .local v1, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "result"

    iget-object v3, p0, Landroid/app/slice/SliceProvider;->mAutoGrantPermissions:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 410
    return-object v1

    .line 406
    .end local v1    # "b":Landroid/os/Bundle;
    :cond_150
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only the system can get permissions"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 412
    :cond_158
    :goto_158
    invoke-super/range {p0 .. p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o createPermissionSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/slice/Slice;
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sliceUri"    # Landroid/net/Uri;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 471
    const-string/jumbo v0, "onCreatePermissionRequest"

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mCallback:Ljava/lang/String;

    .line 472
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 474
    :try_start_10
    invoke-virtual {p0, p2}, Landroid/app/slice/SliceProvider;->onCreatePermissionRequest(Landroid/net/Uri;)Landroid/app/PendingIntent;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_cd

    .line 476
    .local v0, "action":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 477
    nop

    .line 478
    new-instance v1, Landroid/app/slice/Slice$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/net/Uri;Landroid/app/slice/SliceSpec;)V

    .line 479
    .local v1, "parent":Landroid/app/slice/Slice$Builder;
    new-instance v3, Landroid/app/slice/Slice$Builder;

    invoke-direct {v3, v1}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/app/slice/Slice$Builder;)V

    .line 480
    const v4, 0x10805ab

    invoke-static {p1, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 482
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 480
    invoke-virtual {v3, v4, v2, v5}, Landroid/app/slice/Slice$Builder;->addIcon(Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v3

    const-string/jumbo v4, "title"

    const-string/jumbo v5, "shortcut"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    .line 483
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v3

    new-instance v4, Landroid/app/slice/Slice$Builder;

    invoke-direct {v4, v1}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/app/slice/Slice$Builder;)V

    .line 484
    invoke-virtual {v4}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v2}, Landroid/app/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    move-result-object v3

    .line 486
    .local v3, "childAction":Landroid/app/slice/Slice$Builder;
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 487
    .local v4, "tv":Landroid/util/TypedValue;
    new-instance v5, Landroid/view/ContextThemeWrapper;

    const v6, 0x103012b

    invoke-direct {v5, p1, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 488
    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1010435

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 489
    iget v5, v4, Landroid/util/TypedValue;->data:I

    .line 491
    .local v5, "deviceDefaultAccent":I
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string/jumbo v7, "permission"

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 492
    .local v6, "subSliceUri":Landroid/net/Uri;
    new-instance v7, Landroid/app/slice/Slice$Builder;

    invoke-direct {v7, v6, v2}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/net/Uri;Landroid/app/slice/SliceSpec;)V

    .line 493
    const v8, 0x10803ae

    invoke-static {p1, v8}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v8

    .line 495
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 493
    invoke-virtual {v7, v8, v2, v9}, Landroid/app/slice/Slice$Builder;->addIcon(Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v7

    .line 496
    invoke-static {p1, p3}, Landroid/app/slice/SliceProvider;->getPermissionString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 497
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 496
    invoke-virtual {v7, v8, v2, v9}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v7

    .line 499
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 498
    const-string v9, "color"

    invoke-virtual {v7, v5, v9, v8}, Landroid/app/slice/Slice$Builder;->addInt(ILjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v7

    .line 500
    invoke-virtual {v3}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Landroid/app/slice/Slice$Builder;->addSubSlice(Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    move-result-object v7

    .line 501
    .local v7, "subSlice":Landroid/app/slice/Slice$Builder;
    invoke-virtual {v7}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v8

    invoke-virtual {v1, v8, v2}, Landroid/app/slice/Slice$Builder;->addSubSlice(Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    .line 502
    const-string/jumbo v2, "permission_request"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v2

    return-object v2

    .line 476
    .end local v0    # "action":Landroid/app/PendingIntent;
    .end local v1    # "parent":Landroid/app/slice/Slice$Builder;
    .end local v3    # "childAction":Landroid/app/slice/Slice$Builder;
    .end local v4    # "tv":Landroid/util/TypedValue;
    .end local v5    # "deviceDefaultAccent":I
    .end local v6    # "subSliceUri":Landroid/net/Uri;
    .end local v7    # "subSlice":Landroid/app/slice/Slice$Builder;
    :catchall_cd
    move-exception v0

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/app/slice/SliceProvider;->mAnr:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 477
    throw v0
.end method

.method public final whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 344
    const-string/jumbo v0, "vnd.android.slice"

    return-object v0
.end method

.method public final whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 338
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onBindSlice(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;
    .registers 4
    .param p1, "sliceUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroid/app/slice/SliceSpec;",
            ">;)",
            "Landroid/app/slice/Slice;"
        }
    .end annotation

    .line 217
    .local p2, "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/slice/SliceSpec;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreatePermissionRequest(Landroid/net/Uri;)Landroid/app/PendingIntent;
    .registers 4
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 298
    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/app/slice/SliceProvider;->createPermissionPendingIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onGetSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 263
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onMapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 280
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This provider has not implemented intent to uri mapping"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onSlicePinned(Landroid/net/Uri;)V
    .registers 2
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 239
    return-void
.end method

.method public whitelist onSliceUnpinned(Landroid/net/Uri;)V
    .registers 2
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 250
    return-void
.end method

.method public final whitelist query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "queryArgs"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 332
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 318
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 325
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 305
    const/4 v0, 0x0

    return v0
.end method
