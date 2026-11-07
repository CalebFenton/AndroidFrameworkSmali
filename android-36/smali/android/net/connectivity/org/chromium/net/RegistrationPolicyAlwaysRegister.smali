.class public Landroid/net/connectivity/org/chromium/net/RegistrationPolicyAlwaysRegister;
.super Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;
.source "RegistrationPolicyAlwaysRegister.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist destroy()V
    .registers 1

    .line 17
    return-void
.end method

.method protected blacklist init(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)V
    .registers 2
    .param p1, "notifier"    # Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    .line 12
    invoke-super {p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;->init(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)V

    .line 13
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RegistrationPolicyAlwaysRegister;->register()V

    .line 14
    return-void
.end method
