.class Landroid/federatedcompute/ResultHandlingService$ServiceBinder;
.super Landroid/federatedcompute/aidl/IResultHandlingService$Stub;
.source "ResultHandlingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/federatedcompute/ResultHandlingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceBinder"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/federatedcompute/ResultHandlingService;


# direct methods
.method private constructor blacklist <init>(Landroid/federatedcompute/ResultHandlingService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 67
    iput-object p1, p0, Landroid/federatedcompute/ResultHandlingService$ServiceBinder;->this$0:Landroid/federatedcompute/ResultHandlingService;

    invoke-direct {p0}, Landroid/federatedcompute/aidl/IResultHandlingService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/federatedcompute/ResultHandlingService;Landroid/federatedcompute/ResultHandlingService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/federatedcompute/ResultHandlingService$ServiceBinder;-><init>(Landroid/federatedcompute/ResultHandlingService;)V

    return-void
.end method


# virtual methods
.method public blacklist handleResult(Landroid/os/Bundle;Landroid/federatedcompute/aidl/IFederatedComputeCallback;)V
    .registers 5
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "callback"    # Landroid/federatedcompute/aidl/IFederatedComputeCallback;

    .line 70
    iget-object v0, p0, Landroid/federatedcompute/ResultHandlingService$ServiceBinder;->this$0:Landroid/federatedcompute/ResultHandlingService;

    new-instance v1, Landroid/federatedcompute/ResultHandlingService$ResultHandlingCallback;

    invoke-direct {v1, p2}, Landroid/federatedcompute/ResultHandlingService$ResultHandlingCallback;-><init>(Landroid/federatedcompute/aidl/IFederatedComputeCallback;)V

    invoke-virtual {v0, p1, v1}, Landroid/federatedcompute/ResultHandlingService;->handleResult(Landroid/os/Bundle;Ljava/util/function/Consumer;)V

    .line 71
    return-void
.end method
