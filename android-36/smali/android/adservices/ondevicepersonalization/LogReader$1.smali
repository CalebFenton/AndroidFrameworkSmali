.class Landroid/adservices/ondevicepersonalization/LogReader$1;
.super Landroid/adservices/ondevicepersonalization/aidl/IDataAccessServiceCallback$Stub;
.source "LogReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/adservices/ondevicepersonalization/LogReader;->handleAsyncRequest(ILandroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$asyncResult:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/LogReader;Ljava/util/concurrent/BlockingQueue;)V
    .registers 3
    .param p1, "this$0"    # Landroid/adservices/ondevicepersonalization/LogReader;
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

    .line 137
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/LogReader$1;->val$asyncResult:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/aidl/IDataAccessServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(I)V
    .registers 4
    .param p1, "errorCode"    # I

    .line 149
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/LogReader$1;->val$asyncResult:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method public blacklist onSuccess(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "result"    # Landroid/os/Bundle;

    .line 140
    if-eqz p1, :cond_8

    .line 141
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/LogReader$1;->val$asyncResult:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 143
    :cond_8
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/LogReader$1;->val$asyncResult:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 145
    :goto_f
    return-void
.end method
