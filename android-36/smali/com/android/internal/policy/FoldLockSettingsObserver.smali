.class public Lcom/android/internal/policy/FoldLockSettingsObserver;
.super Landroid/database/ContentObserver;
.source "FoldLockSettingsObserver.java"


# static fields
.field private static final blacklist SETTING_VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SETTING_VALUE_DEFAULT:Ljava/lang/String; = "selective_stay_awake_key"

.field public static final blacklist SETTING_VALUE_SELECTIVE_STAY_AWAKE:Ljava/lang/String; = "selective_stay_awake_key"

.field public static final blacklist SETTING_VALUE_SLEEP_ON_FOLD:Ljava/lang/String; = "sleep_on_fold_key"

.field public static final blacklist SETTING_VALUE_STAY_AWAKE_ON_FOLD:Ljava/lang/String; = "stay_awake_on_fold_key"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field blacklist mFoldLockSetting:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 48
    const-string/jumbo v0, "selective_stay_awake_key"

    const-string/jumbo v1, "sleep_on_fold_key"

    const-string/jumbo v2, "stay_awake_on_fold_key"

    invoke-static {v2, v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/FoldLockSettingsObserver;->SETTING_VALUES:Ljava/util/Set;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 59
    iput-object p2, p0, Lcom/android/internal/policy/FoldLockSettingsObserver;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method


# virtual methods
.method public blacklist isSelectiveStayAwake()Z
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/android/internal/policy/FoldLockSettingsObserver;->mFoldLockSetting:Ljava/lang/String;

    const-string/jumbo v1, "selective_stay_awake_key"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isSleepOnFold()Z
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/FoldLockSettingsObserver;->mFoldLockSetting:Ljava/lang/String;

    const-string/jumbo v1, "sleep_on_fold_key"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isStayAwakeOnFold()Z
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/FoldLockSettingsObserver;->mFoldLockSetting:Ljava/lang/String;

    const-string/jumbo v1, "stay_awake_on_fold_key"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist onChange(Z)V
    .registers 2
    .param p1, "selfChange"    # Z

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/policy/FoldLockSettingsObserver;->requestAndCacheFoldLockSetting()V

    .line 80
    return-void
.end method

.method public blacklist register()V
    .registers 5

    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/FoldLockSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 65
    .local v0, "r":Landroid/content/ContentResolver;
    nop

    .line 66
    const-string v1, "fold_lock_behavior_setting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 65
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/internal/policy/FoldLockSettingsObserver;->requestAndCacheFoldLockSetting()V

    .line 69
    return-void
.end method

.method blacklist request()Ljava/lang/String;
    .registers 4

    .line 104
    iget-object v0, p0, Lcom/android/internal/policy/FoldLockSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fold_lock_behavior_setting"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist requestAndCacheFoldLockSetting()V
    .registers 3

    .line 89
    invoke-virtual {p0}, Lcom/android/internal/policy/FoldLockSettingsObserver;->request()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "currentSetting":Ljava/lang/String;
    if-eqz v0, :cond_e

    sget-object v1, Lcom/android/internal/policy/FoldLockSettingsObserver;->SETTING_VALUES:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 92
    :cond_e
    const-string/jumbo v0, "selective_stay_awake_key"

    .line 95
    :cond_11
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/FoldLockSettingsObserver;->setCurrentFoldSetting(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method blacklist setCurrentFoldSetting(Ljava/lang/String;)V
    .registers 2
    .param p1, "newSetting"    # Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lcom/android/internal/policy/FoldLockSettingsObserver;->mFoldLockSetting:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public blacklist unregister()V
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/FoldLockSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 74
    return-void
.end method
