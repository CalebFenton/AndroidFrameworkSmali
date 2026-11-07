.class public final Landroid/window/WindowMetricsController;
.super Ljava/lang/Object;
.source "WindowMetricsController.java"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public static synthetic blacklist $r8$lambda$pFTaIba9cW7oBONGFT2xxYPhXLc(Landroid/window/WindowMetricsController;Landroid/os/IBinder;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/window/WindowMetricsController;->lambda$getWindowMetricsInternal$0(Landroid/os/IBinder;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/window/WindowMetricsController;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method private static blacklist getWindowInsetsFromServerForDisplay(ILandroid/os/IBinder;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;
    .registers 16
    .param p0, "displayId"    # I
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "isScreenRound"    # Z
    .param p4, "activityType"    # I

    .line 116
    :try_start_0
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    move-object v1, v0

    .line 117
    .local v1, "insetsState":Landroid/view/InsetsState;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, v1}, Landroid/view/IWindowManager;->getWindowInsets(ILandroid/os/IBinder;Landroid/view/InsetsState;)Z

    .line 119
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->getOverrideInvertedScale()F

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_31

    .line 120
    .local v0, "overrideInvScale":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_20

    .line 121
    :try_start_17
    invoke-virtual {v1, v0}, Landroid/view/InsetsState;->scale(F)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_20

    .line 127
    .end local v0    # "overrideInvScale":F
    .end local v1    # "insetsState":Landroid/view/InsetsState;
    :catch_1b
    move-exception v0

    move-object v2, p2

    move v4, p3

    move v9, p4

    goto :goto_35

    .line 123
    .restart local v0    # "overrideInvScale":F
    .restart local v1    # "insetsState":Landroid/view/InsetsState;
    :cond_20
    :goto_20
    const/4 v8, -0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x30

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move v4, p3

    move v9, p4

    .end local p2    # "bounds":Landroid/graphics/Rect;
    .end local p3    # "isScreenRound":Z
    .end local p4    # "activityType":I
    .local v2, "bounds":Landroid/graphics/Rect;
    .local v4, "isScreenRound":Z
    .local v9, "activityType":I
    :try_start_2a
    invoke-virtual/range {v1 .. v10}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object p2
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2e} :catch_2f

    return-object p2

    .line 127
    .end local v0    # "overrideInvScale":F
    .end local v1    # "insetsState":Landroid/view/InsetsState;
    :catch_2f
    move-exception v0

    goto :goto_35

    .end local v2    # "bounds":Landroid/graphics/Rect;
    .end local v4    # "isScreenRound":Z
    .end local v9    # "activityType":I
    .restart local p2    # "bounds":Landroid/graphics/Rect;
    .restart local p3    # "isScreenRound":Z
    .restart local p4    # "activityType":I
    :catch_31
    move-exception v0

    move-object v2, p2

    move v4, p3

    move v9, p4

    .line 128
    .end local p2    # "bounds":Landroid/graphics/Rect;
    .end local p3    # "isScreenRound":Z
    .end local p4    # "activityType":I
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v2    # "bounds":Landroid/graphics/Rect;
    .restart local v4    # "isScreenRound":Z
    .restart local v9    # "activityType":I
    :goto_35
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method private blacklist getWindowMetricsInternal(Z)Landroid/view/WindowMetrics;
    .registers 12
    .param p1, "isMaximum"    # Z

    .line 86
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v1

    monitor-enter v1

    .line 87
    :try_start_5
    iget-object v0, p0, Landroid/window/WindowMetricsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 88
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 89
    .local v2, "winConfig":Landroid/app/WindowConfiguration;
    if-eqz p1, :cond_18

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_1c

    :cond_18
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    :goto_1c
    move-object v7, v3

    .line 93
    .local v7, "bounds":Landroid/graphics/Rect;
    iget v3, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v3, v3

    const v4, 0x3bcccccd    # 0.00625f

    mul-float/2addr v3, v4

    .line 94
    .local v3, "density":F
    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v8

    .line 95
    .local v8, "isScreenRound":Z
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v9

    .line 96
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v2    # "winConfig":Landroid/app/WindowConfiguration;
    .local v9, "activityType":I
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_44

    .line 97
    iget-object v0, p0, Landroid/window/WindowMetricsController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/content/Context;->getToken(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v6

    .line 98
    .local v6, "token":Landroid/os/IBinder;
    new-instance v4, Landroid/window/WindowMetricsController$$ExternalSyntheticLambda0;

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Landroid/window/WindowMetricsController$$ExternalSyntheticLambda0;-><init>(Landroid/window/WindowMetricsController;Landroid/os/IBinder;Landroid/graphics/Rect;ZI)V

    .line 100
    .local v4, "insetsSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/WindowInsets;>;"
    new-instance v0, Landroid/view/WindowMetrics;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v0, v1, v4, v3}, Landroid/view/WindowMetrics;-><init>(Landroid/graphics/Rect;Ljava/util/function/Supplier;F)V

    return-object v0

    .line 96
    .end local v3    # "density":F
    .end local v4    # "insetsSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/WindowInsets;>;"
    .end local v6    # "token":Landroid/os/IBinder;
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v8    # "isScreenRound":Z
    .end local v9    # "activityType":I
    :catchall_44
    move-exception v0

    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v0
.end method

.method private synthetic blacklist lambda$getWindowMetricsInternal$0(Landroid/os/IBinder;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "isScreenRound"    # Z
    .param p4, "activityType"    # I

    .line 98
    iget-object v0, p0, Landroid/window/WindowMetricsController;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 98
    invoke-static {v0, p1, p2, p3, p4}, Landroid/window/WindowMetricsController;->getWindowInsetsFromServerForDisplay(ILandroid/os/IBinder;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getCurrentWindowMetrics()Landroid/view/WindowMetrics;
    .registers 2

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/window/WindowMetricsController;->getWindowMetricsInternal(Z)Landroid/view/WindowMetrics;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMaximumWindowMetrics()Landroid/view/WindowMetrics;
    .registers 2

    .line 72
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/window/WindowMetricsController;->getWindowMetricsInternal(Z)Landroid/view/WindowMetrics;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPossibleMaximumWindowMetrics(I)Ljava/util/Set;
    .registers 14
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/view/WindowMetrics;",
            ">;"
        }
    .end annotation

    .line 137
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 138
    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->getPossibleDisplayInfo(I)Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_7e

    .line 141
    .local v0, "possibleDisplayInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/DisplayInfo;>;"
    nop

    .line 143
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 146
    .local v1, "maxMetrics":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/WindowMetrics;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7d

    .line 147
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/DisplayInfo;

    .line 150
    .local v3, "currentDisplayInfo":Landroid/view/DisplayInfo;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v5

    .line 151
    invoke-virtual {v3}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 154
    .local v4, "maxBounds":Landroid/graphics/Rect;
    iget v5, v3, Landroid/view/DisplayInfo;->flags:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_31

    const/4 v5, 0x1

    goto :goto_32

    :cond_31
    move v5, v7

    .line 157
    .local v5, "isScreenRound":Z
    :goto_32
    iget v6, v3, Landroid/view/DisplayInfo;->displayId:I

    new-instance v8, Landroid/graphics/Rect;

    .line 159
    invoke-virtual {v3}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v9

    .line 160
    invoke-virtual {v3}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v10

    invoke-direct {v8, v7, v7, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 157
    const/4 v9, 0x0

    invoke-static {v6, v9, v8, v5, v7}, Landroid/window/WindowMetricsController;->getWindowInsetsFromServerForDisplay(ILandroid/os/IBinder;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;

    move-result-object v6

    .line 163
    .local v6, "windowInsets":Landroid/view/WindowInsets;
    iget-object v8, v3, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 164
    .local v8, "cutout":Landroid/view/DisplayCutout;
    if-eqz v8, :cond_58

    iget v9, v3, Landroid/view/DisplayInfo;->rotation:I

    if-eqz v9, :cond_58

    .line 165
    iget v9, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v10, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v11, v3, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v8, v9, v10, v11, v7}, Landroid/view/DisplayCutout;->getRotated(IIII)Landroid/view/DisplayCutout;

    move-result-object v8

    .line 169
    :cond_58
    new-instance v7, Landroid/view/WindowInsets$Builder;

    invoke-direct {v7, v6}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    iget-object v9, v3, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v7, v9}, Landroid/view/WindowInsets$Builder;->setRoundedCorners(Landroid/view/RoundedCorners;)Landroid/view/WindowInsets$Builder;

    move-result-object v7

    .line 170
    invoke-virtual {v7, v8}, Landroid/view/WindowInsets$Builder;->setDisplayCutout(Landroid/view/DisplayCutout;)Landroid/view/WindowInsets$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v6

    .line 175
    iget v7, v3, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float v7, v7

    const v9, 0x3bcccccd    # 0.00625f

    mul-float/2addr v7, v9

    .line 177
    .local v7, "density":F
    new-instance v9, Landroid/view/WindowMetrics;

    invoke-direct {v9, v4, v6, v7}, Landroid/view/WindowMetrics;-><init>(Landroid/graphics/Rect;Landroid/view/WindowInsets;F)V

    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    .end local v4    # "maxBounds":Landroid/graphics/Rect;
    .end local v5    # "isScreenRound":Z
    .end local v7    # "density":F
    .end local v8    # "cutout":Landroid/view/DisplayCutout;
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 179
    .end local v2    # "i":I
    .end local v3    # "currentDisplayInfo":Landroid/view/DisplayInfo;
    .end local v6    # "windowInsets":Landroid/view/WindowInsets;
    :cond_7d
    return-object v1

    .line 139
    .end local v0    # "possibleDisplayInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/DisplayInfo;>;"
    .end local v1    # "maxMetrics":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/WindowMetrics;>;"
    :catch_7e
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
