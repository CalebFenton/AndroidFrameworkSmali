.class Lcom/android/internal/telephony/data/QosCallbackTracker$1;
.super Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;
.source "QosCallbackTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/QosCallbackTracker;-><init>(Lcom/android/internal/telephony/data/TelephonyNetworkAgent;Lcom/android/internal/telephony/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/QosCallbackTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/QosCallbackTracker;Ljava/util/concurrent/Executor;)V
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

    .line 119
    iput-object p1, p0, Lcom/android/internal/telephony/data/QosCallbackTracker$1;->this$0:Lcom/android/internal/telephony/data/QosCallbackTracker;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onQosCallbackRegistered(ILandroid/net/QosFilter;)V
    .registers 5

    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/data/QosCallbackTracker$1;->this$0:Lcom/android/internal/telephony/data/QosCallbackTracker;

    new-instance v1, Lcom/android/internal/telephony/data/QosCallbackTracker$1$1;

    invoke-direct {v1, p0, p2}, Lcom/android/internal/telephony/data/QosCallbackTracker$1$1;-><init>(Lcom/android/internal/telephony/data/QosCallbackTracker$1;Landroid/net/QosFilter;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/data/QosCallbackTracker;->addFilter(ILcom/android/internal/telephony/data/QosCallbackTracker$IFilter;)V

    return-void
.end method
