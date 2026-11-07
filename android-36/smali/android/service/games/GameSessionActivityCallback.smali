.class public interface abstract Landroid/service/games/GameSessionActivityCallback;
.super Ljava/lang/Object;
.source "GameSessionActivityCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# virtual methods
.method public abstract whitelist onActivityResult(ILandroid/content/Intent;)V
.end method

.method public whitelist onActivityStartFailed(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 53
    return-void
.end method
