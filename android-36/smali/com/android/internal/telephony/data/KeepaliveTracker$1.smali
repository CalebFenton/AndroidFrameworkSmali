.class Lcom/android/internal/telephony/data/KeepaliveTracker$1;
.super Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;
.source "KeepaliveTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/KeepaliveTracker;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkAgent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/KeepaliveTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/KeepaliveTracker;Ljava/util/concurrent/Executor;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/android/internal/telephony/data/KeepaliveTracker$1;->this$0:Lcom/android/internal/telephony/data/KeepaliveTracker;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onStartSocketKeepalive(ILjava/time/Duration;Landroid/net/KeepalivePacketData;)V
    .registers 4

    .line 121
    iget-object p0, p0, Lcom/android/internal/telephony/data/KeepaliveTracker$1;->this$0:Lcom/android/internal/telephony/data/KeepaliveTracker;

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/KeepaliveTracker;->-$$Nest$monStartSocketKeepaliveRequested(Lcom/android/internal/telephony/data/KeepaliveTracker;ILjava/time/Duration;Landroid/net/KeepalivePacketData;)V

    return-void
.end method

.method public blacklist onStopSocketKeepalive(I)V
    .registers 2

    .line 126
    iget-object p0, p0, Lcom/android/internal/telephony/data/KeepaliveTracker$1;->this$0:Lcom/android/internal/telephony/data/KeepaliveTracker;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/KeepaliveTracker;->-$$Nest$monStopSocketKeepaliveRequested(Lcom/android/internal/telephony/data/KeepaliveTracker;I)V

    return-void
.end method
