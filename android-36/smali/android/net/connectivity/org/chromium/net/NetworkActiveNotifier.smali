.class public Landroid/net/connectivity/org/chromium/net/NetworkActiveNotifier;
.super Ljava/lang/Object;
.source "NetworkActiveNotifier.java"

# interfaces
.implements Landroid/net/ConnectivityManager$OnNetworkActiveListener;


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "net"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/NetworkActiveNotifier$Natives;
    }
.end annotation


# instance fields
.field private blacklist mAreNotificationsEnabled:Z

.field private final blacklist mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final blacklist mNativeNetworkActiveObserver:J


# direct methods
.method private constructor blacklist <init>(J)V
    .registers 5
    .param p1, "nativeNetworkActiveNotifier"    # J

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-wide p1, p0, Landroid/net/connectivity/org/chromium/net/NetworkActiveNotifier;->mNativeNetworkActiveObserver:J

    .line 85
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 86
    .local v0, "ctx":Landroid/content/Context;
    nop

    .line 87
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkActiveNotifier;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 88
    return-void
.end method

.method public static blacklist build(J)Landroid/net/connectivity/org/chromium/net/NetworkActiveNotifier;
    .registers 3
    .param p0, "nativeNetworkActiveNotifier"    # J

    .line 43
    new-instance v0, Landroid/net/connectivity/org/chromium/net/NetworkActiveNotifier;

    invoke-direct {v0, p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkActiveNotifier;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public blacklist disableNotifications()V
    .registers 2

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkActiveNotifier;->mAreNotificationsEnabled:Z

    .line 55
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkActiveNotifier;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->removeDefaultNetworkActiveListener(Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V

    .line 56
    return-void
.end method

.method public blacklist enableNotifications()V
    .registers 2

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkActiveNotifier;->mAreNotificationsEnabled:Z

    .line 49
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkActiveNotifier;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->addDefaultNetworkActiveListener(Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V

    .line 50
    return-void
.end method

.method public blacklist fakeDefaultNetworkActive()V
    .registers 2

    .line 71
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkActiveNotifier;->mAreNotificationsEnabled:Z

    if-eqz v0, :cond_7

    .line 73
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/NetworkActiveNotifier;->onNetworkActive()V

    .line 75
    :cond_7
    return-void
.end method

.method public blacklist isDefaultNetworkActive()Z
    .registers 2

    .line 60
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkActiveNotifier;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isDefaultNetworkActive()Z

    move-result v0

    return v0
.end method

.method public whitelist onNetworkActive()V
    .registers 4

    .line 65
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/NetworkActiveNotifierJni;->get()Landroid/net/connectivity/org/chromium/net/NetworkActiveNotifier$Natives;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkActiveNotifier;->mNativeNetworkActiveObserver:J

    invoke-interface {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/NetworkActiveNotifier$Natives;->notifyOfDefaultNetworkActive(J)V

    .line 66
    return-void
.end method
