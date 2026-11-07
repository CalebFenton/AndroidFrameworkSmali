.class Landroid/net/connectivity/org/chromium/base/ApplicationStatus$3;
.super Ljava/lang/Object;
.source "ApplicationStatus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->registerThreadSafeNativeApplicationStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 746
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->-$$Nest$sfgetsNativeApplicationStateListener()Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ApplicationStateListener;

    move-result-object v0

    if-eqz v0, :cond_7

    return-void

    .line 748
    :cond_7
    new-instance v0, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$3$1;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$3$1;-><init>(Landroid/net/connectivity/org/chromium/base/ApplicationStatus$3;)V

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->-$$Nest$sfputsNativeApplicationStateListener(Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ApplicationStateListener;)V

    .line 756
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->-$$Nest$sfgetsNativeApplicationStateListener()Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ApplicationStateListener;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->registerApplicationStateListener(Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ApplicationStateListener;)V

    .line 757
    return-void
.end method
