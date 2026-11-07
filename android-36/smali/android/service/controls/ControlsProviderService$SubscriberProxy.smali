.class Landroid/service/controls/ControlsProviderService$SubscriberProxy;
.super Ljava/lang/Object;
.source "ControlsProviderService.java"

# interfaces
.implements Ljava/util/concurrent/Flow$Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/ControlsProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubscriberProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Flow$Subscriber<",
        "Landroid/service/controls/Control;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCs:Landroid/service/controls/IControlsSubscriber;

.field private blacklist mEnforceStateless:Z

.field private blacklist mSubscription:Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;

.field private blacklist mToken:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;ZLandroid/os/IBinder;Landroid/service/controls/IControlsSubscriber;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enforceStateless"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "cs"    # Landroid/service/controls/IControlsSubscriber;

    .line 338
    invoke-direct {p0, p2, p3, p4}, Landroid/service/controls/ControlsProviderService$SubscriberProxy;-><init>(ZLandroid/os/IBinder;Landroid/service/controls/IControlsSubscriber;)V

    .line 339
    iput-object p1, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mContext:Landroid/content/Context;

    .line 340
    return-void
.end method

.method constructor blacklist <init>(ZLandroid/os/IBinder;Landroid/service/controls/IControlsSubscriber;)V
    .registers 4
    .param p1, "enforceStateless"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "cs"    # Landroid/service/controls/IControlsSubscriber;

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-boolean p1, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mEnforceStateless:Z

    .line 332
    iput-object p2, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mToken:Landroid/os/IBinder;

    .line 333
    iput-object p3, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mCs:Landroid/service/controls/IControlsSubscriber;

    .line 334
    return-void
.end method

.method private blacklist handleRemoteException(Landroid/os/RemoteException;)V
    .registers 3
    .param p1, "ex"    # Landroid/os/RemoteException;

    .line 388
    instance-of v0, p1, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_c

    .line 390
    iget-object v0, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mSubscription:Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;

    .line 391
    .local v0, "subscriptionAdapter":Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;
    if-eqz v0, :cond_b

    .line 392
    invoke-virtual {v0}, Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;->cancel()V

    .line 394
    .end local v0    # "subscriptionAdapter":Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;
    :cond_b
    goto :goto_f

    .line 395
    :cond_c
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 397
    :goto_f
    return-void
.end method


# virtual methods
.method public whitelist test-api onComplete()V
    .registers 3

    .line 380
    :try_start_0
    iget-object v0, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mCs:Landroid/service/controls/IControlsSubscriber;

    iget-object v1, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/service/controls/IControlsSubscriber;->onComplete(Landroid/os/IBinder;)V

    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mSubscription:Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 384
    goto :goto_f

    .line 382
    :catch_b
    move-exception v0

    .line 383
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 385
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method

.method public whitelist test-api onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 371
    :try_start_0
    iget-object v0, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mCs:Landroid/service/controls/IControlsSubscriber;

    iget-object v1, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/service/controls/IControlsSubscriber;->onError(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mSubscription:Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 375
    goto :goto_13

    .line 373
    :catch_f
    move-exception v0

    .line 374
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 376
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public blacklist onNext(Landroid/service/controls/Control;)V
    .registers 4
    .param p1, "control"    # Landroid/service/controls/Control;

    .line 353
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :try_start_3
    iget-boolean v0, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mEnforceStateless:Z

    if-eqz v0, :cond_1f

    invoke-static {p1}, Landroid/service/controls/ControlsProviderService;->-$$Nest$smisStatelessControl(Landroid/service/controls/Control;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 356
    const-string v0, "ControlsProviderService"

    const-string/jumbo v1, "onNext(): control is not stateless. Use the Control.StatelessBuilder() to build the control."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    new-instance v0, Landroid/service/controls/Control$StatelessBuilder;

    invoke-direct {v0, p1}, Landroid/service/controls/Control$StatelessBuilder;-><init>(Landroid/service/controls/Control;)V

    invoke-virtual {v0}, Landroid/service/controls/Control$StatelessBuilder;->build()Landroid/service/controls/Control;

    move-result-object v0

    move-object p1, v0

    .line 360
    :cond_1f
    iget-object v0, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2c

    .line 361
    invoke-virtual {p1}, Landroid/service/controls/Control;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object v0

    iget-object v1, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/service/controls/templates/ControlTemplate;->prepareTemplateForBinder(Landroid/content/Context;)V

    .line 363
    :cond_2c
    iget-object v0, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mCs:Landroid/service/controls/IControlsSubscriber;

    iget-object v1, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/service/controls/IControlsSubscriber;->onNext(Landroid/os/IBinder;Landroid/service/controls/Control;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_33} :catch_34

    .line 366
    goto :goto_38

    .line 364
    :catch_34
    move-exception v0

    .line 365
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 367
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_38
    return-void
.end method

.method public bridge synthetic whitelist test-api onNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 323
    check-cast p1, Landroid/service/controls/Control;

    invoke-virtual {p0, p1}, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->onNext(Landroid/service/controls/Control;)V

    return-void
.end method

.method public whitelist test-api onSubscribe(Ljava/util/concurrent/Flow$Subscription;)V
    .registers 5
    .param p1, "subscription"    # Ljava/util/concurrent/Flow$Subscription;

    .line 344
    :try_start_0
    new-instance v0, Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;

    invoke-direct {v0, p1}, Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;-><init>(Ljava/util/concurrent/Flow$Subscription;)V

    .line 345
    .local v0, "subscriptionAdapter":Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;
    iget-object v1, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mCs:Landroid/service/controls/IControlsSubscriber;

    iget-object v2, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, v0}, Landroid/service/controls/IControlsSubscriber;->onSubscribe(Landroid/os/IBinder;Landroid/service/controls/IControlsSubscription;)V

    .line 346
    iput-object v0, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mSubscription:Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 349
    .end local v0    # "subscriptionAdapter":Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;
    goto :goto_13

    .line 347
    :catch_f
    move-exception v0

    .line 348
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 350
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method
