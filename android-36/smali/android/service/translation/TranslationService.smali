.class public abstract Landroid/service/translation/TranslationService;
.super Landroid/app/Service;
.source "TranslationService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/translation/TranslationService$OnTranslationResultCallback;
    }
.end annotation


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.translation.TranslationService"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.translation_service"

.field private static final blacklist TAG:Ljava/lang/String; = "TranslationService"


# instance fields
.field private blacklist mCallback:Landroid/view/translation/ITranslationServiceCallback;

.field private final blacklist mClientInterface:Landroid/view/translation/ITranslationDirectManager;

.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mInterface:Landroid/service/translation/ITranslationService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClientInterface(Landroid/service/translation/TranslationService;)Landroid/view/translation/ITranslationDirectManager;
    .registers 1

    iget-object p0, p0, Landroid/service/translation/TranslationService;->mClientInterface:Landroid/view/translation/ITranslationDirectManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/translation/TranslationService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/translation/TranslationService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnConnected(Landroid/service/translation/TranslationService;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/translation/TranslationService;->handleOnConnected(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnCreateTranslationSession(Landroid/service/translation/TranslationService;Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/service/translation/TranslationService;->handleOnCreateTranslationSession(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnTranslationCapabilitiesRequest(Landroid/service/translation/TranslationService;IILandroid/os/ResultReceiver;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/service/translation/TranslationService;->handleOnTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misValidCapabilities(Landroid/service/translation/TranslationService;IILjava/util/Set;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/service/translation/TranslationService;->isValidCapabilities(IILjava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 100
    new-instance v0, Landroid/service/translation/TranslationService$1;

    invoke-direct {v0, p0}, Landroid/service/translation/TranslationService$1;-><init>(Landroid/service/translation/TranslationService;)V

    iput-object v0, p0, Landroid/service/translation/TranslationService;->mInterface:Landroid/service/translation/ITranslationService;

    .line 165
    new-instance v0, Landroid/service/translation/TranslationService$2;

    invoke-direct {v0, p0}, Landroid/service/translation/TranslationService$2;-><init>(Landroid/service/translation/TranslationService;)V

    iput-object v0, p0, Landroid/service/translation/TranslationService;->mClientInterface:Landroid/view/translation/ITranslationDirectManager;

    return-void
.end method

.method private blacklist handleOnConnected(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "callback"    # Landroid/os/IBinder;

    .line 329
    invoke-static {p1}, Landroid/view/translation/ITranslationServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/translation/ITranslationServiceCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/service/translation/TranslationService;->mCallback:Landroid/view/translation/ITranslationServiceCallback;

    .line 330
    invoke-virtual {p0}, Landroid/service/translation/TranslationService;->onConnected()V

    .line 331
    return-void
.end method

.method private blacklist handleOnCreateTranslationSession(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V
    .registers 5
    .param p1, "translationContext"    # Landroid/view/translation/TranslationContext;
    .param p2, "sessionId"    # I
    .param p3, "resultReceiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 337
    new-instance v0, Landroid/service/translation/TranslationService$3;

    invoke-direct {v0, p0, p1, p3, p2}, Landroid/service/translation/TranslationService$3;-><init>(Landroid/service/translation/TranslationService;Landroid/view/translation/TranslationContext;Lcom/android/internal/os/IResultReceiver;I)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/service/translation/TranslationService;->onCreateTranslationSession(Landroid/view/translation/TranslationContext;ILjava/util/function/Consumer;)V

    .line 359
    return-void
.end method

.method private blacklist handleOnTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;)V
    .registers 5
    .param p1, "sourceFormat"    # I
    .param p2, "targetFormat"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 365
    new-instance v0, Landroid/service/translation/TranslationService$4;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/service/translation/TranslationService$4;-><init>(Landroid/service/translation/TranslationService;IILandroid/os/ResultReceiver;)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/service/translation/TranslationService;->onTranslationCapabilitiesRequest(IILjava/util/function/Consumer;)V

    .line 382
    return-void
.end method

.method private blacklist isValidCapabilities(IILjava/util/Set;)Z
    .registers 9
    .param p1, "sourceFormat"    # I
    .param p2, "targetFormat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set<",
            "Landroid/view/translation/TranslationCapability;",
            ">;)Z"
        }
    .end annotation

    .line 389
    .local p3, "capabilities":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/translation/TranslationCapability;>;"
    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    if-eq p2, v0, :cond_6

    .line 391
    return v0

    .line 394
    :cond_6
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/translation/TranslationCapability;

    .line 395
    .local v2, "capability":Landroid/view/translation/TranslationCapability;
    invoke-virtual {v2}, Landroid/view/translation/TranslationCapability;->getState()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_20

    .line 396
    const/4 v0, 0x0

    return v0

    .line 398
    .end local v2    # "capability":Landroid/view/translation/TranslationCapability;
    :cond_20
    goto :goto_a

    .line 400
    :cond_21
    return v0
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 198
    const-string v0, "android.service.translation.TranslationService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 199
    iget-object v0, p0, Landroid/service/translation/TranslationService;->mInterface:Landroid/service/translation/ITranslationService;

    invoke-interface {v0}, Landroid/service/translation/ITranslationService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 201
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to bind to wrong intent (should be android.service.translation.TranslationService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranslationService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onConnected()V
    .registers 1

    .line 211
    return-void
.end method

.method public whitelist onCreate()V
    .registers 5

    .line 190
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 191
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/translation/TranslationService;->mHandler:Landroid/os/Handler;

    .line 192
    invoke-static {v3}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 193
    return-void
.end method

.method public greylist onCreateTranslationSession(Landroid/view/translation/TranslationContext;I)V
    .registers 3
    .param p1, "translationContext"    # Landroid/view/translation/TranslationContext;
    .param p2, "sessionId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 248
    return-void
.end method

.method public abstract whitelist onCreateTranslationSession(Landroid/view/translation/TranslationContext;ILjava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/TranslationContext;",
            "I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public whitelist onDisconnected()V
    .registers 1

    .line 221
    return-void
.end method

.method public abstract whitelist onFinishTranslationSession(I)V
.end method

.method public abstract whitelist onTranslationCapabilitiesRequest(IILjava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/function/Consumer<",
            "Ljava/util/Set<",
            "Landroid/view/translation/TranslationCapability;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public greylist onTranslationRequest(Landroid/view/translation/TranslationRequest;ILandroid/os/CancellationSignal;Landroid/service/translation/TranslationService$OnTranslationResultCallback;)V
    .registers 5
    .param p1, "request"    # Landroid/view/translation/TranslationRequest;
    .param p2, "sessionId"    # I
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Landroid/service/translation/TranslationService$OnTranslationResultCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 269
    return-void
.end method

.method public abstract whitelist onTranslationRequest(Landroid/view/translation/TranslationRequest;ILandroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/TranslationRequest;",
            "I",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public final whitelist updateTranslationCapability(Landroid/view/translation/TranslationCapability;)V
    .registers 5
    .param p1, "capability"    # Landroid/view/translation/TranslationCapability;

    .line 313
    const-string/jumbo v0, "translation capability should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 315
    iget-object v0, p0, Landroid/service/translation/TranslationService;->mCallback:Landroid/view/translation/ITranslationServiceCallback;

    .line 316
    .local v0, "callback":Landroid/view/translation/ITranslationServiceCallback;
    if-nez v0, :cond_13

    .line 317
    const-string v1, "TranslationService"

    const-string/jumbo v2, "updateTranslationCapability(): no server callback"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void

    .line 322
    :cond_13
    :try_start_13
    invoke-interface {v0, p1}, Landroid/view/translation/ITranslationServiceCallback;->updateTranslationCapability(Landroid/view/translation/TranslationCapability;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_17

    .line 325
    goto :goto_1b

    .line 323
    :catch_17
    move-exception v1

    .line 324
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 326
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method
