.class Lcom/android/internal/telephony/data/DataNetwork$DefaultState$2;
.super Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;
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

    .line 1227
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState$2;->this$1:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onDataEnabledChanged(ZILjava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_12

    .line 1235
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState$2;->this$1:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    iget-object p1, p1, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string p2, "Data enabled. update network capabilities."

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 1236
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState$2;->this$1:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)V

    :cond_12
    return-void
.end method

.method public blacklist onDataRoamingEnabledChanged(Z)V
    .registers 3

    if-eqz p1, :cond_12

    .line 1245
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState$2;->this$1:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    iget-object p1, p1, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string v0, "Data roaming enabled. update network capabilities."

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 1246
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState$2;->this$1:Lcom/android/internal/telephony/data/DataNetwork$DefaultState;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)V

    :cond_12
    return-void
.end method
