.class Landroid/service/contentcapture/ContentCaptureService$1;
.super Landroid/service/contentcapture/IContentCaptureService$Stub;
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
.method public static synthetic blacklist $r8$lambda$0tuRIcs-kl3hMZ-bOSPj8ECMvuY(Landroid/service/contentcapture/ContentCaptureService;ILandroid/service/contentcapture/SnapshotData;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$mhandleOnActivitySnapshot(Landroid/service/contentcapture/ContentCaptureService;ILandroid/service/contentcapture/SnapshotData;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8JC6fc1Gxw2srmc18hV6aq2oduE(Landroid/service/contentcapture/ContentCaptureService;Landroid/os/IBinder;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$mhandleOnConnected(Landroid/service/contentcapture/ContentCaptureService;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MJAO67X8uvqNL9uHFqFlw1fLc9I(Landroid/service/contentcapture/ContentCaptureService;Landroid/service/contentcapture/ActivityEvent;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$mhandleOnActivityEvent(Landroid/service/contentcapture/ContentCaptureService;Landroid/service/contentcapture/ActivityEvent;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$TvHXk1CffOTu18nd01vlhyu6pXQ(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/DataRemovalRequest;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$mhandleOnDataRemovalRequest(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/DataRemovalRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bWf1Mouvf2BfRGf6knhCLmSneo0(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$mhandleOnDataShared(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bmWHvTVbpMyMJierxBdBj5I6i_U(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$mhandleOnCreateSession(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gLUyyVvKMEykzOR43XBZrOafVyc(Landroid/service/contentcapture/ContentCaptureService;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$mhandleFinishSession(Landroid/service/contentcapture/ContentCaptureService;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zvwBznd32qzWPEq3CaV_Z61DgQY(Landroid/service/contentcapture/ContentCaptureService;)V
    .registers 1

    invoke-static {p0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$mhandleOnDisconnected(Landroid/service/contentcapture/ContentCaptureService;)V

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

    .line 159
    iput-object p1, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-direct {p0}, Landroid/service/contentcapture/IContentCaptureService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onActivityEvent(Landroid/service/contentcapture/ActivityEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/service/contentcapture/ActivityEvent;

    .line 210
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda4;-><init>()V

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 212
    return-void
.end method

.method public blacklist onActivitySnapshot(ILandroid/service/contentcapture/SnapshotData;)V
    .registers 7
    .param p1, "sessionId"    # I
    .param p2, "snapshotData"    # Landroid/service/contentcapture/SnapshotData;

    .line 185
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda7;-><init>()V

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    .line 187
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 186
    invoke-static {v1, v2, v3, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 188
    return-void
.end method

.method public blacklist onConnected(Landroid/os/IBinder;ZZ)V
    .registers 7
    .param p1, "callback"    # Landroid/os/IBinder;
    .param p2, "verbose"    # Z
    .param p3, "debug"    # Z

    .line 163
    sput-boolean p2, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    .line 164
    sput-boolean p3, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    .line 165
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 167
    return-void
.end method

.method public blacklist onDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V
    .registers 5
    .param p1, "request"    # Landroid/view/contentcapture/DataRemovalRequest;

    .line 198
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda5;-><init>()V

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 200
    return-void
.end method

.method public blacklist onDataShared(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V
    .registers 6
    .param p1, "request"    # Landroid/view/contentcapture/DataShareRequest;
    .param p2, "callback"    # Landroid/service/contentcapture/IDataShareCallback;

    .line 204
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 206
    return-void
.end method

.method public blacklist onDisconnected()V
    .registers 4

    .line 171
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 173
    return-void
.end method

.method public blacklist onSessionFinished(I)V
    .registers 6
    .param p1, "sessionId"    # I

    .line 192
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    .line 193
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 192
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 194
    return-void
.end method

.method public blacklist onSessionStarted(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V
    .registers 14
    .param p1, "context"    # Landroid/view/contentcapture/ContentCaptureContext;
    .param p2, "sessionId"    # I
    .param p3, "uid"    # I
    .param p4, "clientReceiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p5, "initialState"    # I

    .line 178
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v0}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda6;-><init>()V

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService$1;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    .line 179
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 180
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 178
    move-object v3, p1

    move-object v6, p4

    .end local p1    # "context":Landroid/view/contentcapture/ContentCaptureContext;
    .end local p4    # "clientReceiver":Lcom/android/internal/os/IResultReceiver;
    .local v3, "context":Landroid/view/contentcapture/ContentCaptureContext;
    .local v6, "clientReceiver":Lcom/android/internal/os/IResultReceiver;
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 181
    return-void
.end method
