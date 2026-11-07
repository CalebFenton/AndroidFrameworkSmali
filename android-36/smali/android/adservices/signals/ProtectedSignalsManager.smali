.class public Landroid/adservices/signals/ProtectedSignalsManager;
.super Ljava/lang/Object;
.source "ProtectedSignalsManager.java"


# static fields
.field public static final blacklist PROTECTED_SIGNALS_SERVICE:Ljava/lang/String; = "protected_signals_service"

.field private static final blacklist sLogger:Lcom/android/adservices/LoggerFactory$Logger;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mServiceBinder:Lcom/android/adservices/ServiceBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/adservices/ServiceBinder<",
            "Landroid/adservices/signals/IProtectedSignalsService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    invoke-static {}, Lcom/android/adservices/LoggerFactory;->getFledgeLogger()Lcom/android/adservices/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Landroid/adservices/signals/ProtectedSignalsManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {p0, p1}, Landroid/adservices/signals/ProtectedSignalsManager;->initialize(Landroid/content/Context;)Landroid/adservices/signals/ProtectedSignalsManager;

    .line 88
    return-void
.end method

.method public static whitelist get(Landroid/content/Context;)Landroid/adservices/signals/ProtectedSignalsManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_f

    .line 73
    const-class v0, Landroid/adservices/signals/ProtectedSignalsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/signals/ProtectedSignalsManager;

    goto :goto_14

    .line 74
    :cond_f
    new-instance v0, Landroid/adservices/signals/ProtectedSignalsManager;

    invoke-direct {v0, p0}, Landroid/adservices/signals/ProtectedSignalsManager;-><init>(Landroid/content/Context;)V

    .line 72
    :goto_14
    return-object v0
.end method

.method private blacklist getCallerPackageName()Ljava/lang/String;
    .registers 3

    .line 227
    iget-object v0, p0, Landroid/adservices/signals/ProtectedSignalsManager;->mContext:Landroid/content/Context;

    .line 228
    invoke-static {v0}, Landroid/adservices/common/SandboxedSdkContextUtils;->getAsSandboxedSdkContext(Landroid/content/Context;)Landroid/app/sdksandbox/SandboxedSdkContext;

    move-result-object v0

    .line 229
    .local v0, "sandboxedSdkContext":Landroid/app/sdksandbox/SandboxedSdkContext;
    if-nez v0, :cond_f

    .line 230
    iget-object v1, p0, Landroid/adservices/signals/ProtectedSignalsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    .line 231
    :cond_f
    invoke-virtual {v0}, Landroid/app/sdksandbox/SandboxedSdkContext;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    .line 229
    :goto_13
    return-object v1
.end method


# virtual methods
.method blacklist getService()Landroid/adservices/signals/IProtectedSignalsService;
    .registers 4

    .line 114
    iget-object v0, p0, Landroid/adservices/signals/ProtectedSignalsManager;->mServiceBinder:Lcom/android/adservices/ServiceBinder;

    invoke-virtual {v0}, Lcom/android/adservices/ServiceBinder;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/signals/IProtectedSignalsService;

    .line 115
    .local v0, "service":Landroid/adservices/signals/IProtectedSignalsService;
    if-eqz v0, :cond_b

    .line 118
    return-object v0

    .line 116
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to find the service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist initialize(Landroid/content/Context;)Landroid/adservices/signals/ProtectedSignalsManager;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iput-object p1, p0, Landroid/adservices/signals/ProtectedSignalsManager;->mContext:Landroid/content/Context;

    .line 104
    new-instance v0, Landroid/adservices/signals/ProtectedSignalsManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/adservices/signals/ProtectedSignalsManager$$ExternalSyntheticLambda0;-><init>()V

    .line 105
    const-string v1, "android.adservices.signals.PROTECTED_SIGNALS_SERVICE"

    invoke-static {p1, v1, v0}, Lcom/android/adservices/ServiceBinder;->getServiceBinder(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Function;)Lcom/android/adservices/ServiceBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/signals/ProtectedSignalsManager;->mServiceBinder:Lcom/android/adservices/ServiceBinder;

    .line 109
    return-object p0
.end method

.method public whitelist updateSignals(Landroid/adservices/signals/UpdateSignalsRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .param p1, "updateSignalsRequest"    # Landroid/adservices/signals/UpdateSignalsRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/signals/UpdateSignalsRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 194
    .local p3, "receiver":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Object;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :try_start_9
    invoke-virtual {p0}, Landroid/adservices/signals/ProtectedSignalsManager;->getService()Landroid/adservices/signals/IProtectedSignalsService;

    move-result-object v0

    .line 201
    .local v0, "service":Landroid/adservices/signals/IProtectedSignalsService;
    new-instance v1, Landroid/adservices/signals/UpdateSignalsInput$Builder;

    .line 203
    invoke-virtual {p1}, Landroid/adservices/signals/UpdateSignalsRequest;->getUpdateUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0}, Landroid/adservices/signals/ProtectedSignalsManager;->getCallerPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/adservices/signals/UpdateSignalsInput$Builder;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1}, Landroid/adservices/signals/UpdateSignalsInput$Builder;->build()Landroid/adservices/signals/UpdateSignalsInput;

    move-result-object v1

    new-instance v2, Landroid/adservices/signals/ProtectedSignalsManager$1;

    invoke-direct {v2, p0, p2, p3}, Landroid/adservices/signals/ProtectedSignalsManager$1;-><init>(Landroid/adservices/signals/ProtectedSignalsManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 201
    invoke-interface {v0, v1, v2}, Landroid/adservices/signals/IProtectedSignalsService;->updateSignals(Landroid/adservices/signals/UpdateSignalsInput;Landroid/adservices/signals/UpdateSignalsCallback;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_26} :catch_27

    .line 223
    .end local v0    # "service":Landroid/adservices/signals/IProtectedSignalsService;
    goto :goto_39

    .line 220
    :catch_27
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/adservices/signals/ProtectedSignalsManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Exception"

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 222
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Internal Error!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 224
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_39
    return-void
.end method
