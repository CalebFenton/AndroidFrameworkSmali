.class Lcom/android/internal/telephony/data/DataSettingsManager$1;
.super Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;
.source "DataSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataSettingsManager;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataSettingsManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataSettingsManager;Ljava/util/concurrent/Executor;)V
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

    .line 285
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager$1;->this$0:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onCarrierConfigChanged()V
    .registers 2

    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataSettingsManager$1;->this$0:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->-$$Nest$fgetmDataConfigManager(Lcom/android/internal/telephony/data/DataSettingsManager;)Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->isConfigCarrierSpecific()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 289
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager$1;->this$0:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDefaultDataRoamingEnabled()V

    :cond_11
    return-void
.end method
