.class public Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;
.super Ljava/lang/Object;
.source "NoCrossProfileEmptyStateProvider.java"

# interfaces
.implements Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/NoCrossProfileEmptyStateProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DevicePolicyBlockerEmptyState"
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDefaultSubtitleResource:I

.field private final blacklist mDefaultTitleResource:I

.field private final blacklist mDevicePolicyStringSubtitleId:Ljava/lang/String;

.field private final blacklist mDevicePolicyStringTitleId:Ljava/lang/String;

.field private final blacklist mEventCategory:Ljava/lang/String;

.field private final blacklist mEventId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$0LfoX1JPsx8x1pc6ZF9g9e308z8(Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;->lambda$getTitle$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$RePl1yxicoyvFkJQjsoqFxy9VvQ(Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;->lambda$getSubtitle$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "devicePolicyStringTitleId"    # Ljava/lang/String;
    .param p3, "defaultTitleResource"    # I
    .param p4, "devicePolicyStringSubtitleId"    # Ljava/lang/String;
    .param p5, "defaultSubtitleResource"    # I
    .param p6, "devicePolicyEventId"    # I
    .param p7, "devicePolicyEventCategory"    # Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;->mDevicePolicyStringTitleId:Ljava/lang/String;

    .line 101
    iput p3, p0, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;->mDefaultTitleResource:I

    .line 102
    iput-object p4, p0, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;->mDevicePolicyStringSubtitleId:Ljava/lang/String;

    .line 103
    iput p5, p0, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;->mDefaultSubtitleResource:I

    .line 104
    iput p6, p0, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;->mEventId:I

    .line 105
    iput-object p7, p0, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;->mEventCategory:Ljava/lang/String;

    .line 106
    return-void
.end method

.method private synthetic blacklist lambda$getSubtitle$1()Ljava/lang/String;
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;->mDefaultSubtitleResource:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getTitle$0()Ljava/lang/String;
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;->mDefaultTitleResource:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getSubtitle()Ljava/lang/String;
    .registers 4

    .line 119
    iget-object v0, p0, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;->mDevicePolicyStringSubtitleId:Ljava/lang/String;

    new-instance v2, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTitle()Ljava/lang/String;
    .registers 4

    .line 111
    iget-object v0, p0, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;->mDevicePolicyStringTitleId:Ljava/lang/String;

    new-instance v2, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onEmptyStateShown()V
    .registers 3

    .line 126
    iget v0, p0, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;->mEventId:I

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/NoCrossProfileEmptyStateProvider$DevicePolicyBlockerEmptyState;->mEventCategory:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 129
    return-void
.end method

.method public blacklist shouldSkipDataRebuild()Z
    .registers 2

    .line 133
    const/4 v0, 0x1

    return v0
.end method
