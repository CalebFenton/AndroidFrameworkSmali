.class public Landroid/adservices/measurement/MeasurementManager;
.super Ljava/lang/Object;
.source "MeasurementManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/measurement/MeasurementManager$MeasurementApiState;
    }
.end annotation


# static fields
.field public static final whitelist MEASUREMENT_API_STATE_DISABLED:I = 0x0

.field public static final whitelist MEASUREMENT_API_STATE_ENABLED:I = 0x1

.field public static final blacklist MEASUREMENT_SERVICE:Ljava/lang/String; = "measurement_service"


# instance fields
.field private blacklist mImpl:Landroid/adservices/measurement/MeasurementCompatibleManager;


# direct methods
.method public constructor blacklist <init>(Landroid/adservices/measurement/MeasurementCompatibleManager;)V
    .registers 2
    .param p1, "compatibleManager"    # Landroid/adservices/measurement/MeasurementCompatibleManager;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iput-object p1, p0, Landroid/adservices/measurement/MeasurementManager;->mImpl:Landroid/adservices/measurement/MeasurementCompatibleManager;

    .line 111
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p0, p1}, Landroid/adservices/measurement/MeasurementManager;->initialize(Landroid/content/Context;)Landroid/adservices/measurement/MeasurementManager;

    .line 99
    return-void
.end method

.method public static whitelist get(Landroid/content/Context;)Landroid/adservices/measurement/MeasurementManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_f

    .line 86
    const-class v0, Landroid/adservices/measurement/MeasurementManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/measurement/MeasurementManager;

    goto :goto_14

    .line 87
    :cond_f
    new-instance v0, Landroid/adservices/measurement/MeasurementManager;

    invoke-direct {v0, p0}, Landroid/adservices/measurement/MeasurementManager;-><init>(Landroid/content/Context;)V

    .line 85
    :goto_14
    return-object v0
.end method


# virtual methods
.method public whitelist deleteRegistrations(Landroid/adservices/measurement/DeletionRequest;Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V
    .registers 6
    .param p1, "deletionRequest"    # Landroid/adservices/measurement/DeletionRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/measurement/DeletionRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/adservices/common/AdServicesOutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 426
    .local p3, "callback":Landroid/adservices/common/AdServicesOutcomeReceiver;, "Landroid/adservices/common/AdServicesOutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p3}, Landroid/adservices/common/AndroidRCommonUtil;->invokeCallbackOnErrorOnRvc(Landroid/adservices/common/AdServicesOutcomeReceiver;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 427
    return-void

    .line 430
    :cond_7
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementManager;->mImpl:Landroid/adservices/measurement/MeasurementCompatibleManager;

    .line 431
    invoke-static {p3}, Landroid/adservices/common/OutcomeReceiverConverter;->toOutcomeReceiver(Landroid/adservices/common/AdServicesOutcomeReceiver;)Landroid/os/OutcomeReceiver;

    move-result-object v1

    .line 430
    invoke-virtual {v0, p1, p2, v1}, Landroid/adservices/measurement/MeasurementCompatibleManager;->deleteRegistrations(Landroid/adservices/measurement/DeletionRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 432
    return-void
.end method

.method public whitelist deleteRegistrations(Landroid/adservices/measurement/DeletionRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "deletionRequest"    # Landroid/adservices/measurement/DeletionRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/measurement/DeletionRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 401
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementManager;->mImpl:Landroid/adservices/measurement/MeasurementCompatibleManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/adservices/measurement/MeasurementCompatibleManager;->deleteRegistrations(Landroid/adservices/measurement/DeletionRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 402
    return-void
.end method

.method public whitelist getMeasurementApiStatus(Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/adservices/common/AdServicesOutcomeReceiver<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 468
    .local p2, "callback":Landroid/adservices/common/AdServicesOutcomeReceiver;, "Landroid/adservices/common/AdServicesOutcomeReceiver<Ljava/lang/Integer;Ljava/lang/Exception;>;"
    invoke-static {p2}, Landroid/adservices/common/AndroidRCommonUtil;->invokeCallbackOnErrorOnRvc(Landroid/adservices/common/AdServicesOutcomeReceiver;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 469
    return-void

    .line 472
    :cond_7
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementManager;->mImpl:Landroid/adservices/measurement/MeasurementCompatibleManager;

    .line 473
    invoke-static {p2}, Landroid/adservices/common/OutcomeReceiverConverter;->toOutcomeReceiver(Landroid/adservices/common/AdServicesOutcomeReceiver;)Landroid/os/OutcomeReceiver;

    move-result-object v1

    .line 472
    invoke-virtual {v0, p1, v1}, Landroid/adservices/measurement/MeasurementCompatibleManager;->getMeasurementApiStatus(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 474
    return-void
.end method

.method public whitelist getMeasurementApiStatus(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 447
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Integer;Ljava/lang/Exception;>;"
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementManager;->mImpl:Landroid/adservices/measurement/MeasurementCompatibleManager;

    invoke-virtual {v0, p1, p2}, Landroid/adservices/measurement/MeasurementCompatibleManager;->getMeasurementApiStatus(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 448
    return-void
.end method

.method public blacklist initialize(Landroid/content/Context;)Landroid/adservices/measurement/MeasurementManager;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 124
    invoke-static {p1}, Landroid/adservices/measurement/MeasurementCompatibleManager;->get(Landroid/content/Context;)Landroid/adservices/measurement/MeasurementCompatibleManager;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/MeasurementManager;->mImpl:Landroid/adservices/measurement/MeasurementCompatibleManager;

    .line 125
    return-object p0
.end method

.method public whitelist registerSource(Landroid/adservices/measurement/SourceRegistrationRequest;Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V
    .registers 6
    .param p1, "request"    # Landroid/adservices/measurement/SourceRegistrationRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/measurement/SourceRegistrationRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/adservices/common/AdServicesOutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 220
    .local p3, "callback":Landroid/adservices/common/AdServicesOutcomeReceiver;, "Landroid/adservices/common/AdServicesOutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p3}, Landroid/adservices/common/AndroidRCommonUtil;->invokeCallbackOnErrorOnRvc(Landroid/adservices/common/AdServicesOutcomeReceiver;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 221
    new-instance v0, Landroid/adservices/exceptions/AdServicesException;

    const-string v1, "AdServices is not supported on Android R"

    invoke-direct {v0, v1}, Landroid/adservices/exceptions/AdServicesException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v0}, Landroid/adservices/common/AdServicesOutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 222
    return-void

    .line 225
    :cond_11
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementManager;->mImpl:Landroid/adservices/measurement/MeasurementCompatibleManager;

    .line 226
    invoke-static {p3}, Landroid/adservices/common/OutcomeReceiverConverter;->toOutcomeReceiver(Landroid/adservices/common/AdServicesOutcomeReceiver;)Landroid/os/OutcomeReceiver;

    move-result-object v1

    .line 225
    invoke-virtual {v0, p1, p2, v1}, Landroid/adservices/measurement/MeasurementCompatibleManager;->registerSource(Landroid/adservices/measurement/SourceRegistrationRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 227
    return-void
.end method

.method public whitelist registerSource(Landroid/adservices/measurement/SourceRegistrationRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "request"    # Landroid/adservices/measurement/SourceRegistrationRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/measurement/SourceRegistrationRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 198
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementManager;->mImpl:Landroid/adservices/measurement/MeasurementCompatibleManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/adservices/measurement/MeasurementCompatibleManager;->registerSource(Landroid/adservices/measurement/SourceRegistrationRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 199
    return-void
.end method

.method public whitelist registerSource(Landroid/net/Uri;Landroid/view/InputEvent;Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V
    .registers 7
    .param p1, "attributionSource"    # Landroid/net/Uri;
    .param p2, "inputEvent"    # Landroid/view/InputEvent;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/view/InputEvent;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/adservices/common/AdServicesOutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    .local p4, "callback":Landroid/adservices/common/AdServicesOutcomeReceiver;, "Landroid/adservices/common/AdServicesOutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p4}, Landroid/adservices/common/AndroidRCommonUtil;->invokeCallbackOnErrorOnRvc(Landroid/adservices/common/AdServicesOutcomeReceiver;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 172
    return-void

    .line 175
    :cond_7
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementManager;->mImpl:Landroid/adservices/measurement/MeasurementCompatibleManager;

    .line 179
    invoke-static {p4}, Landroid/adservices/common/OutcomeReceiverConverter;->toOutcomeReceiver(Landroid/adservices/common/AdServicesOutcomeReceiver;)Landroid/os/OutcomeReceiver;

    move-result-object v1

    .line 175
    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/adservices/measurement/MeasurementCompatibleManager;->registerSource(Landroid/net/Uri;Landroid/view/InputEvent;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 180
    return-void
.end method

.method public whitelist registerSource(Landroid/net/Uri;Landroid/view/InputEvent;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .param p1, "attributionSource"    # Landroid/net/Uri;
    .param p2, "inputEvent"    # Landroid/view/InputEvent;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/view/InputEvent;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 147
    .local p4, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementManager;->mImpl:Landroid/adservices/measurement/MeasurementCompatibleManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/adservices/measurement/MeasurementCompatibleManager;->registerSource(Landroid/net/Uri;Landroid/view/InputEvent;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 148
    return-void
.end method

.method public whitelist registerTrigger(Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V
    .registers 6
    .param p1, "trigger"    # Landroid/net/Uri;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/adservices/common/AdServicesOutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 376
    .local p3, "callback":Landroid/adservices/common/AdServicesOutcomeReceiver;, "Landroid/adservices/common/AdServicesOutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p3}, Landroid/adservices/common/AndroidRCommonUtil;->invokeCallbackOnErrorOnRvc(Landroid/adservices/common/AdServicesOutcomeReceiver;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 377
    return-void

    .line 380
    :cond_7
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementManager;->mImpl:Landroid/adservices/measurement/MeasurementCompatibleManager;

    .line 381
    invoke-static {p3}, Landroid/adservices/common/OutcomeReceiverConverter;->toOutcomeReceiver(Landroid/adservices/common/AdServicesOutcomeReceiver;)Landroid/os/OutcomeReceiver;

    move-result-object v1

    .line 380
    invoke-virtual {v0, p1, p2, v1}, Landroid/adservices/measurement/MeasurementCompatibleManager;->registerTrigger(Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 382
    return-void
.end method

.method public whitelist registerTrigger(Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "trigger"    # Landroid/net/Uri;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 355
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementManager;->mImpl:Landroid/adservices/measurement/MeasurementCompatibleManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/adservices/measurement/MeasurementCompatibleManager;->registerTrigger(Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 356
    return-void
.end method

.method public whitelist registerWebSource(Landroid/adservices/measurement/WebSourceRegistrationRequest;Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V
    .registers 6
    .param p1, "request"    # Landroid/adservices/measurement/WebSourceRegistrationRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/measurement/WebSourceRegistrationRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/adservices/common/AdServicesOutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 277
    .local p3, "callback":Landroid/adservices/common/AdServicesOutcomeReceiver;, "Landroid/adservices/common/AdServicesOutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p3}, Landroid/adservices/common/AndroidRCommonUtil;->invokeCallbackOnErrorOnRvc(Landroid/adservices/common/AdServicesOutcomeReceiver;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 278
    return-void

    .line 281
    :cond_7
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementManager;->mImpl:Landroid/adservices/measurement/MeasurementCompatibleManager;

    .line 282
    invoke-static {p3}, Landroid/adservices/common/OutcomeReceiverConverter;->toOutcomeReceiver(Landroid/adservices/common/AdServicesOutcomeReceiver;)Landroid/os/OutcomeReceiver;

    move-result-object v1

    .line 281
    invoke-virtual {v0, p1, p2, v1}, Landroid/adservices/measurement/MeasurementCompatibleManager;->registerWebSource(Landroid/adservices/measurement/WebSourceRegistrationRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 283
    return-void
.end method

.method public whitelist registerWebSource(Landroid/adservices/measurement/WebSourceRegistrationRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "request"    # Landroid/adservices/measurement/WebSourceRegistrationRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/measurement/WebSourceRegistrationRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 249
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementManager;->mImpl:Landroid/adservices/measurement/MeasurementCompatibleManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/adservices/measurement/MeasurementCompatibleManager;->registerWebSource(Landroid/adservices/measurement/WebSourceRegistrationRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 250
    return-void
.end method

.method public whitelist registerWebTrigger(Landroid/adservices/measurement/WebTriggerRegistrationRequest;Ljava/util/concurrent/Executor;Landroid/adservices/common/AdServicesOutcomeReceiver;)V
    .registers 6
    .param p1, "request"    # Landroid/adservices/measurement/WebTriggerRegistrationRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/measurement/WebTriggerRegistrationRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/adservices/common/AdServicesOutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 331
    .local p3, "callback":Landroid/adservices/common/AdServicesOutcomeReceiver;, "Landroid/adservices/common/AdServicesOutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p3}, Landroid/adservices/common/AndroidRCommonUtil;->invokeCallbackOnErrorOnRvc(Landroid/adservices/common/AdServicesOutcomeReceiver;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 332
    return-void

    .line 335
    :cond_7
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementManager;->mImpl:Landroid/adservices/measurement/MeasurementCompatibleManager;

    .line 336
    invoke-static {p3}, Landroid/adservices/common/OutcomeReceiverConverter;->toOutcomeReceiver(Landroid/adservices/common/AdServicesOutcomeReceiver;)Landroid/os/OutcomeReceiver;

    move-result-object v1

    .line 335
    invoke-virtual {v0, p1, p2, v1}, Landroid/adservices/measurement/MeasurementCompatibleManager;->registerWebTrigger(Landroid/adservices/measurement/WebTriggerRegistrationRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 337
    return-void
.end method

.method public whitelist registerWebTrigger(Landroid/adservices/measurement/WebTriggerRegistrationRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "request"    # Landroid/adservices/measurement/WebTriggerRegistrationRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/measurement/WebTriggerRegistrationRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 304
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementManager;->mImpl:Landroid/adservices/measurement/MeasurementCompatibleManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/adservices/measurement/MeasurementCompatibleManager;->registerWebTrigger(Landroid/adservices/measurement/WebTriggerRegistrationRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 305
    return-void
.end method

.method public blacklist unbindFromService()V
    .registers 2

    .line 485
    iget-object v0, p0, Landroid/adservices/measurement/MeasurementManager;->mImpl:Landroid/adservices/measurement/MeasurementCompatibleManager;

    invoke-virtual {v0}, Landroid/adservices/measurement/MeasurementCompatibleManager;->unbindFromService()V

    .line 486
    return-void
.end method
