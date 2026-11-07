.class Lcom/android/internal/telephony/data/DataStallRecoveryManager$2;
.super Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;
.source "DataStallRecoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataStallRecoveryManager;->registerAllEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataStallRecoveryManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataStallRecoveryManager;Ljava/util/concurrent/Executor;)V
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

    .line 311
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager$2;->this$0:Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onCarrierConfigChanged()V
    .registers 1

    .line 314
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager$2;->this$0:Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->-$$Nest$monCarrierConfigUpdated(Lcom/android/internal/telephony/data/DataStallRecoveryManager;)V

    return-void
.end method
