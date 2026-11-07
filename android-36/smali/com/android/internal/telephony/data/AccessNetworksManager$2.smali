.class Lcom/android/internal/telephony/data/AccessNetworksManager$2;
.super Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;
.source "AccessNetworksManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/AccessNetworksManager;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/util/concurrent/Executor;)V
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

    .line 444
    iput-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$2;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onDeviceConfigChanged()V
    .registers 1

    .line 447
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager$2;->this$0:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-static {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->-$$Nest$fgetmApnTypeToQnsChangeNetworkCounter(Lcom/android/internal/telephony/data/AccessNetworksManager;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
