.class public final Landroid/app/appfunctions/AppFunctionManager;
.super Ljava/lang/Object;
.source "AppFunctionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;,
        Landroid/app/appfunctions/AppFunctionManager$EnabledState;
    }
.end annotation


# static fields
.field public static final whitelist APP_FUNCTION_STATE_DEFAULT:I = 0x0

.field public static final whitelist APP_FUNCTION_STATE_DISABLED:I = 0x2

.field public static final whitelist APP_FUNCTION_STATE_ENABLED:I = 0x1


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/app/appfunctions/IAppFunctionManager;


# direct methods
.method public constructor blacklist <init>(Landroid/app/appfunctions/IAppFunctionManager;Landroid/content/Context;)V
    .registers 3
    .param p1, "service"    # Landroid/app/appfunctions/IAppFunctionManager;
    .param p2, "context"    # Landroid/content/Context;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Landroid/app/appfunctions/AppFunctionManager;->mService:Landroid/app/appfunctions/IAppFunctionManager;

    .line 138
    iput-object p2, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    .line 139
    return-void
.end method

.method private blacklist isAppFunctionEnabledInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .param p1, "functionIdentifier"    # Ljava/lang/String;
    .param p2, "targetPackage"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 319
    .local p4, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Boolean;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/appsearch/AppSearchManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/AppSearchManager;

    .line 324
    .local v0, "appSearchManager":Landroid/app/appsearch/AppSearchManager;
    if-nez v0, :cond_23

    .line 325
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get AppSearchManager."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 326
    return-void

    .line 331
    :cond_23
    new-instance v1, Landroid/app/appfunctions/AppFunctionManager$2;

    invoke-direct {v1, p0, p4}, Landroid/app/appfunctions/AppFunctionManager$2;-><init>(Landroid/app/appfunctions/AppFunctionManager;Landroid/os/OutcomeReceiver;)V

    .line 347
    .local v1, "callbackWithExceptionInterceptor":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Boolean;Ljava/lang/Exception;>;"
    invoke-static {p1, p2, v0, p3, v1}, Landroid/app/appfunctions/AppFunctionManagerHelper;->isAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 351
    return-void
.end method


# virtual methods
.method public whitelist executeAppFunction(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V
    .registers 11
    .param p1, "request"    # Landroid/app/appfunctions/ExecuteAppFunctionRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appfunctions/ExecuteAppFunctionRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/CancellationSignal;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/appfunctions/ExecuteAppFunctionResponse;",
            "Landroid/app/appfunctions/AppFunctionException;",
            ">;)V"
        }
    .end annotation

    .line 171
    .local p4, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/app/appfunctions/ExecuteAppFunctionResponse;Landroid/app/appfunctions/AppFunctionException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance v0, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    .line 177
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v1, p1

    .end local p1    # "request":Landroid/app/appfunctions/ExecuteAppFunctionRequest;
    .local v1, "request":Landroid/app/appfunctions/ExecuteAppFunctionRequest;
    invoke-direct/range {v0 .. v5}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;-><init>(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Landroid/os/UserHandle;Ljava/lang/String;J)V

    move-object p1, v0

    .line 181
    .local p1, "aidlRequest":Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;
    :try_start_20
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager;->mService:Landroid/app/appfunctions/IAppFunctionManager;

    new-instance v2, Landroid/app/appfunctions/AppFunctionManager$1;

    invoke-direct {v2, p0, p2, p4}, Landroid/app/appfunctions/AppFunctionManager$1;-><init>(Landroid/app/appfunctions/AppFunctionManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 182
    invoke-interface {v0, p1, v2}, Landroid/app/appfunctions/IAppFunctionManager;->executeAppFunction(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 206
    .local v0, "cancellationTransport":Landroid/os/ICancellationSignal;
    if-eqz v0, :cond_30

    .line 207
    invoke-virtual {p3, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_30} :catch_32

    .line 211
    .end local v0    # "cancellationTransport":Landroid/os/ICancellationSignal;
    :cond_30
    nop

    .line 212
    return-void

    .line 209
    :catch_32
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "functionIdentifier"    # Ljava/lang/String;
    .param p2, "targetPackage"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 242
    .local p4, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Boolean;Ljava/lang/Exception;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/appfunctions/AppFunctionManager;->isAppFunctionEnabledInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 243
    return-void
.end method

.method public whitelist isAppFunctionEnabled(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "functionIdentifier"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 270
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Boolean;Ljava/lang/Exception;>;"
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    .line 271
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/app/appfunctions/AppFunctionManager;->isAppFunctionEnabledInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 272
    return-void
.end method

.method public whitelist setAppFunctionEnabled(Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 12
    .param p1, "functionIdentifier"    # Ljava/lang/String;
    .param p2, "newEnabledState"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 298
    .local p4, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    new-instance v0, Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;

    invoke-direct {v0, p3, p4}, Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    move-object v6, v0

    .line 303
    .local v6, "callbackWrapper":Landroid/app/appfunctions/AppFunctionManager$CallbackWrapper;
    :try_start_f
    iget-object v1, p0, Landroid/app/appfunctions/AppFunctionManager;->mService:Landroid/app/appfunctions/IAppFunctionManager;

    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    .line 304
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager;->mContext:Landroid/content/Context;

    .line 306
    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v4
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1d} :catch_27

    .line 303
    move-object v3, p1

    move v5, p2

    .end local p1    # "functionIdentifier":Ljava/lang/String;
    .end local p2    # "newEnabledState":I
    .local v3, "functionIdentifier":Ljava/lang/String;
    .local v5, "newEnabledState":I
    :try_start_1f
    invoke-interface/range {v1 .. v6}, Landroid/app/appfunctions/IAppFunctionManager;->setAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ILandroid/app/appfunctions/IAppFunctionEnabledCallback;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_24

    .line 311
    nop

    .line 312
    return-void

    .line 309
    :catch_24
    move-exception v0

    move-object p1, v0

    goto :goto_2b

    .end local v3    # "functionIdentifier":Ljava/lang/String;
    .end local v5    # "newEnabledState":I
    .restart local p1    # "functionIdentifier":Ljava/lang/String;
    .restart local p2    # "newEnabledState":I
    :catch_27
    move-exception v0

    move-object v3, p1

    move v5, p2

    move-object p1, v0

    .line 310
    .end local p2    # "newEnabledState":I
    .restart local v3    # "functionIdentifier":Ljava/lang/String;
    .restart local v5    # "newEnabledState":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_2b
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method
