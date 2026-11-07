.class Landroid/service/ambientcontext/AmbientContextDetectionService$1;
.super Landroid/service/ambientcontext/IAmbientContextDetectionService$Stub;
.source "AmbientContextDetectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/ambientcontext/AmbientContextDetectionService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/ambientcontext/AmbientContextDetectionService;


# direct methods
.method constructor blacklist <init>(Landroid/service/ambientcontext/AmbientContextDetectionService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/ambientcontext/AmbientContextDetectionService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 71
    iput-object p1, p0, Landroid/service/ambientcontext/AmbientContextDetectionService$1;->this$0:Landroid/service/ambientcontext/AmbientContextDetectionService;

    invoke-direct {p0}, Landroid/service/ambientcontext/IAmbientContextDetectionService$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$queryServiceStatus$2(Landroid/os/RemoteCallback;Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;)V
    .registers 4
    .param p0, "callback"    # Landroid/os/RemoteCallback;
    .param p1, "response"    # Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;

    .line 121
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 122
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.app.ambientcontext.AmbientContextServiceStatusBundleKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 126
    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 127
    return-void
.end method

.method static synthetic blacklist lambda$startDetection$0(Landroid/os/RemoteCallback;Landroid/service/ambientcontext/AmbientContextDetectionResult;)V
    .registers 4
    .param p0, "detectionResultCallback"    # Landroid/os/RemoteCallback;
    .param p1, "result"    # Landroid/service/ambientcontext/AmbientContextDetectionResult;

    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.app.ambientcontext.AmbientContextDetectionResultBundleKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 87
    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 88
    return-void
.end method

.method static synthetic blacklist lambda$startDetection$1(Landroid/os/RemoteCallback;Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;)V
    .registers 4
    .param p0, "statusCallback"    # Landroid/os/RemoteCallback;
    .param p1, "status"    # Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;

    .line 91
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.app.ambientcontext.AmbientContextServiceStatusBundleKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 96
    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 97
    return-void
.end method


# virtual methods
.method public blacklist queryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 6
    .param p1, "eventTypes"    # [I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 116
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v0, Landroid/service/ambientcontext/AmbientContextDetectionService$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Landroid/service/ambientcontext/AmbientContextDetectionService$1$$ExternalSyntheticLambda0;-><init>(Landroid/os/RemoteCallback;)V

    .line 128
    .local v0, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;>;"
    iget-object v1, p0, Landroid/service/ambientcontext/AmbientContextDetectionService$1;->this$0:Landroid/service/ambientcontext/AmbientContextDetectionService;

    invoke-virtual {v1, p1, p2, v0}, Landroid/service/ambientcontext/AmbientContextDetectionService;->onQueryServiceStatus([ILjava/lang/String;Ljava/util/function/Consumer;)V

    .line 130
    return-void
.end method

.method public blacklist startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .registers 10
    .param p1, "request"    # Landroid/app/ambientcontext/AmbientContextEventRequest;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "detectionResultCallback"    # Landroid/os/RemoteCallback;
    .param p4, "statusCallback"    # Landroid/os/RemoteCallback;

    .line 77
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v0, Landroid/service/ambientcontext/AmbientContextDetectionService$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3}, Landroid/service/ambientcontext/AmbientContextDetectionService$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/RemoteCallback;)V

    .line 89
    .local v0, "detectionResultConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/ambientcontext/AmbientContextDetectionResult;>;"
    new-instance v1, Landroid/service/ambientcontext/AmbientContextDetectionService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p4}, Landroid/service/ambientcontext/AmbientContextDetectionService$1$$ExternalSyntheticLambda2;-><init>(Landroid/os/RemoteCallback;)V

    .line 98
    .local v1, "statusConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;>;"
    iget-object v2, p0, Landroid/service/ambientcontext/AmbientContextDetectionService$1;->this$0:Landroid/service/ambientcontext/AmbientContextDetectionService;

    invoke-virtual {v2, p1, p2, v0, v1}, Landroid/service/ambientcontext/AmbientContextDetectionService;->onStartDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 100
    invoke-static {}, Landroid/service/ambientcontext/AmbientContextDetectionService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startDetection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public blacklist stopDetection(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 106
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionService$1;->this$0:Landroid/service/ambientcontext/AmbientContextDetectionService;

    invoke-virtual {v0, p1}, Landroid/service/ambientcontext/AmbientContextDetectionService;->onStopDetection(Ljava/lang/String;)V

    .line 108
    return-void
.end method
