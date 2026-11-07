.class Lcom/android/internal/telephony/data/DataNetwork$1;
.super Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;
.source "DataNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataNetwork;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Landroid/os/Looper;Landroid/util/SparseArray;Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;ILcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataNetwork;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork;Ljava/util/concurrent/Executor;)V
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

    .line 1054
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$1;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onSubscriptionPlanOverride()V
    .registers 2

    .line 1057
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$1;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return-void
.end method
