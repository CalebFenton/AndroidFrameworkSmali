.class Landroid/adservices/ondevicepersonalization/EventUrlProvider$1;
.super Landroid/adservices/ondevicepersonalization/aidl/IDataAccessServiceCallback$Stub;
.source "EventUrlProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/adservices/ondevicepersonalization/EventUrlProvider;->getUrl(Landroid/os/Bundle;IJ)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$asyncResult:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/EventUrlProvider;Ljava/util/concurrent/BlockingQueue;)V
    .registers 3
    .param p1, "this$0"    # Landroid/adservices/ondevicepersonalization/EventUrlProvider;
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

    .line 110
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/EventUrlProvider$1;->val$asyncResult:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(I)V
    .registers 5
    .param p1, "errorCode"    # I

    .line 117
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/EventUrlProvider$1;->val$asyncResult:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Landroid/adservices/ondevicepersonalization/EventUrlProvider$CallbackResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/adservices/ondevicepersonalization/EventUrlProvider$CallbackResult;-><init>(Landroid/os/Bundle;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public blacklist onSuccess(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "result"    # Landroid/os/Bundle;

    .line 113
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/EventUrlProvider$1;->val$asyncResult:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Landroid/adservices/ondevicepersonalization/EventUrlProvider$CallbackResult;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/adservices/ondevicepersonalization/EventUrlProvider$CallbackResult;-><init>(Landroid/os/Bundle;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method
