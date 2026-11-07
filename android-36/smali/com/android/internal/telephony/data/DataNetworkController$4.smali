.class Lcom/android/internal/telephony/data/DataNetworkController$4;
.super Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;
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

    .line 991
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$4;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onDataStallReestablishInternet()V
    .registers 1

    .line 994
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$4;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$monDataStallReestablishInternet(Lcom/android/internal/telephony/data/DataNetworkController;)V

    return-void
.end method
