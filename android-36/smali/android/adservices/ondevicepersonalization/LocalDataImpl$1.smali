.class Landroid/adservices/ondevicepersonalization/LocalDataImpl$1;
.super Landroid/adservices/ondevicepersonalization/aidl/IDataAccessServiceCallback$Stub;
.source "LocalDataImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/adservices/ondevicepersonalization/LocalDataImpl;->handleAsyncRequest(ILandroid/os/Bundle;)Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$asyncResult:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/LocalDataImpl;Ljava/util/concurrent/BlockingQueue;)V
    .registers 3
    .param p1, "this$0"    # Landroid/adservices/ondevicepersonalization/LocalDataImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 160
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/LocalDataImpl$1;->val$asyncResult:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(I)V
    .registers 5
    .param p1, "errorCode"    # I

    .line 168
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/LocalDataImpl$1;->val$asyncResult:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;-><init>(Landroid/os/Bundle;ILandroid/adservices/ondevicepersonalization/LocalDataImpl-IA;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method public blacklist onSuccess(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Bundle;

    .line 163
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/LocalDataImpl$1;->val$asyncResult:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Landroid/adservices/ondevicepersonalization/LocalDataImpl$CallbackResult;-><init>(Landroid/os/Bundle;ILandroid/adservices/ondevicepersonalization/LocalDataImpl-IA;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method
