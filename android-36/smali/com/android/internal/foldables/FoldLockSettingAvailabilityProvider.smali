.class public Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;
.super Ljava/lang/Object;
.source "FoldLockSettingAvailabilityProvider.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FoldLockSettingAvailabilityProvider"


# instance fields
.field private final blacklist mFoldLockBehaviorResourceValue:Z

.field private final blacklist mFoldLockSettingEnabled:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/res/Resources;)V
    .registers 3
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;->mFoldLockSettingEnabled:Ljava/util/function/Supplier;

    .line 39
    const v0, 0x11101af

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;->mFoldLockBehaviorResourceValue:Z

    .line 41
    return-void
.end method

.method private blacklist flagOrSystemProperty()Z
    .registers 5

    .line 49
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    const/4 v1, 0x0

    if-nez v0, :cond_9

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_1f

    .line 50
    :cond_9
    invoke-static {}, Landroid/sysprop/FoldLockBehaviorProperties;->fold_lock_setting_enabled()Ljava/util/Optional;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 51
    const/4 v0, 0x1

    return v0

    .line 54
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;->mFoldLockSettingEnabled:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_2c

    return v0

    .line 55
    :catchall_2c
    move-exception v0

    .line 56
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v2, "FoldLockSettingAvailabilityProvider"

    const-string v3, "Flags not ready yet. Return false for com.android.internal.foldables.flags.fold_lock_setting_enabled"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    return v1
.end method


# virtual methods
.method public blacklist isFoldLockBehaviorAvailable()Z
    .registers 2

    .line 44
    iget-boolean v0, p0, Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;->mFoldLockBehaviorResourceValue:Z

    if-eqz v0, :cond_c

    .line 45
    invoke-direct {p0}, Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;->flagOrSystemProperty()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 44
    :goto_d
    return v0
.end method
