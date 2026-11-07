.class public interface abstract Lcom/android/internal/app/chooser/TargetInfo;
.super Ljava/lang/Object;
.source "TargetInfo.java"


# direct methods
.method public static blacklist prepareIntentForCrossProfileLaunch(Landroid/content/Intent;I)V
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "targetUserId"    # I

    .line 143
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 144
    .local v0, "currentUserId":I
    if-eq p1, v0, :cond_9

    .line 145
    invoke-virtual {p0, v0}, Landroid/content/Intent;->fixUris(I)V

    .line 147
    :cond_9
    return-void
.end method

.method public static blacklist refreshIntentCreatorToken(Landroid/content/Intent;)V
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;

    .line 156
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->preventIntentRedirect()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 158
    :cond_7
    :try_start_7
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Landroid/content/Intent;->cloneForCreatorToken()Landroid/content/Intent;

    move-result-object v1

    .line 158
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->refreshIntentCreatorToken(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setCreatorToken(Landroid/os/IBinder;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_16} :catch_18

    .line 162
    nop

    .line 163
    return-void

    .line 160
    :catch_18
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failure from system"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract blacklist cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/chooser/TargetInfo;
.end method

.method public abstract blacklist getAllSourceIntents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract blacklist getDisplayLabel()Ljava/lang/CharSequence;
.end method

.method public abstract blacklist getExtendedInfo()Ljava/lang/CharSequence;
.end method

.method public abstract blacklist getResolveInfo()Landroid/content/pm/ResolveInfo;
.end method

.method public abstract blacklist getResolvedComponentName()Landroid/content/ComponentName;
.end method

.method public abstract blacklist getResolvedIntent()Landroid/content/Intent;
.end method

.method public abstract blacklist isPinned()Z
.end method

.method public abstract blacklist isSuspended()Z
.end method

.method public abstract blacklist start(Landroid/app/Activity;Landroid/os/Bundle;)Z
.end method

.method public abstract blacklist startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z
.end method

.method public abstract blacklist startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
.end method
