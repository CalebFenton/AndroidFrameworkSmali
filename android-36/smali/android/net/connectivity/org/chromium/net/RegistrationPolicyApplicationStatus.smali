.class public Landroid/net/connectivity/org/chromium/net/RegistrationPolicyApplicationStatus;
.super Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;
.source "RegistrationPolicyApplicationStatus.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ApplicationStateListener;


# instance fields
.field private blacklist mDestroyed:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist destroy()V
    .registers 2

    .line 25
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/RegistrationPolicyApplicationStatus;->mDestroyed:Z

    if-eqz v0, :cond_5

    return-void

    .line 26
    :cond_5
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->unregisterApplicationStateListener(Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ApplicationStateListener;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/RegistrationPolicyApplicationStatus;->mDestroyed:Z

    .line 28
    return-void
.end method

.method protected blacklist init(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)V
    .registers 3
    .param p1, "notifier"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    .line 18
    invoke-super {p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;->init(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)V

    .line 19
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->registerApplicationStateListener(Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ApplicationStateListener;)V

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/org/chromium/net/RegistrationPolicyApplicationStatus;->onApplicationStateChange(I)V

    .line 21
    return-void
.end method

.method public blacklist onApplicationStateChange(I)V
    .registers 3
    .param p1, "newState"    # I

    .line 36
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->hasVisibleActivities()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 37
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RegistrationPolicyApplicationStatus;->register()V

    goto :goto_d

    .line 39
    :cond_a
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RegistrationPolicyApplicationStatus;->unregister()V

    .line 41
    :goto_d
    return-void
.end method
