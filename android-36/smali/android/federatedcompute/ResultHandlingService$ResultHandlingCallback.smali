.class final Landroid/federatedcompute/ResultHandlingService$ResultHandlingCallback;
.super Ljava/lang/Object;
.source "ResultHandlingService.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/federatedcompute/ResultHandlingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResultHandlingCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mInternalCallback:Landroid/federatedcompute/aidl/IFederatedComputeCallback;


# direct methods
.method constructor blacklist <init>(Landroid/federatedcompute/aidl/IFederatedComputeCallback;)V
    .registers 2
    .param p1, "internalCallback"    # Landroid/federatedcompute/aidl/IFederatedComputeCallback;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Landroid/federatedcompute/ResultHandlingService$ResultHandlingCallback;->mInternalCallback:Landroid/federatedcompute/aidl/IFederatedComputeCallback;

    .line 81
    return-void
.end method


# virtual methods
.method public blacklist accept(Ljava/lang/Integer;)V
    .registers 5
    .param p1, "status"    # Ljava/lang/Integer;

    .line 90
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_c

    .line 91
    iget-object v0, p0, Landroid/federatedcompute/ResultHandlingService$ResultHandlingCallback;->mInternalCallback:Landroid/federatedcompute/aidl/IFederatedComputeCallback;

    invoke-interface {v0}, Landroid/federatedcompute/aidl/IFederatedComputeCallback;->onSuccess()V

    .line 92
    return-void

    .line 94
    :cond_c
    iget-object v0, p0, Landroid/federatedcompute/ResultHandlingService$ResultHandlingCallback;->mInternalCallback:Landroid/federatedcompute/aidl/IFederatedComputeCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/federatedcompute/aidl/IFederatedComputeCallback;->onFailure(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    .line 98
    goto :goto_1e

    .line 95
    :catch_16
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ResultHandlingService"

    const-string v2, "An error occurred when trying to communicate with FederatedCompute."

    invoke-static {v1, v2}, Lcom/android/federatedcompute/internal/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method

.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 75
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/federatedcompute/ResultHandlingService$ResultHandlingCallback;->accept(Ljava/lang/Integer;)V

    return-void
.end method
