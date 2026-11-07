.class Lcom/android/internal/telephony/data/DataRetryManager$1;
.super Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;
.source "DataRetryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataRetryManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Landroid/util/SparseArray;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataRetryManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataRetryManager;Ljava/util/concurrent/Executor;)V
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

    .line 1027
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$1;->this$0:Lcom/android/internal/telephony/data/DataRetryManager;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onCarrierConfigChanged()V
    .registers 1

    .line 1030
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$1;->this$0:Lcom/android/internal/telephony/data/DataRetryManager;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataRetryManager;->-$$Nest$monCarrierConfigUpdated(Lcom/android/internal/telephony/data/DataRetryManager;)V

    return-void
.end method
