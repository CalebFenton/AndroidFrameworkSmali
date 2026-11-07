.class Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;
.super Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;
.source "OnDeviceIntelligenceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;


# direct methods
.method public static synthetic blacklist $r8$lambda$Qsbu71VMMf0OvFAm0RD4gd8nI-8(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->-$$Nest$monGetReadOnlyFileDescriptor(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 124
    iput-object p1, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    invoke-direct {p0}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$getReadOnlyFeatureFileDescriptorMap$1(Landroid/os/RemoteCallback;Ljava/util/Map;)V
    .registers 4
    .param p0, "remoteCallback"    # Landroid/os/RemoteCallback;
    .param p1, "parcelFileDescriptorMap"    # Ljava/util/Map;

    .line 224
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 225
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda10;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 226
    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 227
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->-$$Nest$smtryClosePfds(Ljava/util/Collection;)V

    .line 228
    return-void
.end method

.method static synthetic blacklist lambda$getVersion$0(Landroid/os/RemoteCallback;J)V
    .registers 5
    .param p0, "remoteCallback"    # Landroid/os/RemoteCallback;
    .param p1, "l"    # J

    .line 140
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "ApiVersionBundleKey"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 144
    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 145
    return-void
.end method


# virtual methods
.method public blacklist getFeature(IILandroid/app/ondeviceintelligence/IFeatureCallback;)V
    .registers 10
    .param p1, "callerUid"    # I
    .param p2, "id"    # I
    .param p3, "featureCallback"    # Landroid/app/ondeviceintelligence/IFeatureCallback;

    .line 161
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    invoke-static {v0}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->-$$Nest$fgetmHandler(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda9;-><init>()V

    iget-object v2, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    .line 165
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 166
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    invoke-static {v5, p3}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->-$$Nest$mwrapFeatureCallback(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Landroid/app/ondeviceintelligence/IFeatureCallback;)Landroid/os/OutcomeReceiver;

    move-result-object v5

    .line 163
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 167
    return-void
.end method

.method public blacklist getFeatureDetails(ILandroid/app/ondeviceintelligence/Feature;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)V
    .registers 9
    .param p1, "callerUid"    # I
    .param p2, "feature"    # Landroid/app/ondeviceintelligence/Feature;
    .param p3, "featureDetailsCallback"    # Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;

    .line 173
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    invoke-static {v0}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->-$$Nest$fgetmHandler(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda11;-><init>()V

    iget-object v2, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    .line 178
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    .line 179
    invoke-static {v4, p3}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->-$$Nest$mwrapFeatureDetailsCallback(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)Landroid/os/OutcomeReceiver;

    move-result-object v4

    .line 176
    invoke-static {v1, v2, v3, p2, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 180
    return-void
.end method

.method public blacklist getReadOnlyFeatureFileDescriptorMap(Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;)V
    .registers 7
    .param p1, "feature"    # Landroid/app/ondeviceintelligence/Feature;
    .param p2, "remoteCallback"    # Landroid/os/RemoteCallback;

    .line 217
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    invoke-static {v0}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->-$$Nest$fgetmHandler(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    new-instance v3, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, p2}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/RemoteCallback;)V

    .line 220
    invoke-static {v1, v2, p1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 229
    return-void
.end method

.method public blacklist getReadOnlyFileDescriptor(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 205
    .local p2, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/os/ParcelFileDescriptor;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    invoke-static {v0}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->-$$Nest$fgetmHandler(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda7;-><init>()V

    iget-object v2, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    .line 208
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 212
    return-void
.end method

.method public blacklist getVersion(Landroid/os/RemoteCallback;)V
    .registers 6
    .param p1, "remoteCallback"    # Landroid/os/RemoteCallback;

    .line 135
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    invoke-static {v0}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->-$$Nest$fgetmHandler(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda5;-><init>()V

    iget-object v2, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    new-instance v3, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda6;

    invoke-direct {v3, p1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda6;-><init>(Landroid/os/RemoteCallback;)V

    .line 137
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 136
    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 146
    return-void
.end method

.method public blacklist listFeatures(ILandroid/app/ondeviceintelligence/IListFeaturesCallback;)V
    .registers 8
    .param p1, "callerUid"    # I
    .param p2, "listFeaturesCallback"    # Landroid/app/ondeviceintelligence/IListFeaturesCallback;

    .line 151
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    invoke-static {v0}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->-$$Nest$fgetmHandler(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda12;-><init>()V

    iget-object v2, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    .line 155
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    .line 156
    invoke-static {v4, p2}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->-$$Nest$mwrapListFeaturesCallback(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Landroid/app/ondeviceintelligence/IListFeaturesCallback;)Landroid/os/OutcomeReceiver;

    move-result-object v4

    .line 153
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 157
    return-void
.end method

.method public blacklist notifyInferenceServiceConnected()V
    .registers 4

    .line 239
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    invoke-static {v0}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->-$$Nest$fgetmHandler(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    .line 240
    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 239
    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 243
    return-void
.end method

.method public blacklist notifyInferenceServiceDisconnected()V
    .registers 4

    .line 247
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    invoke-static {v0}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->-$$Nest$fgetmHandler(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    .line 248
    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 247
    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 251
    return-void
.end method

.method public blacklist ready()V
    .registers 4

    .line 128
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    invoke-static {v0}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->-$$Nest$fgetmHandler(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda4;-><init>()V

    iget-object v2, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    .line 129
    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 131
    return-void
.end method

.method public blacklist registerRemoteServices(Landroid/service/ondeviceintelligence/IRemoteProcessingService;)V
    .registers 3
    .param p1, "remoteProcessingService"    # Landroid/service/ondeviceintelligence/IRemoteProcessingService;

    .line 234
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    invoke-static {v0, p1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->-$$Nest$fputmRemoteProcessingService(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Landroid/service/ondeviceintelligence/IRemoteProcessingService;)V

    .line 235
    return-void
.end method

.method public blacklist requestFeatureDownload(ILandroid/app/ondeviceintelligence/Feature;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IDownloadCallback;)V
    .registers 13
    .param p1, "callerUid"    # I
    .param p2, "feature"    # Landroid/app/ondeviceintelligence/Feature;
    .param p3, "cancellationSignalFuture"    # Lcom/android/internal/infra/AndroidFuture;
    .param p4, "downloadCallback"    # Landroid/app/ondeviceintelligence/IDownloadCallback;

    .line 186
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "transport":Landroid/os/ICancellationSignal;
    if-eqz p3, :cond_10

    .line 190
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 191
    invoke-virtual {p3, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 193
    :cond_10
    iget-object v1, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    invoke-static {v1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->-$$Nest$fgetmHandler(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1$$ExternalSyntheticLambda8;-><init>()V

    iget-object v3, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    .line 196
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 198
    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v6

    iget-object v5, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;->this$0:Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    .line 199
    invoke-static {v5, p4}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->-$$Nest$mwrapDownloadCallback(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Landroid/app/ondeviceintelligence/IDownloadCallback;)Landroid/app/ondeviceintelligence/DownloadCallback;

    move-result-object v7

    .line 194
    move-object v5, p2

    .end local p2    # "feature":Landroid/app/ondeviceintelligence/Feature;
    .local v5, "feature":Landroid/app/ondeviceintelligence/Feature;
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 193
    invoke-virtual {v1, p2}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 200
    return-void
.end method
