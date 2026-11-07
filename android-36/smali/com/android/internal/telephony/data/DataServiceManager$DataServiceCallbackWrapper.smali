.class final Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;
.super Landroid/telephony/data/IDataServiceCallback$Stub;
.source "DataServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataServiceCallbackWrapper"
.end annotation


# instance fields
.field private final blacklist mTag:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataServiceManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-direct {p0}, Landroid/telephony/data/IDataServiceCallback$Stub;-><init>()V

    .line 236
    iput-object p2, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist getTag()Ljava/lang/String;
    .registers 1

    .line 240
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist onApnUnthrottled(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_12

    .line 339
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmApnUnthrottledRegistrants(Lcom/android/internal/telephony/data/DataServiceManager;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p0

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 342
    :cond_12
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    const-string p1, "onApnUnthrottled: apn is null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$mloge(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onDataCallListChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    if-eqz p1, :cond_6

    move-object v1, p1

    goto :goto_b

    .line 317
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_b
    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fputmLastDataCallResponseList(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/util/List;)V

    .line 318
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmDataCallListChangedRegistrants(Lcom/android/internal/telephony/data/DataServiceManager;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p0

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist onDataProfileUnthrottled(Landroid/telephony/data/DataProfile;)V
    .registers 4

    if-eqz p1, :cond_12

    .line 349
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmApnUnthrottledRegistrants(Lcom/android/internal/telephony/data/DataServiceManager;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p0

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 352
    :cond_12
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    const-string p1, "onDataProfileUnthrottled: dataProfile is null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$mloge(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onDeactivateDataCallComplete(I)V
    .registers 5

    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeactivateDataCallComplete. resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmMessageMap(Lcom/android/internal/telephony/data/DataServiceManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 263
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$msendCompleteMessage(Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Message;I)V

    return-void
.end method

.method public blacklist onHandoverCancelled(I)V
    .registers 5

    .line 331
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHandoverCancelled. resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmMessageMap(Lcom/android/internal/telephony/data/DataServiceManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 333
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$msendCompleteMessage(Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Message;I)V

    return-void
.end method

.method public blacklist onHandoverStarted(I)V
    .registers 5

    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHandoverStarted. resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmMessageMap(Lcom/android/internal/telephony/data/DataServiceManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 326
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$msendCompleteMessage(Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Message;I)V

    return-void
.end method

.method public blacklist onRequestDataCallListComplete(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestDataCallListComplete. resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-static {p1}, Landroid/telephony/data/DataServiceCallback;->resultCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmMessageMap(Lcom/android/internal/telephony/data/DataServiceManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    if-eqz v0, :cond_35

    .line 289
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data_call_response"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 291
    :cond_35
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {v1, v0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$msendCompleteMessage(Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Message;I)V

    .line 294
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmTransportType(Lcom/android/internal/telephony/data/DataServiceManager;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_d1

    .line 295
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmLastDataCallResponseList(Lcom/android/internal/telephony/data/DataServiceManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_5f

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmLastDataCallResponseList(Lcom/android/internal/telephony/data/DataServiceManager;)Ljava/util/List;

    move-result-object p1

    .line 296
    invoke-interface {p1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_ce

    .line 297
    :cond_5f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RIL reported mismatched data call response list for WWAN: mLastDataCallResponseList="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmLastDataCallResponseList(Lcom/android/internal/telephony/data/DataServiceManager;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", dataCallList="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 300
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$mloge(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    .line 301
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 302
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmLastDataCallResponseList(Lcom/android/internal/telephony/data/DataServiceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper$$ExternalSyntheticLambda0;-><init>()V

    .line 303
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    .line 302
    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ce

    .line 304
    const-string v0, "150323b2-360a-446b-a158-3ce6425821f6"

    .line 305
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataServiceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 307
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v1

    .line 304
    invoke-static {v0, p1, v1}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    .line 310
    :cond_ce
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->onDataCallListChanged(Ljava/util/List;)V

    :cond_d1
    return-void
.end method

.method public blacklist onSetDataProfileComplete(I)V
    .registers 5

    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetDataProfileComplete. resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmMessageMap(Lcom/android/internal/telephony/data/DataServiceManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 277
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$msendCompleteMessage(Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Message;I)V

    return-void
.end method

.method public blacklist onSetInitialAttachApnComplete(I)V
    .registers 5

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetInitialAttachApnComplete. resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmMessageMap(Lcom/android/internal/telephony/data/DataServiceManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 270
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$msendCompleteMessage(Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Message;I)V

    return-void
.end method

.method public blacklist onSetupDataCallComplete(ILandroid/telephony/data/DataCallResponse;)V
    .registers 6

    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetupDataCallComplete. resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", response = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmMessageMap(Lcom/android/internal/telephony/data/DataServiceManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/data/IDataServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    if-eqz v0, :cond_3f

    .line 252
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data_call_response"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 253
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$msendCompleteMessage(Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Message;I)V

    return-void

    .line 255
    :cond_3f
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    const-string p1, "Unable to find the message for setup call response."

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$mloge(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    return-void
.end method
