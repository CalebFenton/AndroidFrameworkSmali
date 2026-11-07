.class Landroid/service/contentcapture/ContentCaptureService$2;
.super Landroid/service/contentcapture/IContentProtectionService$Stub;
.source "ContentCaptureService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/contentcapture/ContentCaptureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/contentcapture/ContentCaptureService;


# direct methods
.method public static synthetic blacklist $r8$lambda$HXAgZSz0lmkjYbfDt00C8Y4p1Xs(Landroid/service/contentcapture/ContentCaptureService;ILandroid/content/pm/ParceledListSlice;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$mhandleOnLoginDetected(Landroid/service/contentcapture/ContentCaptureService;ILandroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oSOkfZE7WLSFI8bMak1zy933AoA(Landroid/service/contentcapture/ContentCaptureService;ILandroid/os/IBinder;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$mhandleOnUpdateAllowlistRequest(Landroid/service/contentcapture/ContentCaptureService;ILandroid/os/IBinder;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/contentcapture/ContentCaptureService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/contentcapture/ContentCaptureService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 217
    iput-object p1, p0, Landroid/service/contentcapture/ContentCaptureService$2;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-direct {p0}, Landroid/service/contentcapture/IContentProtectionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onLoginDetected(Landroid/content/pm/ParceledListSlice;)V
    .registers 6
    .param p1, "events"    # Landroid/content/pm/ParceledListSlice;

    .line 222
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$2;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$2$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/contentcapture/ContentCaptureService$2$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService$2;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    .line 226
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 223
    invoke-static {v1, v2, v3, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 222
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 228
    return-void
.end method

.method public blacklist onUpdateAllowlistRequest(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "callback"    # Landroid/os/IBinder;

    .line 232
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$2;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$2$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/contentcapture/ContentCaptureService$2$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService$2;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    .line 236
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 233
    invoke-static {v1, v2, v3, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 238
    return-void
.end method
