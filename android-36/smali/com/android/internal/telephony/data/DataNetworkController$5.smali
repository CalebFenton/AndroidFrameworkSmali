.class Lcom/android/internal/telephony/data/DataNetworkController$5;
.super Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;
.source "DataNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataNetworkController;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataNetworkController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;)V
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

    .line 999
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$5;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onDataNetworkHandoverRetry(Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V
    .registers 2

    .line 1009
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1010
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$5;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 1011
    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$monDataNetworkHandoverRetry(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    return-void
.end method

.method public blacklist onDataNetworkHandoverRetryStopped(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 2

    .line 1016
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1017
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$5;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$monDataNetworkHandoverRetryStopped(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method public blacklist onDataNetworkSetupRetry(Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V
    .registers 2

    .line 1003
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1004
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$5;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$monDataNetworkSetupRetry(Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V

    return-void
.end method
