.class public final Landroid/net/connectivity/org/chromium/base/PowerMonitorForQ;
.super Ljava/lang/Object;
.source "PowerMonitorForQ.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addThermalStatusListener(Landroid/os/PowerManager;)V
    .registers 2
    .param p0, "powerManager"    # Landroid/os/PowerManager;

    .line 22
    new-instance v0, Landroid/net/connectivity/org/chromium/base/PowerMonitorForQ$1;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/PowerMonitorForQ$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->addThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    .line 29
    return-void
.end method
