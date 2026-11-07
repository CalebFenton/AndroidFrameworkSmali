.class Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;
.super Lcom/android/ims/internal/IImsMultiEndpoint$Stub;
.source "ImsMultiEndpointImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;


# direct methods
.method public static synthetic blacklist $r8$lambda$64XAm4fkezTMJT4W_ezGWtW1U7k(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;)V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->lambda$requestImsExternalCallStateInfo$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pUAeGQ53zl_R1JJg-uuP_DAOfyA(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;Lcom/android/ims/internal/IImsExternalCallStateListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->lambda$setListener$0(Lcom/android/ims/internal/IImsExternalCallStateListener;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;)V
    .registers 2
    .param p1, "this$0"    # Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 54
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsMultiEndpoint$Stub;-><init>()V

    return-void
.end method

.method private blacklist executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 6
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "errorLogName"    # Ljava/lang/String;

    .line 91
    :try_start_0
    new-instance v0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-static {v1}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_12} :catch_13

    .line 96
    goto :goto_3a

    .line 93
    :catch_13
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsMultiEndpointImplBase Binder - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 95
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    const-string v2, "MultiEndpointImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_3a
    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsync$2(Ljava/lang/Runnable;)V
    .registers 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 92
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$requestImsExternalCallStateInfo$1()V
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    .line 84
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->requestImsExternalCallStateInfo()V

    .line 83
    return-void
.end method

.method private synthetic blacklist lambda$setListener$0(Lcom/android/ims/internal/IImsExternalCallStateListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/android/ims/internal/IImsExternalCallStateListener;

    .line 59
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-static {v0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->-$$Nest$fgetmListener(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;)Lcom/android/ims/internal/IImsExternalCallStateListener;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MultiEndpointImplBase"

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-static {v0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->-$$Nest$fgetmListener(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;)Lcom/android/ims/internal/IImsExternalCallStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsExternalCallStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_26

    .line 60
    const-string/jumbo v0, "setListener: discarding dead Binder"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-static {v0, v1}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->-$$Nest$fputmListener(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;Lcom/android/ims/internal/IImsExternalCallStateListener;)V

    .line 63
    :cond_26
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-static {v0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->-$$Nest$fgetmListener(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;)Lcom/android/ims/internal/IImsExternalCallStateListener;

    move-result-object v0

    if-eqz v0, :cond_45

    if-eqz p1, :cond_45

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-static {v0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->-$$Nest$fgetmListener(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;)Lcom/android/ims/internal/IImsExternalCallStateListener;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Lcom/android/ims/internal/IImsExternalCallStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/ims/internal/IImsExternalCallStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 63
    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 65
    return-void

    .line 68
    :cond_45
    if-nez p1, :cond_4d

    .line 69
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-static {v0, v1}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->-$$Nest$fputmListener(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;Lcom/android/ims/internal/IImsExternalCallStateListener;)V

    goto :goto_68

    .line 70
    :cond_4d
    if-eqz p1, :cond_5d

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-static {v0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->-$$Nest$fgetmListener(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;)Lcom/android/ims/internal/IImsExternalCallStateListener;

    move-result-object v0

    if-nez v0, :cond_5d

    .line 71
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->-$$Nest$fputmListener(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;Lcom/android/ims/internal/IImsExternalCallStateListener;)V

    goto :goto_68

    .line 74
    :cond_5d
    const-string/jumbo v0, "setListener is being called when there is already an active listener"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->-$$Nest$fputmListener(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;Lcom/android/ims/internal/IImsExternalCallStateListener;)V

    .line 78
    :goto_68
    return-void
.end method


# virtual methods
.method public blacklist requestImsExternalCallStateInfo()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    new-instance v0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;)V

    const-string/jumbo v1, "requestImsExternalCallStateInfo"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public blacklist setListener(Lcom/android/ims/internal/IImsExternalCallStateListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/ims/internal/IImsExternalCallStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    new-instance v0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;Lcom/android/ims/internal/IImsExternalCallStateListener;)V

    const-string/jumbo v1, "setListener"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 79
    return-void
.end method
