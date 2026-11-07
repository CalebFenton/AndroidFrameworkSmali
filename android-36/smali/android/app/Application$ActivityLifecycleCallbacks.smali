.class public interface abstract Landroid/app/Application$ActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "Application.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActivityLifecycleCallbacks"
.end annotation


# virtual methods
.method public blacklist onActivityConfigurationChanged(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 215
    return-void
.end method

.method public abstract whitelist onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end method

.method public abstract whitelist onActivityDestroyed(Landroid/app/Activity;)V
.end method

.method public abstract whitelist onActivityPaused(Landroid/app/Activity;)V
.end method

.method public whitelist onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 91
    return-void
.end method

.method public whitelist onActivityPostDestroyed(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 208
    return-void
.end method

.method public whitelist onActivityPostPaused(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 148
    return-void
.end method

.method public whitelist onActivityPostResumed(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 129
    return-void
.end method

.method public whitelist onActivityPostSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 189
    return-void
.end method

.method public whitelist onActivityPostStarted(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 110
    return-void
.end method

.method public whitelist onActivityPostStopped(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 167
    return-void
.end method

.method public whitelist onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 78
    return-void
.end method

.method public whitelist onActivityPreDestroyed(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 196
    return-void
.end method

.method public whitelist onActivityPrePaused(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 136
    return-void
.end method

.method public whitelist onActivityPreResumed(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 117
    return-void
.end method

.method public whitelist onActivityPreSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 175
    return-void
.end method

.method public whitelist onActivityPreStarted(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 98
    return-void
.end method

.method public whitelist onActivityPreStopped(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 155
    return-void
.end method

.method public abstract whitelist onActivityResumed(Landroid/app/Activity;)V
.end method

.method public abstract whitelist onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
.end method

.method public abstract whitelist onActivityStarted(Landroid/app/Activity;)V
.end method

.method public abstract whitelist onActivityStopped(Landroid/app/Activity;)V
.end method
