.class public interface abstract Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;
.super Ljava/lang/Object;
.source "AbstractMultiProfilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EmptyStateProvider"
.end annotation


# virtual methods
.method public blacklist getEmptyState(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;
    .registers 3
    .param p1, "resolverListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 489
    const/4 v0, 0x0

    return-object v0
.end method
