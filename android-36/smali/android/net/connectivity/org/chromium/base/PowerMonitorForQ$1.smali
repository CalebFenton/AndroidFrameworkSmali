.class Landroid/net/connectivity/org/chromium/base/PowerMonitorForQ$1;
.super Ljava/lang/Object;
.source "PowerMonitorForQ.java"

# interfaces
.implements Landroid/os/PowerManager$OnThermalStatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/base/PowerMonitorForQ;->addThermalStatusListener(Landroid/os/PowerManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onThermalStatusChanged(I)V
    .registers 3
    .param p1, "status"    # I

    .line 26
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/PowerMonitorJni;->get()Landroid/net/connectivity/org/chromium/base/PowerMonitor$Natives;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/net/connectivity/org/chromium/base/PowerMonitor$Natives;->onThermalStatusChanged(I)V

    .line 27
    return-void
.end method
