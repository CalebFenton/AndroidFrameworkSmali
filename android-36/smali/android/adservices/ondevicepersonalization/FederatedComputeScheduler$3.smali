.class Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$3;
.super Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeCallback$Stub;
.source "FederatedComputeScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;->cancel(Landroid/adservices/ondevicepersonalization/FederatedComputeInput;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$err:[I

.field final synthetic blacklist val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;Ljava/util/concurrent/CountDownLatch;[I)V
    .registers 4
    .param p1, "this$0"    # Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 257
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$3;->val$err:[I

    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/aidl/IFederatedComputeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFailure(I)V
    .registers 4
    .param p1, "errorCode"    # I

    .line 265
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$3;->val$err:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 266
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 267
    return-void
.end method

.method public blacklist onSuccess()V
    .registers 2

    .line 260
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeScheduler$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 261
    return-void
.end method
