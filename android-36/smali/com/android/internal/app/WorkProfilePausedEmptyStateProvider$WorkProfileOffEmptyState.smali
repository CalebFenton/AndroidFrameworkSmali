.class public Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider$WorkProfileOffEmptyState;
.super Ljava/lang/Object;
.source "WorkProfilePausedEmptyStateProvider.java"

# interfaces
.implements Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WorkProfileOffEmptyState"
.end annotation


# instance fields
.field private final blacklist mMetricsCategory:Ljava/lang/String;

.field private final blacklist mOnClick:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$ClickListener;

.field private final blacklist mTitle:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$ClickListener;Ljava/lang/String;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "onClick"    # Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$ClickListener;
    .param p3, "metricsCategory"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider$WorkProfileOffEmptyState;->mTitle:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider$WorkProfileOffEmptyState;->mOnClick:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$ClickListener;

    .line 91
    iput-object p3, p0, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider$WorkProfileOffEmptyState;->mMetricsCategory:Ljava/lang/String;

    .line 92
    return-void
.end method


# virtual methods
.method public blacklist getButtonClickListener()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$ClickListener;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider$WorkProfileOffEmptyState;->mOnClick:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$ClickListener;

    return-object v0
.end method

.method public blacklist getTitle()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider$WorkProfileOffEmptyState;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist onEmptyStateShown()V
    .registers 3

    .line 108
    nop

    .line 109
    const/16 v0, 0x9d

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/WorkProfilePausedEmptyStateProvider$WorkProfileOffEmptyState;->mMetricsCategory:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 112
    return-void
.end method
