.class public abstract Landroid/net/connectivity/org/chromium/base/ActivityLifecycleCallbacksAdapter;
.super Ljava/lang/Object;
.source "ActivityLifecycleCallbacksAdapter.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 18
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/org/chromium/base/ActivityLifecycleCallbacksAdapter;->onStateChanged(Landroid/app/Activity;I)V

    .line 19
    return-void
.end method

.method public whitelist onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 23
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/org/chromium/base/ActivityLifecycleCallbacksAdapter;->onStateChanged(Landroid/app/Activity;I)V

    .line 24
    return-void
.end method

.method public whitelist onActivityPaused(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 28
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/org/chromium/base/ActivityLifecycleCallbacksAdapter;->onStateChanged(Landroid/app/Activity;I)V

    .line 29
    return-void
.end method

.method public whitelist onActivityResumed(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 33
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/org/chromium/base/ActivityLifecycleCallbacksAdapter;->onStateChanged(Landroid/app/Activity;I)V

    .line 34
    return-void
.end method

.method public whitelist onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 47
    return-void
.end method

.method public whitelist onActivityStarted(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 38
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/org/chromium/base/ActivityLifecycleCallbacksAdapter;->onStateChanged(Landroid/app/Activity;I)V

    .line 39
    return-void
.end method

.method public whitelist onActivityStopped(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 43
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/org/chromium/base/ActivityLifecycleCallbacksAdapter;->onStateChanged(Landroid/app/Activity;I)V

    .line 44
    return-void
.end method

.method public abstract blacklist onStateChanged(Landroid/app/Activity;I)V
.end method
