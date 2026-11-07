.class public Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider;
.super Ljava/lang/Object;
.source "WorkProfilePausedEmptyStateProvider.java"

# interfaces
.implements Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider$WorkProfileOffEmptyState;
    }
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mMetricsCategory:Ljava/lang/String;

.field private final blacklist mOnSwitchOnWorkSelectedListener:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;

.field private final blacklist mQuietModeManager:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

.field private final blacklist mWorkProfileUserHandle:Landroid/os/UserHandle;


# direct methods
.method public static synthetic blacklist $r8$lambda$mvibPSPypWk7GCm7TfUxbOA0mcM(Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$TabControl;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider;->lambda$getEmptyState$1(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$TabControl;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$skEKoBIJmqUpmPvTIUX_AqA0xHA(Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider;->lambda$getEmptyState$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "workProfileUserHandle"    # Landroid/os/UserHandle;
    .param p3, "quietModeManager"    # Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;
    .param p4, "onSwitchOnWorkSelectedListener"    # Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;
    .param p5, "metricsCategory"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    .line 54
    iput-object p3, p0, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider;->mQuietModeManager:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    .line 55
    iput-object p5, p0, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider;->mMetricsCategory:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider;->mOnSwitchOnWorkSelectedListener:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;

    .line 57
    return-void
.end method

.method private synthetic blacklist lambda$getEmptyState$0()Ljava/lang/String;
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider;->mContext:Landroid/content/Context;

    const v1, 0x1040925

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getEmptyState$1(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$TabControl;)V
    .registers 5
    .param p1, "tab"    # Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$TabControl;

    .line 73
    invoke-interface {p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$TabControl;->showSpinner()V

    .line 74
    iget-object v0, p0, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider;->mOnSwitchOnWorkSelectedListener:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;

    if-eqz v0, :cond_c

    .line 75
    iget-object v0, p0, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider;->mOnSwitchOnWorkSelectedListener:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;

    invoke-interface {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnSwitchOnWorkSelectedListener;->onSwitchOnWorkSelected()V

    .line 77
    :cond_c
    iget-object v0, p0, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider;->mQuietModeManager:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;)V

    .line 78
    return-void
.end method


# virtual methods
.method public blacklist getEmptyState(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;
    .registers 6
    .param p1, "resolverListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 62
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider;->mQuietModeManager:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;

    iget-object v1, p0, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    .line 63
    invoke-interface {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 64
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_43

    .line 68
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 69
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider;)V

    const-string v2, "Core.RESOLVER_WORK_PAUSED_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "title":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider$WorkProfileOffEmptyState;

    new-instance v2, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider;)V

    iget-object v3, p0, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider;->mMetricsCategory:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider$WorkProfileOffEmptyState;-><init>(Ljava/lang/String;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$ClickListener;Ljava/lang/String;)V

    return-object v1

    .line 65
    .end local v0    # "title":Ljava/lang/String;
    :cond_43
    :goto_43
    const/4 v0, 0x0

    return-object v0
.end method
