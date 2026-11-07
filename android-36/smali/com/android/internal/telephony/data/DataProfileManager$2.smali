.class Lcom/android/internal/telephony/data/DataProfileManager$2;
.super Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;
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

    .line 186
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager$2;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onCarrierConfigChanged()V
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager$2;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$monCarrierConfigUpdated(Lcom/android/internal/telephony/data/DataProfileManager;)V

    return-void
.end method
