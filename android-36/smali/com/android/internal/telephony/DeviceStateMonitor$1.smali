.class Lcom/android/internal/telephony/DeviceStateMonitor$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "DeviceStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DeviceStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist mWifiNetworks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/Network;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/DeviceStateMonitor;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/DeviceStateMonitor;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 116
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->mWifiNetworks:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public whitelist onAvailable(Landroid/net/Network;)V
    .registers 7

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->mWifiNetworks:Ljava/util/Set;

    monitor-enter v0

    .line 121
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->mWifiNetworks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_21

    .line 123
    iget-object v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 124
    iget-object v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    const-string v2, "Wifi (default) connected"

    invoke-static {v1, v2, v4}, Lcom/android/internal/telephony/DeviceStateMonitor;->-$$Nest$mlog(Lcom/android/internal/telephony/DeviceStateMonitor;Ljava/lang/String;Z)V

    goto :goto_21

    :catchall_1f
    move-exception p0

    goto :goto_28

    .line 126
    :cond_21
    :goto_21
    iget-object p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->mWifiNetworks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    monitor-exit v0

    return-void

    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_1f

    throw p0
.end method

.method public whitelist onLost(Landroid/net/Network;)V
    .registers 5

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->mWifiNetworks:Ljava/util/Set;

    monitor-enter v0

    .line 133
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->mWifiNetworks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 134
    iget-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->mWifiNetworks:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_26

    .line 136
    iget-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 138
    iget-object p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    const-string p1, "Wifi (default) disconnected"

    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->-$$Nest$mlog(Lcom/android/internal/telephony/DeviceStateMonitor;Ljava/lang/String;Z)V

    goto :goto_26

    :catchall_24
    move-exception p0

    goto :goto_28

    .line 140
    :cond_26
    :goto_26
    monitor-exit v0

    return-void

    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_24

    throw p0
.end method
