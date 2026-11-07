.class public Lcom/android/internal/foldables/FoldGracePeriodProvider;
.super Ljava/lang/Object;
.source "FoldGracePeriodProvider.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FoldGracePeriodProvider"


# instance fields
.field private final blacklist mFoldGracePeriodEnabled:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/android/internal/foldables/FoldGracePeriodProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/foldables/FoldGracePeriodProvider$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/internal/foldables/FoldGracePeriodProvider;->mFoldGracePeriodEnabled:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public blacklist isEnabled()Z
    .registers 5

    .line 39
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    const/4 v1, 0x0

    if-nez v0, :cond_9

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_1f

    .line 40
    :cond_9
    invoke-static {}, Landroid/sysprop/FoldLockBehaviorProperties;->fold_grace_period_enabled()Ljava/util/Optional;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 41
    const/4 v0, 0x1

    return v0

    .line 44
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/android/internal/foldables/FoldGracePeriodProvider;->mFoldGracePeriodEnabled:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_2c

    return v0

    .line 45
    :catchall_2c
    move-exception v0

    .line 46
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v2, "FoldGracePeriodProvider"

    const-string v3, "Flags not ready yet. Return false for com.android.internal.foldables.flags.fold_grace_period_enabled"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    return v1
.end method
