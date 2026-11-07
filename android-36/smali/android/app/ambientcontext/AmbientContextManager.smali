.class public final Landroid/app/ambientcontext/AmbientContextManager;
.super Ljava/lang/Object;
.source "AmbientContextManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ambientcontext/AmbientContextManager$StatusCode;
    }
.end annotation


# static fields
.field public static final whitelist EXTRA_AMBIENT_CONTEXT_EVENTS:Ljava/lang/String; = "android.app.ambientcontext.extra.AMBIENT_CONTEXT_EVENTS"

.field public static final whitelist STATUS_ACCESS_DENIED:I = 0x5

.field public static final whitelist STATUS_MICROPHONE_DISABLED:I = 0x4

.field public static final whitelist STATUS_NOT_SUPPORTED:I = 0x2

.field public static final blacklist STATUS_RESPONSE_BUNDLE_KEY:Ljava/lang/String; = "android.app.ambientcontext.AmbientContextStatusBundleKey"

.field public static final whitelist STATUS_SERVICE_UNAVAILABLE:I = 0x3

.field public static final whitelist STATUS_SUCCESS:I = 0x1

.field public static final whitelist STATUS_UNKNOWN:I


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/app/ambientcontext/IAmbientContextManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/app/ambientcontext/IAmbientContextManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/ambientcontext/IAmbientContextManager;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Landroid/app/ambientcontext/AmbientContextManager;->mContext:Landroid/content/Context;

    .line 139
    iput-object p2, p0, Landroid/app/ambientcontext/AmbientContextManager;->mService:Landroid/app/ambientcontext/IAmbientContextManager;

    .line 140
    return-void
.end method

.method public static whitelist getEventsFromIntent(Landroid/content/Intent;)Ljava/util/List;
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/ambientcontext/AmbientContextEvent;",
            ">;"
        }
    .end annotation

    .line 123
    const-string v0, "android.app.ambientcontext.extra.AMBIENT_CONTEXT_EVENTS"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 124
    const-class v1, Landroid/app/ambientcontext/AmbientContextEvent;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 127
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private static blacklist integerSetToIntArray(Ljava/util/Set;)[I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 227
    .local p0, "integerSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 228
    .local v0, "intArray":[I
    const/4 v1, 0x0

    .line 229
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 230
    .local v3, "type":Ljava/lang/Integer;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v1

    .line 231
    .end local v3    # "type":Ljava/lang/Integer;
    move v1, v4

    goto :goto_b

    .line 232
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_21
    return-object v0
.end method

.method static synthetic blacklist lambda$queryAmbientContextServiceStatus$0(Ljava/util/function/Consumer;I)V
    .registers 3
    .param p0, "consumer"    # Ljava/util/function/Consumer;
    .param p1, "status"    # I

    .line 194
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$queryAmbientContextServiceStatus$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 7
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "consumer"    # Ljava/util/function/Consumer;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 191
    const-string v0, "android.app.ambientcontext.AmbientContextStatusBundleKey"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 192
    .local v0, "status":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 194
    .local v1, "identity":J
    :try_start_a
    new-instance v3, Landroid/app/ambientcontext/AmbientContextManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, v0}, Landroid/app/ambientcontext/AmbientContextManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;I)V

    invoke-interface {p0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_17

    .line 196
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 197
    nop

    .line 198
    return-void

    .line 196
    :catchall_17
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 197
    throw v3
.end method

.method static synthetic blacklist lambda$registerObserver$2(Ljava/util/function/Consumer;I)V
    .registers 3
    .param p0, "statusConsumer"    # Ljava/util/function/Consumer;
    .param p1, "statusCode"    # I

    .line 302
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$registerObserver$3(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 7
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "statusConsumer"    # Ljava/util/function/Consumer;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 299
    const-string v0, "android.app.ambientcontext.AmbientContextStatusBundleKey"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 300
    .local v0, "statusCode":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 302
    .local v1, "identity":J
    :try_start_a
    new-instance v3, Landroid/app/ambientcontext/AmbientContextManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v0}, Landroid/app/ambientcontext/AmbientContextManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;I)V

    invoke-interface {p0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_17

    .line 304
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 305
    nop

    .line 306
    return-void

    .line 304
    :catchall_17
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 305
    throw v3
.end method


# virtual methods
.method public whitelist queryAmbientContextServiceStatus(Ljava/util/Set;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 190
    .local p1, "eventTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p3, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :try_start_0
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Landroid/app/ambientcontext/AmbientContextManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2, p3}, Landroid/app/ambientcontext/AmbientContextManager$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 199
    .local v0, "callback":Landroid/os/RemoteCallback;
    iget-object v1, p0, Landroid/app/ambientcontext/AmbientContextManager;->mService:Landroid/app/ambientcontext/IAmbientContextManager;

    invoke-static {p1}, Landroid/app/ambientcontext/AmbientContextManager;->integerSetToIntArray(Ljava/util/Set;)[I

    move-result-object v2

    iget-object v3, p0, Landroid/app/ambientcontext/AmbientContextManager;->mContext:Landroid/content/Context;

    .line 200
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-interface {v1, v2, v3, v0}, Landroid/app/ambientcontext/IAmbientContextManager;->queryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1b

    .line 203
    .end local v0    # "callback":Landroid/os/RemoteCallback;
    nop

    .line 204
    return-void

    .line 201
    :catch_1b
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerObserver(Landroid/app/ambientcontext/AmbientContextEventRequest;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .param p1, "request"    # Landroid/app/ambientcontext/AmbientContextEventRequest;
    .param p2, "resultPendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ambientcontext/AmbientContextEventRequest;",
            "Landroid/app/PendingIntent;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 296
    .local p4, "statusConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isImmutable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 298
    :try_start_9
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Landroid/app/ambientcontext/AmbientContextManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p3, p4}, Landroid/app/ambientcontext/AmbientContextManager$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 307
    .local v0, "callback":Landroid/os/RemoteCallback;
    iget-object v1, p0, Landroid/app/ambientcontext/AmbientContextManager;->mService:Landroid/app/ambientcontext/IAmbientContextManager;

    invoke-interface {v1, p1, p2, v0}, Landroid/app/ambientcontext/IAmbientContextManager;->registerObserver(Landroid/app/ambientcontext/AmbientContextEventRequest;Landroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_18} :catch_1a

    .line 310
    .end local v0    # "callback":Landroid/os/RemoteCallback;
    nop

    .line 311
    return-void

    .line 308
    :catch_1a
    move-exception v0

    .line 309
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerObserver(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/util/concurrent/Executor;Landroid/app/ambientcontext/AmbientContextCallback;)V
    .registers 7
    .param p1, "request"    # Landroid/app/ambientcontext/AmbientContextEventRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "ambientContextCallback"    # Landroid/app/ambientcontext/AmbientContextCallback;

    .line 353
    :try_start_0
    new-instance v0, Landroid/app/ambientcontext/AmbientContextManager$1;

    invoke-direct {v0, p0, p2, p3}, Landroid/app/ambientcontext/AmbientContextManager$1;-><init>(Landroid/app/ambientcontext/AmbientContextManager;Ljava/util/concurrent/Executor;Landroid/app/ambientcontext/AmbientContextCallback;)V

    .line 376
    .local v0, "observer":Landroid/app/ambientcontext/IAmbientContextObserver;
    iget-object v1, p0, Landroid/app/ambientcontext/AmbientContextManager;->mService:Landroid/app/ambientcontext/IAmbientContextManager;

    iget-object v2, p0, Landroid/app/ambientcontext/AmbientContextManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, v0}, Landroid/app/ambientcontext/IAmbientContextManager;->registerObserverWithCallback(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_12

    .line 379
    .end local v0    # "observer":Landroid/app/ambientcontext/IAmbientContextObserver;
    nop

    .line 380
    return-void

    .line 377
    :catch_12
    move-exception v0

    .line 378
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startConsentActivity(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 218
    .local p1, "eventTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/ambientcontext/AmbientContextManager;->mService:Landroid/app/ambientcontext/IAmbientContextManager;

    .line 219
    invoke-static {p1}, Landroid/app/ambientcontext/AmbientContextManager;->integerSetToIntArray(Ljava/util/Set;)[I

    move-result-object v1

    iget-object v2, p0, Landroid/app/ambientcontext/AmbientContextManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-interface {v0, v1, v2}, Landroid/app/ambientcontext/IAmbientContextManager;->startConsentActivity([ILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 222
    nop

    .line 223
    return-void

    .line 220
    :catch_11
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterObserver()V
    .registers 3

    .line 389
    :try_start_0
    iget-object v0, p0, Landroid/app/ambientcontext/AmbientContextManager;->mService:Landroid/app/ambientcontext/IAmbientContextManager;

    iget-object v1, p0, Landroid/app/ambientcontext/AmbientContextManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/ambientcontext/IAmbientContextManager;->unregisterObserver(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 392
    nop

    .line 393
    return-void

    .line 390
    :catch_d
    move-exception v0

    .line 391
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
