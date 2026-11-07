.class public Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$NoAppsAvailableEmptyState;
.super Ljava/lang/Object;
.source "NoAppsAvailableEmptyStateProvider.java"

# interfaces
.implements Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoAppsAvailableEmptyState"
.end annotation


# instance fields
.field private blacklist mIsPersonalProfile:Z

.field private blacklist mMetricsCategory:Ljava/lang/String;

.field private blacklist mTitle:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "metricsCategory"    # Ljava/lang/String;
    .param p3, "isPersonalProfile"    # Z

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$NoAppsAvailableEmptyState;->mTitle:Ljava/lang/String;

    .line 134
    iput-object p2, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$NoAppsAvailableEmptyState;->mMetricsCategory:Ljava/lang/String;

    .line 135
    iput-boolean p3, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$NoAppsAvailableEmptyState;->mIsPersonalProfile:Z

    .line 136
    return-void
.end method


# virtual methods
.method public blacklist getTitle()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$NoAppsAvailableEmptyState;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist onEmptyStateShown()V
    .registers 3

    .line 146
    const/16 v0, 0xa0

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$NoAppsAvailableEmptyState;->mMetricsCategory:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$NoAppsAvailableEmptyState;->mIsPersonalProfile:Z

    .line 149
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 151
    return-void
.end method
