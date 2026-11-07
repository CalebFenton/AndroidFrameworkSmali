.class Landroid/media/soundtrigger/SoundTriggerDetectionService$1;
.super Landroid/media/soundtrigger/ISoundTriggerDetectionService$Stub;
.source "SoundTriggerDetectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/soundtrigger/SoundTriggerDetectionService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist mBinderLock:Ljava/lang/Object;

.field public final blacklist mParams:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/util/UUID;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/media/soundtrigger/SoundTriggerDetectionService;


# direct methods
.method public static synthetic blacklist $r8$lambda$InkPOEA3D8t7XkKKh-icuCpMIVM(Landroid/media/soundtrigger/SoundTriggerDetectionService;Ljava/util/UUID;Landroid/os/Bundle;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/media/soundtrigger/SoundTriggerDetectionService;->-$$Nest$mremoveClient(Landroid/media/soundtrigger/SoundTriggerDetectionService;Ljava/util/UUID;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$aTf6abWfFNbQdBvde3rB51XFEAg(Landroid/media/soundtrigger/SoundTriggerDetectionService;Ljava/util/UUID;Landroid/os/Bundle;Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/media/soundtrigger/SoundTriggerDetectionService;->-$$Nest$msetClient(Landroid/media/soundtrigger/SoundTriggerDetectionService;Ljava/util/UUID;Landroid/os/Bundle;Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/soundtrigger/SoundTriggerDetectionService;)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/soundtrigger/SoundTriggerDetectionService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 210
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->this$0:Landroid/media/soundtrigger/SoundTriggerDetectionService;

    invoke-direct {p0}, Landroid/media/soundtrigger/ISoundTriggerDetectionService$Stub;-><init>()V

    .line 211
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->mBinderLock:Ljava/lang/Object;

    .line 214
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->mParams:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/os/ParcelUuid;II)V
    .registers 11
    .param p1, "puuid"    # Landroid/os/ParcelUuid;
    .param p2, "opId"    # I
    .param p3, "status"    # I

    .line 260
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 262
    .local v2, "uuid":Ljava/util/UUID;
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->mBinderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 263
    :try_start_7
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->mParams:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/Bundle;

    .line 264
    .local v3, "params":Landroid/os/Bundle;
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_2e

    .line 267
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->this$0:Landroid/media/soundtrigger/SoundTriggerDetectionService;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetectionService;->-$$Nest$fgetmHandler(Landroid/media/soundtrigger/SoundTriggerDetectionService;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/media/soundtrigger/SoundTriggerDetectionService$1$$ExternalSyntheticLambda4;-><init>()V

    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->this$0:Landroid/media/soundtrigger/SoundTriggerDetectionService;

    .line 268
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 267
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 269
    return-void

    .line 264
    .end local v3    # "params":Landroid/os/Bundle;
    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public blacklist onGenericRecognitionEvent(Landroid/os/ParcelUuid;ILandroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .registers 11
    .param p1, "puuid"    # Landroid/os/ParcelUuid;
    .param p2, "opId"    # I
    .param p3, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    .line 246
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 248
    .local v2, "uuid":Ljava/util/UUID;
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->mBinderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 249
    :try_start_7
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->mParams:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/Bundle;

    .line 250
    .local v3, "params":Landroid/os/Bundle;
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_2b

    .line 253
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->this$0:Landroid/media/soundtrigger/SoundTriggerDetectionService;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetectionService;->-$$Nest$fgetmHandler(Landroid/media/soundtrigger/SoundTriggerDetectionService;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/soundtrigger/SoundTriggerDetectionService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->this$0:Landroid/media/soundtrigger/SoundTriggerDetectionService;

    .line 255
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 254
    move-object v5, p3

    .end local p3    # "event":Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;
    .local v5, "event":Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 253
    invoke-virtual {v6, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 256
    return-void

    .line 250
    .end local v3    # "params":Landroid/os/Bundle;
    .end local v5    # "event":Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;
    .restart local p3    # "event":Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;
    :catchall_2b
    move-exception v0

    move-object v5, p3

    move-object p3, v0

    .end local p3    # "event":Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;
    .restart local v5    # "event":Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;
    :goto_2e
    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_30

    throw p3

    :catchall_30
    move-exception v0

    move-object p3, v0

    goto :goto_2e
.end method

.method public blacklist onStopOperation(Landroid/os/ParcelUuid;I)V
    .registers 9
    .param p1, "puuid"    # Landroid/os/ParcelUuid;
    .param p2, "opId"    # I

    .line 273
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 275
    .local v0, "uuid":Ljava/util/UUID;
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->mBinderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 276
    :try_start_7
    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->mParams:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 277
    .local v2, "params":Landroid/os/Bundle;
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_29

    .line 280
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->this$0:Landroid/media/soundtrigger/SoundTriggerDetectionService;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerDetectionService;->-$$Nest$fgetmHandler(Landroid/media/soundtrigger/SoundTriggerDetectionService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Landroid/media/soundtrigger/SoundTriggerDetectionService$1$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/media/soundtrigger/SoundTriggerDetectionService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v4, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->this$0:Landroid/media/soundtrigger/SoundTriggerDetectionService;

    .line 281
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 280
    invoke-static {v3, v4, v0, v2, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 282
    return-void

    .line 277
    .end local v2    # "params":Landroid/os/Bundle;
    :catchall_29
    move-exception v2

    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v2
.end method

.method public blacklist removeClient(Landroid/os/ParcelUuid;)V
    .registers 7
    .param p1, "puuid"    # Landroid/os/ParcelUuid;

    .line 232
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 234
    .local v0, "uuid":Ljava/util/UUID;
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->mBinderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 235
    :try_start_7
    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->mParams:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 236
    .local v2, "params":Landroid/os/Bundle;
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_25

    .line 239
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->this$0:Landroid/media/soundtrigger/SoundTriggerDetectionService;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerDetectionService;->-$$Nest$fgetmHandler(Landroid/media/soundtrigger/SoundTriggerDetectionService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Landroid/media/soundtrigger/SoundTriggerDetectionService$1$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Landroid/media/soundtrigger/SoundTriggerDetectionService$1$$ExternalSyntheticLambda3;-><init>()V

    iget-object v4, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->this$0:Landroid/media/soundtrigger/SoundTriggerDetectionService;

    invoke-static {v3, v4, v0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 241
    return-void

    .line 236
    .end local v2    # "params":Landroid/os/Bundle;
    :catchall_25
    move-exception v2

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v2
.end method

.method public blacklist setClient(Landroid/os/ParcelUuid;Landroid/os/Bundle;Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;)V
    .registers 8
    .param p1, "puuid"    # Landroid/os/ParcelUuid;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "client"    # Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;

    .line 220
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 221
    .local v0, "uuid":Ljava/util/UUID;
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->mBinderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 222
    :try_start_7
    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->mParams:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_22

    .line 226
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->this$0:Landroid/media/soundtrigger/SoundTriggerDetectionService;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerDetectionService;->-$$Nest$fgetmHandler(Landroid/media/soundtrigger/SoundTriggerDetectionService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/media/soundtrigger/SoundTriggerDetectionService$1$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/media/soundtrigger/SoundTriggerDetectionService$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v3, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->this$0:Landroid/media/soundtrigger/SoundTriggerDetectionService;

    invoke-static {v2, v3, v0, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 228
    return-void

    .line 223
    :catchall_22
    move-exception v2

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v2
.end method
