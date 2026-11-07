.class Lcom/android/internal/telephony/data/DataNetwork$DefaultState$4;
.super Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;
.source "DataNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork$DefaultState;Ljava/util/concurrent/Executor;)V
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

    .line 1305
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState$4;->this$1:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onPreferredTransportChanged(IZ)V
    .registers 3

    if-nez p1, :cond_12

    .line 1310
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState$4;->this$1:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    iget-object p1, p1, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string p2, "MMS preference changed."

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 1311
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState$4;->this$1:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)V

    :cond_12
    return-void
.end method
