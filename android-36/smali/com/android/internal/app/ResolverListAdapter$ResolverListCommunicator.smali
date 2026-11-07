.class interface abstract Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;
.super Ljava/lang/Object;
.source "ResolverListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ResolverListCommunicator"
.end annotation


# virtual methods
.method public abstract blacklist getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
.end method

.method public abstract blacklist getTargetIntent()Landroid/content/Intent;
.end method

.method public abstract blacklist onHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V
.end method

.method public abstract blacklist onPostListReady(Lcom/android/internal/app/ResolverListAdapter;ZZ)V
.end method

.method public abstract blacklist resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
.end method

.method public abstract blacklist sendVoiceChoicesIfNeeded()V
.end method

.method public abstract blacklist shouldGetActivityMetadata()Z
.end method

.method public blacklist shouldGetOnlyDefaultActivities()Z
    .registers 2

    .line 880
    const/4 v0, 0x1

    return v0
.end method

.method public abstract blacklist updateProfileViewButton()V
.end method

.method public abstract blacklist useLayoutWithDefault()Z
.end method
