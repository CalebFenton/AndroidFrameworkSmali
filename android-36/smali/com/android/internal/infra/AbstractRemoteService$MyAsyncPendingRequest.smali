.class final Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;
.super Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;
.source "AbstractRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/infra/AbstractRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MyAsyncPendingRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/android/internal/infra/AbstractRemoteService<",
        "TS;TI;>;I::",
        "Landroid/os/IInterface;",
        ">",
        "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
        "TS;TI;>;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mRequest:Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "TI;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 781
    const-class v0, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/infra/AbstractRemoteService;Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "TI;>;)V"
        }
    .end annotation

    .line 786
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest<TS;TI;>;"
    .local p1, "service":Lcom/android/internal/infra/AbstractRemoteService;, "TS;"
    .local p2, "request":Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;, "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<TI;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;-><init>(Lcom/android/internal/infra/AbstractRemoteService;)V

    .line 788
    iput-object p2, p0, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;->mRequest:Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;

    .line 789
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 793
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest<TS;TI;>;"
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;->getService()Lcom/android/internal/infra/AbstractRemoteService;

    move-result-object v0

    .line 794
    .local v0, "remoteService":Lcom/android/internal/infra/AbstractRemoteService;, "TS;"
    if-nez v0, :cond_7

    return-void

    .line 796
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;->mRequest:Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;

    iget-object v2, v0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    invoke-interface {v1, v2}, Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;->run(Landroid/os/IInterface;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_15
    .catchall {:try_start_7 .. :try_end_e} :catchall_13

    .line 800
    nop

    :goto_f
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;->finish()Z

    .line 801
    goto :goto_3a

    .line 800
    :catchall_13
    move-exception v1

    goto :goto_3b

    .line 797
    :catch_15
    move-exception v1

    .line 798
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_16
    sget-object v2, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception handling async request ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_16 .. :try_end_38} :catchall_13

    .line 800
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_f

    .line 802
    :goto_3a
    return-void

    .line 800
    :goto_3b
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractRemoteService$MyAsyncPendingRequest;->finish()Z

    .line 801
    throw v1
.end method
