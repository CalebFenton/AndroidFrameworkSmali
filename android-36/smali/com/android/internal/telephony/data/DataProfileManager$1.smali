.class Lcom/android/internal/telephony/data/DataProfileManager$1;
.super Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;
.source "DataProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataProfileManager;->registerAllEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataProfileManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataProfileManager;Ljava/util/concurrent/Executor;)V
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

    .line 178
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager$1;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onConnectedInternetDataNetworksChanged(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/DataNetwork;",
            ">;)V"
        }
    .end annotation

    .line 182
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 183
    :cond_7
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager$1;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$monInternetDataNetworkConnected(Lcom/android/internal/telephony/data/DataProfileManager;Ljava/util/Set;)V

    return-void
.end method
