.class Landroid/service/controls/ControlsProviderService$RequestHandler;
.super Landroid/os/Handler;
.source "ControlsProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/ControlsProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestHandler"
.end annotation


# static fields
.field private static final blacklist MSG_ACTION:I = 0x3

.field private static final blacklist MSG_LOAD:I = 0x1

.field private static final blacklist MSG_LOAD_SUGGESTED:I = 0x4

.field private static final blacklist MSG_SUBSCRIBE:I = 0x2


# instance fields
.field final synthetic blacklist this$0:Landroid/service/controls/ControlsProviderService;


# direct methods
.method public static synthetic blacklist $r8$lambda$31_wze8SG-2KzXpaBBIFEBY243Y(Landroid/service/controls/ControlsProviderService$RequestHandler;Landroid/service/controls/IControlsActionCallback;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/service/controls/ControlsProviderService$RequestHandler;->lambda$consumerFor$0(Landroid/service/controls/IControlsActionCallback;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/controls/ControlsProviderService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;
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

    .line 251
    iput-object p1, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    .line 252
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 253
    return-void
.end method

.method private blacklist consumerFor(Ljava/lang/String;Landroid/service/controls/IControlsActionCallback;)Ljava/util/function/Consumer;
    .registers 4
    .param p1, "controlId"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/service/controls/IControlsActionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/controls/IControlsActionCallback;",
            ")",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 301
    new-instance v0, Landroid/service/controls/ControlsProviderService$RequestHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Landroid/service/controls/ControlsProviderService$RequestHandler$$ExternalSyntheticLambda0;-><init>(Landroid/service/controls/ControlsProviderService$RequestHandler;Landroid/service/controls/IControlsActionCallback;Ljava/lang/String;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$consumerFor$0(Landroid/service/controls/IControlsActionCallback;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 6
    .param p1, "cb"    # Landroid/service/controls/IControlsActionCallback;
    .param p2, "controlId"    # Ljava/lang/String;
    .param p3, "response"    # Ljava/lang/Integer;

    .line 302
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/service/controls/actions/ControlAction;->isValidResponse(I)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not valid response result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ControlsProviderService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 308
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {v0}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmToken(Landroid/service/controls/ControlsProviderService;)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v0, p2, v1}, Landroid/service/controls/IControlsActionCallback;->accept(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_37} :catch_38

    .line 311
    goto :goto_3c

    .line 309
    :catch_38
    move-exception v0

    .line 310
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 312
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_3c
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 256
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_7e

    goto/16 :goto_7d

    .line 266
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/controls/IControlsSubscriber;

    .line 267
    .local v0, "cs":Landroid/service/controls/IControlsSubscriber;
    new-instance v2, Landroid/service/controls/ControlsProviderService$SubscriberProxy;

    iget-object v3, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {v3}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmToken(Landroid/service/controls/ControlsProviderService;)Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Landroid/service/controls/ControlsProviderService$SubscriberProxy;-><init>(ZLandroid/os/IBinder;Landroid/service/controls/IControlsSubscriber;)V

    .line 269
    .local v2, "proxy":Landroid/service/controls/ControlsProviderService$SubscriberProxy;
    iget-object v1, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    .line 270
    invoke-virtual {v1}, Landroid/service/controls/ControlsProviderService;->createPublisherForSuggested()Ljava/util/concurrent/Flow$Publisher;

    move-result-object v1

    .line 271
    .local v1, "publisher":Ljava/util/concurrent/Flow$Publisher;, "Ljava/util/concurrent/Flow$Publisher<Landroid/service/controls/Control;>;"
    if-nez v1, :cond_2a

    .line 272
    const-string v3, "ControlsProviderService"

    const-string v4, "No publisher provided for suggested controls"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {v2}, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->onComplete()V

    goto :goto_7d

    .line 275
    :cond_2a
    invoke-interface {v1, v2}, Ljava/util/concurrent/Flow$Publisher;->subscribe(Ljava/util/concurrent/Flow$Subscriber;)V

    .line 277
    goto :goto_7d

    .line 291
    .end local v0    # "cs":Landroid/service/controls/IControlsSubscriber;
    .end local v1    # "publisher":Ljava/util/concurrent/Flow$Publisher;, "Ljava/util/concurrent/Flow$Publisher<Landroid/service/controls/Control;>;"
    .end local v2    # "proxy":Landroid/service/controls/ControlsProviderService$SubscriberProxy;
    :pswitch_2e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/controls/ControlsProviderService$ActionMessage;

    .line 292
    .local v0, "aMsg":Landroid/service/controls/ControlsProviderService$ActionMessage;
    iget-object v1, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    iget-object v2, v0, Landroid/service/controls/ControlsProviderService$ActionMessage;->mControlId:Ljava/lang/String;

    iget-object v3, v0, Landroid/service/controls/ControlsProviderService$ActionMessage;->mAction:Landroid/service/controls/actions/ControlAction;

    iget-object v4, v0, Landroid/service/controls/ControlsProviderService$ActionMessage;->mControlId:Ljava/lang/String;

    iget-object v5, v0, Landroid/service/controls/ControlsProviderService$ActionMessage;->mCb:Landroid/service/controls/IControlsActionCallback;

    .line 293
    invoke-direct {p0, v4, v5}, Landroid/service/controls/ControlsProviderService$RequestHandler;->consumerFor(Ljava/lang/String;Landroid/service/controls/IControlsActionCallback;)Ljava/util/function/Consumer;

    move-result-object v4

    .line 292
    invoke-virtual {v1, v2, v3, v4}, Landroid/service/controls/ControlsProviderService;->performControlAction(Ljava/lang/String;Landroid/service/controls/actions/ControlAction;Ljava/util/function/Consumer;)V

    .line 294
    goto :goto_7d

    .line 281
    .end local v0    # "aMsg":Landroid/service/controls/ControlsProviderService$ActionMessage;
    :pswitch_44
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/controls/ControlsProviderService$SubscribeMessage;

    .line 282
    .local v0, "sMsg":Landroid/service/controls/ControlsProviderService$SubscribeMessage;
    new-instance v1, Landroid/service/controls/ControlsProviderService$SubscriberProxy;

    iget-object v2, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    iget-object v3, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {v3}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmToken(Landroid/service/controls/ControlsProviderService;)Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, v0, Landroid/service/controls/ControlsProviderService$SubscribeMessage;->mSubscriber:Landroid/service/controls/IControlsSubscriber;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/service/controls/ControlsProviderService$SubscriberProxy;-><init>(Landroid/content/Context;ZLandroid/os/IBinder;Landroid/service/controls/IControlsSubscriber;)V

    .line 285
    .local v1, "proxy":Landroid/service/controls/ControlsProviderService$SubscriberProxy;
    iget-object v2, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    iget-object v3, v0, Landroid/service/controls/ControlsProviderService$SubscribeMessage;->mControlIds:Ljava/util/List;

    invoke-virtual {v2, v3}, Landroid/service/controls/ControlsProviderService;->createPublisherFor(Ljava/util/List;)Ljava/util/concurrent/Flow$Publisher;

    move-result-object v2

    .line 286
    invoke-interface {v2, v1}, Ljava/util/concurrent/Flow$Publisher;->subscribe(Ljava/util/concurrent/Flow$Subscriber;)V

    .line 287
    goto :goto_7d

    .line 258
    .end local v0    # "sMsg":Landroid/service/controls/ControlsProviderService$SubscribeMessage;
    .end local v1    # "proxy":Landroid/service/controls/ControlsProviderService$SubscriberProxy;
    :pswitch_64
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/controls/IControlsSubscriber;

    .line 259
    .local v0, "cs":Landroid/service/controls/IControlsSubscriber;
    new-instance v2, Landroid/service/controls/ControlsProviderService$SubscriberProxy;

    iget-object v3, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-static {v3}, Landroid/service/controls/ControlsProviderService;->-$$Nest$fgetmToken(Landroid/service/controls/ControlsProviderService;)Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Landroid/service/controls/ControlsProviderService$SubscriberProxy;-><init>(ZLandroid/os/IBinder;Landroid/service/controls/IControlsSubscriber;)V

    .line 261
    .restart local v2    # "proxy":Landroid/service/controls/ControlsProviderService$SubscriberProxy;
    iget-object v1, p0, Landroid/service/controls/ControlsProviderService$RequestHandler;->this$0:Landroid/service/controls/ControlsProviderService;

    invoke-virtual {v1}, Landroid/service/controls/ControlsProviderService;->createPublisherForAllAvailable()Ljava/util/concurrent/Flow$Publisher;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Flow$Publisher;->subscribe(Ljava/util/concurrent/Flow$Subscriber;)V

    .line 262
    nop

    .line 297
    .end local v0    # "cs":Landroid/service/controls/IControlsSubscriber;
    .end local v2    # "proxy":Landroid/service/controls/ControlsProviderService$SubscriberProxy;
    :goto_7d
    return-void

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_64
        :pswitch_44
        :pswitch_2e
        :pswitch_8
    .end packed-switch
.end method
