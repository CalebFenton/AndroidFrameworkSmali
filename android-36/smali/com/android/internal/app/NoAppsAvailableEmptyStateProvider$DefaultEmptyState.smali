.class public Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$DefaultEmptyState;
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
    name = "DefaultEmptyState"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist useDefaultEmptyView()Z
    .registers 2

    .line 117
    const/4 v0, 0x1

    return v0
.end method
