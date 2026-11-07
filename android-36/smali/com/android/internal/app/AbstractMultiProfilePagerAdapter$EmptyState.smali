.class public interface abstract Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;
.super Ljava/lang/Object;
.source "AbstractMultiProfilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EmptyState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$TabControl;,
        Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$ClickListener;
    }
.end annotation


# virtual methods
.method public blacklist getButtonClickListener()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$ClickListener;
    .registers 2

    .line 540
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSubtitle()Ljava/lang/String;
    .registers 2

    .line 533
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTitle()Ljava/lang/String;
    .registers 2

    .line 527
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onEmptyStateShown()V
    .registers 1

    .line 557
    return-void
.end method

.method public blacklist shouldSkipDataRebuild()Z
    .registers 2

    .line 552
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist useDefaultEmptyView()Z
    .registers 2

    .line 546
    const/4 v0, 0x0

    return v0
.end method
