.class Landroid/service/contentcapture/ContentCaptureService$3;
.super Landroid/view/contentcapture/IContentCaptureDirectManager$Stub;
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
.method public static synthetic blacklist $r8$lambda$1fhbIynFDcj17RprkZRTSNmXL9I(Landroid/service/contentcapture/ContentCaptureService;ILandroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$mhandleSendEvents(Landroid/service/contentcapture/ContentCaptureService;ILandroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V

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

    .line 243
    iput-object p1, p0, Landroid/service/contentcapture/ContentCaptureService$3;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-direct {p0}, Landroid/view/contentcapture/IContentCaptureDirectManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist sendEvents(Landroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V
    .registers 11
    .param p1, "events"    # Landroid/content/pm/ParceledListSlice;
    .param p2, "reason"    # I
    .param p3, "options"    # Landroid/content/ContentCaptureOptions;

    .line 248
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$3;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$3$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/contentcapture/ContentCaptureService$3$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService$3;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    .line 249
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 248
    move-object v4, p1

    move-object v6, p3

    .end local p1    # "events":Landroid/content/pm/ParceledListSlice;
    .end local p3    # "options":Landroid/content/ContentCaptureOptions;
    .local v4, "events":Landroid/content/pm/ParceledListSlice;
    .local v6, "options":Landroid/content/ContentCaptureOptions;
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 250
    return-void
.end method
