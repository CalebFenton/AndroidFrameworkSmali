.class Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
.super Ljava/lang/Object;
.source "WindowContainerTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowContainerTransaction$HierarchyOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mActivityIntent:Landroid/content/Intent;

.field private blacklist mActivityTypes:[I

.field private blacklist mAlwaysOnTop:Z

.field private blacklist mAppCompatOptions:Landroid/os/Bundle;

.field private blacklist mBounds:Landroid/graphics/Rect;

.field private blacklist mContainer:Landroid/os/IBinder;

.field private blacklist mContainers:[Landroid/os/IBinder;

.field private blacklist mExcludeInsetsTypes:I

.field private blacklist mIncludingParents:Z

.field private blacklist mInsetsFrameOwner:Landroid/os/IBinder;

.field private blacklist mInsetsFrameProvider:Landroid/view/InsetsFrameProvider;

.field private blacklist mIsTrimmableFromRecents:Z

.field private blacklist mKeyguardState:Landroid/window/KeyguardState;

.field private blacklist mLaunchAdjacentDisabled:Z

.field private blacklist mLaunchOptions:Landroid/os/Bundle;

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private blacklist mReparent:Landroid/os/IBinder;

.field private blacklist mReparentLeafTaskIfRelaunch:Z

.field private blacklist mReparentTopOnly:Z

.field private blacklist mSafeRegionBounds:Landroid/graphics/Rect;

.field private blacklist mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private blacklist mTaskFragmentOperation:Landroid/window/TaskFragmentOperation;

.field private blacklist mToTop:Z

.field private final blacklist mType:I

.field private blacklist mWindowingModes:[I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 2
    .param p1, "type"    # I

    .line 2378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2379
    iput p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mType:I

    .line 2380
    return-void
.end method


# virtual methods
.method blacklist build()Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 5

    .line 2506
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp;

    iget v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mType:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;-><init>(ILandroid/window/WindowContainerTransaction-IA;)V

    .line 2507
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mContainer:Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmContainer(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/IBinder;)V

    .line 2508
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mContainers:[Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmContainers(Landroid/window/WindowContainerTransaction$HierarchyOp;[Landroid/os/IBinder;)V

    .line 2509
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mReparent:Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmReparent(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/IBinder;)V

    .line 2510
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mWindowingModes:[I

    if-eqz v1, :cond_25

    .line 2511
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mWindowingModes:[I

    iget-object v3, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mWindowingModes:[I

    array-length v3, v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    goto :goto_26

    .line 2512
    :cond_25
    move-object v1, v2

    :goto_26
    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmWindowingModes(Landroid/window/WindowContainerTransaction$HierarchyOp;[I)V

    .line 2513
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mActivityTypes:[I

    if-eqz v1, :cond_37

    .line 2514
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mActivityTypes:[I

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mActivityTypes:[I

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    goto :goto_38

    .line 2515
    :cond_37
    nop

    :goto_38
    invoke-static {v0, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmActivityTypes(Landroid/window/WindowContainerTransaction$HierarchyOp;[I)V

    .line 2516
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mInsetsFrameProvider:Landroid/view/InsetsFrameProvider;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmInsetsFrameProvider(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/view/InsetsFrameProvider;)V

    .line 2517
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mInsetsFrameOwner:Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmInsetsFrameOwner(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/IBinder;)V

    .line 2518
    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mToTop:Z

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmToTop(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V

    .line 2519
    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mReparentTopOnly:Z

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmReparentTopOnly(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V

    .line 2520
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mLaunchOptions:Landroid/os/Bundle;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmLaunchOptions(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/Bundle;)V

    .line 2521
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mAppCompatOptions:Landroid/os/Bundle;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmAppCompatOptions(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/Bundle;)V

    .line 2522
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mActivityIntent:Landroid/content/Intent;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmActivityIntent(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/content/Intent;)V

    .line 2523
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmPendingIntent(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/app/PendingIntent;)V

    .line 2524
    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mAlwaysOnTop:Z

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmAlwaysOnTop(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V

    .line 2525
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mTaskFragmentOperation:Landroid/window/TaskFragmentOperation;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmTaskFragmentOperation(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/window/TaskFragmentOperation;)V

    .line 2526
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mKeyguardState:Landroid/window/KeyguardState;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmKeyguardState(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/window/KeyguardState;)V

    .line 2527
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmShortcutInfo(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/content/pm/ShortcutInfo;)V

    .line 2528
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mBounds:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmBounds(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/graphics/Rect;)V

    .line 2529
    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mIncludingParents:Z

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmIncludingParents(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V

    .line 2530
    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mReparentLeafTaskIfRelaunch:Z

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V

    .line 2531
    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mIsTrimmableFromRecents:Z

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmIsTrimmableFromRecents(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V

    .line 2532
    iget v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mExcludeInsetsTypes:I

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmExcludeInsetsTypes(Landroid/window/WindowContainerTransaction$HierarchyOp;I)V

    .line 2533
    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mLaunchAdjacentDisabled:Z

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmLaunchAdjacentDisabled(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V

    .line 2534
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mSafeRegionBounds:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmSafeRegionBounds(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/graphics/Rect;)V

    .line 2535
    return-object v0
.end method

.method blacklist setActivityIntent(Landroid/content/Intent;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "activityIntent"    # Landroid/content/Intent;

    .line 2438
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mActivityIntent:Landroid/content/Intent;

    .line 2439
    return-object p0
.end method

.method blacklist setActivityTypes([I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "activityTypes"    # [I

    .line 2423
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mActivityTypes:[I

    .line 2424
    return-object p0
.end method

.method blacklist setAlwaysOnTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "alwaysOnTop"    # Z

    .line 2448
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mAlwaysOnTop:Z

    .line 2449
    return-object p0
.end method

.method blacklist setAppCompatOptions(Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "appCompatOptions"    # Landroid/os/Bundle;

    .line 2433
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mAppCompatOptions:Landroid/os/Bundle;

    .line 2434
    return-object p0
.end method

.method blacklist setBounds(Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 2475
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mBounds:Landroid/graphics/Rect;

    .line 2476
    return-object p0
.end method

.method blacklist setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "container"    # Landroid/os/IBinder;

    .line 2383
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mContainer:Landroid/os/IBinder;

    .line 2384
    return-object p0
.end method

.method blacklist setContainers([Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "containers"    # [Landroid/os/IBinder;

    .line 2388
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mContainers:[Landroid/os/IBinder;

    .line 2389
    return-object p0
.end method

.method blacklist setExcludeInsetsTypes(I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "excludeInsetsTypes"    # I

    .line 2490
    iput p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mExcludeInsetsTypes:I

    .line 2491
    return-object p0
.end method

.method blacklist setIncludingParents(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "value"    # Z

    .line 2480
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mIncludingParents:Z

    .line 2481
    return-object p0
.end method

.method blacklist setInsetsFrameOwner(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "owner"    # Landroid/os/IBinder;

    .line 2403
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mInsetsFrameOwner:Landroid/os/IBinder;

    .line 2404
    return-object p0
.end method

.method blacklist setInsetsFrameProvider(Landroid/view/InsetsFrameProvider;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "provider"    # Landroid/view/InsetsFrameProvider;

    .line 2398
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mInsetsFrameProvider:Landroid/view/InsetsFrameProvider;

    .line 2399
    return-object p0
.end method

.method blacklist setIsTrimmableFromRecents(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "isTrimmableFromRecents"    # Z

    .line 2485
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mIsTrimmableFromRecents:Z

    .line 2486
    return-object p0
.end method

.method blacklist setKeyguardState(Landroid/window/KeyguardState;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "keyguardState"    # Landroid/window/KeyguardState;

    .line 2460
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mKeyguardState:Landroid/window/KeyguardState;

    .line 2461
    return-object p0
.end method

.method blacklist setLaunchAdjacentDisabled(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "disabled"    # Z

    .line 2495
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mLaunchAdjacentDisabled:Z

    .line 2496
    return-object p0
.end method

.method blacklist setLaunchOptions(Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "launchOptions"    # Landroid/os/Bundle;

    .line 2428
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mLaunchOptions:Landroid/os/Bundle;

    .line 2429
    return-object p0
.end method

.method blacklist setPendingIntent(Landroid/app/PendingIntent;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "sender"    # Landroid/app/PendingIntent;

    .line 2443
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 2444
    return-object p0
.end method

.method blacklist setReparentContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "reparentContainer"    # Landroid/os/IBinder;

    .line 2393
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mReparent:Landroid/os/IBinder;

    .line 2394
    return-object p0
.end method

.method blacklist setReparentLeafTaskIfRelaunch(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "reparentLeafTaskIfRelaunch"    # Z

    .line 2465
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mReparentLeafTaskIfRelaunch:Z

    .line 2466
    return-object p0
.end method

.method blacklist setReparentTopOnly(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "reparentTopOnly"    # Z

    .line 2413
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mReparentTopOnly:Z

    .line 2414
    return-object p0
.end method

.method blacklist setSafeRegionBounds(Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "safeRegionBounds"    # Landroid/graphics/Rect;

    .line 2500
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mSafeRegionBounds:Landroid/graphics/Rect;

    .line 2501
    return-object p0
.end method

.method blacklist setShortcutInfo(Landroid/content/pm/ShortcutInfo;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;

    .line 2470
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 2471
    return-object p0
.end method

.method blacklist setTaskFragmentOperation(Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "taskFragmentOperation"    # Landroid/window/TaskFragmentOperation;

    .line 2454
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mTaskFragmentOperation:Landroid/window/TaskFragmentOperation;

    .line 2455
    return-object p0
.end method

.method blacklist setToTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "toTop"    # Z

    .line 2408
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mToTop:Z

    .line 2409
    return-object p0
.end method

.method blacklist setWindowingModes([I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2
    .param p1, "windowingModes"    # [I

    .line 2418
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mWindowingModes:[I

    .line 2419
    return-object p0
.end method
