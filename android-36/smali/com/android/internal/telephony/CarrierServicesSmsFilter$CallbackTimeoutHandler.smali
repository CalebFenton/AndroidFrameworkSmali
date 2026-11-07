.class public final Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;
.super Landroid/os/Handler;
.source "CarrierServicesSmsFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServicesSmsFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "CallbackTimeoutHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;


# direct methods
.method public static synthetic blacklist $r8$lambda$yJW02rWmCuHSLTcesYUE-uEnI3A(Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;)Ljava/lang/String;
    .registers 1

    .line 407
    invoke-static {p0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->-$$Nest$fgetmPackageName(Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 391
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private blacklist handleFilterCallbacksTimeout()V
    .registers 5

    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->-$$Nest$fgetmFilterAggregator(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->-$$Nest$fgetmCallbacks(Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;

    .line 418
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    const-string v3, "handleFilterCallbacksTimeout: calling onFilterComplete"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->-$$Nest$mlog(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 419
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->onReceiveSmsComplete(I)V

    goto :goto_e

    :cond_26
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallbackTimeoutHandler: handleMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->-$$Nest$mlog(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V

    .line 401
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    return-void

    .line 403
    :cond_23
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->-$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v0

    const-string v1, "CarrierServicesSmsFilter: onFilterComplete timeout: not called before 720000 milliseconds."

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 405
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;

    .line 406
    invoke-static {p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->-$$Nest$fgetmCallbacks(Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler$$ExternalSyntheticLambda0;-><init>()V

    .line 407
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    const-string v0, ", "

    .line 408
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 409
    invoke-static {}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->-$$Nest$sfgetsAnomalyNoResponseFromCarrierMessagingService()Ljava/util/UUID;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No response from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 410
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v1

    .line 409
    invoke-static {v0, p1, v1}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    .line 411
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;->handleFilterCallbacksTimeout()V

    return-void
.end method
