.class Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback;
.super Ljava/lang/Object;
.source "IsolatedService.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/IsolatedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Landroid/os/Parcelable;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "TT;",
        "Landroid/adservices/ondevicepersonalization/IsolatedServiceException;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;

.field private final blacklist mConverter:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "TT;TU;>;"
        }
    .end annotation
.end field

.field private final blacklist mRequestToken:Landroid/adservices/ondevicepersonalization/RequestToken;


# direct methods
.method constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;Landroid/adservices/ondevicepersonalization/RequestToken;Ljava/util/function/Function;)V
    .registers 5
    .param p1, "callback"    # Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;
    .param p2, "requestToken"    # Landroid/adservices/ondevicepersonalization/RequestToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;",
            "Landroid/adservices/ondevicepersonalization/RequestToken;",
            "Ljava/util/function/Function<",
            "TT;TU;>;)V"
        }
    .end annotation

    .line 500
    .local p0, "this":Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback;, "Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback<TT;TU;>;"
    .local p3, "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback;->mCallback:Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;

    .line 502
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/RequestToken;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback;->mRequestToken:Landroid/adservices/ondevicepersonalization/RequestToken;

    .line 503
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Function;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback;->mConverter:Ljava/util/function/Function;

    .line 504
    return-void
.end method

.method private blacklist sendError(ILjava/lang/Throwable;)V
    .registers 7
    .param p1, "isolatedServiceErrorCode"    # I
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 536
    .local p0, "this":Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback;, "Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback<TT;TU;>;"
    :try_start_0
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback;->mCallback:Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;

    .line 539
    const/4 v1, 0x3

    invoke-static {p2, v1}, Lcom/android/ondevicepersonalization/internal/util/ExceptionInfo;->toByteArray(Ljava/lang/Throwable;I)[B

    move-result-object v1

    .line 536
    const/16 v2, 0x67

    invoke-interface {v0, v2, p1, v1}, Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;->onError(II[B)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 542
    goto :goto_2c

    .line 540
    :catch_d
    move-exception v0

    .line 541
    .local v0, "re":Landroid/os/RemoteException;
    invoke-static {}, Landroid/adservices/ondevicepersonalization/IsolatedService;->-$$Nest$sfgetsLogger()Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/adservices/ondevicepersonalization/IsolatedService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Callback failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 543
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_2c
    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/adservices/ondevicepersonalization/IsolatedServiceException;)V
    .registers 3
    .param p1, "e"    # Landroid/adservices/ondevicepersonalization/IsolatedServiceException;

    .line 530
    .local p0, "this":Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback;, "Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback<TT;TU;>;"
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/IsolatedServiceException;->getErrorCode()I

    move-result v0

    invoke-direct {p0, v0, p1}, Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback;->sendError(ILjava/lang/Throwable;)V

    .line 531
    return-void
.end method

.method public bridge synthetic whitelist onError(Ljava/lang/Throwable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 491
    .local p0, "this":Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback;, "Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback<TT;TU;>;"
    check-cast p1, Landroid/adservices/ondevicepersonalization/IsolatedServiceException;

    invoke-virtual {p0, p1}, Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback;->onError(Landroid/adservices/ondevicepersonalization/IsolatedServiceException;)V

    return-void
.end method

.method public whitelist onResult(Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 509
    .local p0, "this":Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback;, "Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback<TT;TU;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback;->mRequestToken:Landroid/adservices/ondevicepersonalization/RequestToken;

    invoke-virtual {v2}, Landroid/adservices/ondevicepersonalization/RequestToken;->getStartTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 510
    .local v0, "elapsedTimeMillis":J
    if-nez p1, :cond_19

    .line 511
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "missing result"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback;->sendError(ILjava/lang/Throwable;)V

    goto :goto_62

    .line 513
    :cond_19
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 514
    .local v2, "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback;->mConverter:Ljava/util/function/Function;

    invoke-interface {v3, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .line 515
    .local v3, "wrappedResult":Landroid/os/Parcelable;, "TU;"
    const-string v4, "android.ondevicepersonalization.extra.result"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 516
    new-instance v4, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;

    invoke-direct {v4}, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;-><init>()V

    .line 518
    invoke-virtual {v4, v0, v1}, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;->setElapsedTimeMillis(J)Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;

    move-result-object v4

    .line 519
    invoke-virtual {v4}, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;->build()Landroid/adservices/ondevicepersonalization/CalleeMetadata;

    move-result-object v4

    .line 516
    const-string v5, "android.ondevicepersonalization.extra.callee_metadata"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 521
    :try_start_3d
    iget-object v4, p0, Landroid/adservices/ondevicepersonalization/IsolatedService$WrappedCallback;->mCallback:Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;

    invoke-interface {v4, v2}, Landroid/adservices/ondevicepersonalization/aidl/IIsolatedServiceCallback;->onSuccess(Landroid/os/Bundle;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_42} :catch_43

    .line 524
    goto :goto_62

    .line 522
    :catch_43
    move-exception v4

    .line 523
    .local v4, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/adservices/ondevicepersonalization/IsolatedService;->-$$Nest$sfgetsLogger()Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/adservices/ondevicepersonalization/IsolatedService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": Callback failed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "wrappedResult":Landroid/os/Parcelable;, "TU;"
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_62
    return-void
.end method
