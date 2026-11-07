.class Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;
.super Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService$Stub;
.source "OnDeviceSandboxedInferenceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;


# direct methods
.method constructor blacklist <init>(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 165
    iput-object p1, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    invoke-direct {p0}, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist processRequest(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IResponseCallback;)V
    .registers 24
    .param p1, "callerUid"    # I
    .param p2, "feature"    # Landroid/app/ondeviceintelligence/Feature;
    .param p3, "request"    # Landroid/os/Bundle;
    .param p4, "requestType"    # I
    .param p5, "cancellationSignalFuture"    # Lcom/android/internal/infra/AndroidFuture;
    .param p6, "processingSignalFuture"    # Lcom/android/internal/infra/AndroidFuture;
    .param p7, "callback"    # Landroid/app/ondeviceintelligence/IResponseCallback;

    .line 236
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const/4 v3, 0x0

    .line 239
    .local v3, "transport":Landroid/os/ICancellationSignal;
    if-eqz v1, :cond_16

    .line 240
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v3

    .line 241
    invoke-virtual {v1, v3}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 243
    :cond_16
    const/4 v4, 0x0

    .line 244
    .local v4, "processingSignalTransport":Landroid/app/ondeviceintelligence/IProcessingSignal;
    if-eqz v2, :cond_20

    .line 245
    invoke-static {}, Landroid/app/ondeviceintelligence/ProcessingSignal;->createTransport()Landroid/app/ondeviceintelligence/IProcessingSignal;

    move-result-object v4

    .line 246
    invoke-virtual {v2, v4}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 248
    :cond_20
    iget-object v5, v0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    invoke-static {v5}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->-$$Nest$fgetmHandler(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1$$ExternalSyntheticLambda3;-><init>()V

    iget-object v7, v0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    .line 251
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 252
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 253
    invoke-static {v3}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v12

    .line 254
    invoke-static {v4}, Landroid/app/ondeviceintelligence/ProcessingSignal;->fromTransport(Landroid/app/ondeviceintelligence/IProcessingSignal;)Landroid/app/ondeviceintelligence/ProcessingSignal;

    move-result-object v13

    iget-object v9, v0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    .line 255
    move-object/from16 v15, p7

    invoke-static {v9, v15}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->-$$Nest$mwrapResponseCallback(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;Landroid/app/ondeviceintelligence/IResponseCallback;)Landroid/app/ondeviceintelligence/ProcessingCallback;

    move-result-object v14

    .line 249
    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-static/range {v6 .. v14}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/OctConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 248
    invoke-virtual {v5, v6}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 256
    return-void
.end method

.method public blacklist processRequestStreaming(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IStreamingResponseCallback;)V
    .registers 24
    .param p1, "callerUid"    # I
    .param p2, "feature"    # Landroid/app/ondeviceintelligence/Feature;
    .param p3, "request"    # Landroid/os/Bundle;
    .param p4, "requestType"    # I
    .param p5, "cancellationSignalFuture"    # Lcom/android/internal/infra/AndroidFuture;
    .param p6, "processingSignalFuture"    # Lcom/android/internal/infra/AndroidFuture;
    .param p7, "callback"    # Landroid/app/ondeviceintelligence/IStreamingResponseCallback;

    .line 203
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const/4 v3, 0x0

    .line 207
    .local v3, "transport":Landroid/os/ICancellationSignal;
    if-eqz v1, :cond_16

    .line 208
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v3

    .line 209
    invoke-virtual {v1, v3}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 211
    :cond_16
    const/4 v4, 0x0

    .line 212
    .local v4, "processingSignalTransport":Landroid/app/ondeviceintelligence/IProcessingSignal;
    if-eqz v2, :cond_20

    .line 213
    invoke-static {}, Landroid/app/ondeviceintelligence/ProcessingSignal;->createTransport()Landroid/app/ondeviceintelligence/IProcessingSignal;

    move-result-object v4

    .line 214
    invoke-virtual {v2, v4}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 218
    :cond_20
    iget-object v5, v0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    invoke-static {v5}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->-$$Nest$fgetmHandler(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v7, v0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    .line 221
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 224
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 225
    invoke-static {v3}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v12

    .line 226
    invoke-static {v4}, Landroid/app/ondeviceintelligence/ProcessingSignal;->fromTransport(Landroid/app/ondeviceintelligence/IProcessingSignal;)Landroid/app/ondeviceintelligence/ProcessingSignal;

    move-result-object v13

    iget-object v9, v0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    .line 227
    move-object/from16 v15, p7

    invoke-static {v9, v15}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->-$$Nest$mwrapStreamingResponseCallback(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;Landroid/app/ondeviceintelligence/IStreamingResponseCallback;)Landroid/app/ondeviceintelligence/StreamingProcessingCallback;

    move-result-object v14

    .line 219
    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-static/range {v6 .. v14}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/OctConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 218
    invoke-virtual {v5, v6}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 228
    return-void
.end method

.method public blacklist registerRemoteStorageService(Landroid/service/ondeviceintelligence/IRemoteStorageService;Landroid/os/IRemoteCallback;)V
    .registers 4
    .param p1, "storageService"    # Landroid/service/ondeviceintelligence/IRemoteStorageService;
    .param p2, "remoteCallback"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    invoke-static {v0, p1}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->-$$Nest$fputmRemoteStorageService(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;Landroid/service/ondeviceintelligence/IRemoteStorageService;)V

    .line 171
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-interface {p2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 173
    return-void
.end method

.method public blacklist requestTokenInfo(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/ITokenInfoCallback;)V
    .registers 15
    .param p1, "callerUid"    # I
    .param p2, "feature"    # Landroid/app/ondeviceintelligence/Feature;
    .param p3, "request"    # Landroid/os/Bundle;
    .param p4, "cancellationSignalFuture"    # Lcom/android/internal/infra/AndroidFuture;
    .param p5, "tokenInfoCallback"    # Landroid/app/ondeviceintelligence/ITokenInfoCallback;

    .line 179
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "transport":Landroid/os/ICancellationSignal;
    if-eqz p4, :cond_10

    .line 183
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 184
    invoke-virtual {p4, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 187
    :cond_10
    iget-object v1, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    invoke-static {v1}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->-$$Nest$fgetmHandler(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v3, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 193
    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v7

    iget-object v5, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    .line 194
    invoke-static {v5, p5}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->-$$Nest$mwrapTokenInfoCallback(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;Landroid/app/ondeviceintelligence/ITokenInfoCallback;)Landroid/os/OutcomeReceiver;

    move-result-object v8

    .line 188
    move-object v5, p2

    move-object v6, p3

    .end local p2    # "feature":Landroid/app/ondeviceintelligence/Feature;
    .end local p3    # "request":Landroid/os/Bundle;
    .local v5, "feature":Landroid/app/ondeviceintelligence/Feature;
    .local v6, "request":Landroid/os/Bundle;
    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 187
    invoke-virtual {v1, p2}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 195
    return-void
.end method

.method public blacklist updateProcessingState(Landroid/os/Bundle;Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)V
    .registers 7
    .param p1, "processingState"    # Landroid/os/Bundle;
    .param p2, "callback"    # Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;

    .line 261
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    invoke-static {v0}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->-$$Nest$fgetmHandler(Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;

    .line 267
    invoke-static {p2}, Landroid/service/ondeviceintelligence/OnDeviceSandboxedInferenceService;->-$$Nest$smwrapOutcomeReceiver(Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)Landroid/os/OutcomeReceiver;

    move-result-object v3

    .line 264
    invoke-static {v1, v2, p1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 263
    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 268
    return-void
.end method
