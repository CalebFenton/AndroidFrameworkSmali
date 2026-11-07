.class Lcom/android/internal/telephony/data/DataNetwork$2;
.super Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;
.source "DataNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataNetwork;->createNetworkAgent()Lcom/android/internal/telephony/data/TelephonyNetworkAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataNetwork;


# direct methods
.method public static synthetic blacklist $r8$lambda$gtuZnWzwJ1zcyYmyh3s5yUkMGsE(Lcom/android/internal/telephony/data/DataNetwork$2;ILandroid/net/Uri;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork$2;->lambda$onValidationStatus$0(ILandroid/net/Uri;)V

    return-void
.end method

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

    .line 1196
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$2;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic blacklist lambda$onValidationStatus$0(ILandroid/net/Uri;)V
    .registers 4

    .line 1201
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$2;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataNetworkCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$2;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onValidationStatusChanged(Lcom/android/internal/telephony/data/DataNetwork;ILandroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public blacklist onValidationStatus(ILandroid/net/Uri;)V
    .registers 5

    .line 1200
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$2;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataNetworkCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/DataNetwork$2;ILandroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method
