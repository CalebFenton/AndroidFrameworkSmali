.class public Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;
.super Ljava/lang/Object;
.source "DeviceStateManager.java"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/DeviceStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FoldStateListener"
.end annotation


# instance fields
.field private blacklist lastResult:Ljava/lang/Boolean;

.field private final blacklist mDelegate:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlags;

.field private final blacklist mFoldedDeviceStates:[I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 273
    new-instance v0, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, v0}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    .line 274
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 276
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;->mFoldedDeviceStates:[I

    .line 279
    iput-object p2, p0, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;->mDelegate:Ljava/util/function/Consumer;

    .line 280
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlagsImpl;-><init>()V

    iput-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlags;

    .line 281
    return-void
.end method

.method static synthetic blacklist lambda$new$0(Ljava/lang/Boolean;)V
    .registers 1
    .param p0, "folded"    # Ljava/lang/Boolean;

    .line 273
    return-void
.end method


# virtual methods
.method public blacklist getFolded()Ljava/lang/Boolean;
    .registers 2

    .line 303
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;->lastResult:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final whitelist onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .registers 5
    .param p1, "deviceState"    # Landroid/hardware/devicestate/DeviceState;

    .line 286
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlags;->deviceStatePropertyApi()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 288
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;->mFoldedDeviceStates:[I

    .line 290
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    .local v0, "folded":Z
    :goto_20
    goto :goto_2b

    .line 292
    .end local v0    # "folded":Z
    :cond_21
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;->mFoldedDeviceStates:[I

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    .line 295
    .restart local v0    # "folded":Z
    :goto_2b
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;->lastResult:Ljava/lang/Boolean;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;->lastResult:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 296
    :cond_3b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;->lastResult:Ljava/lang/Boolean;

    .line 297
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;->mDelegate:Ljava/util/function/Consumer;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 299
    :cond_4a
    return-void
.end method
