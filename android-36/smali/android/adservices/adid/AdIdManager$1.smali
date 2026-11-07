.class Landroid/adservices/adid/AdIdManager$1;
.super Landroid/adservices/adid/IGetAdIdCallback$Stub;
.source "AdIdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/adservices/adid/AdIdManager;->getAdId(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/adservices/adid/AdIdManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p1, "this$0"    # Landroid/adservices/adid/AdIdManager;
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

    .line 181
    iput-object p2, p0, Landroid/adservices/adid/AdIdManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/adservices/adid/AdIdManager$1;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/adservices/adid/IGetAdIdCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onError$1(Landroid/os/OutcomeReceiver;I)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "resultCode"    # I

    .line 203
    nop

    .line 204
    invoke-static {p1}, Landroid/adservices/common/AdServicesStatusUtils;->asException(I)Ljava/lang/Exception;

    move-result-object v0

    .line 203
    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onResult$0(Landroid/adservices/adid/GetAdIdResult;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p0, "resultParcel"    # Landroid/adservices/adid/GetAdIdResult;
    .param p1, "callback"    # Landroid/os/OutcomeReceiver;

    .line 186
    invoke-virtual {p0}, Landroid/adservices/adid/GetAdIdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 187
    new-instance v0, Landroid/adservices/adid/AdId;

    .line 189
    invoke-virtual {p0}, Landroid/adservices/adid/GetAdIdResult;->getAdId()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-virtual {p0}, Landroid/adservices/adid/GetAdIdResult;->isLatEnabled()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/adservices/adid/AdId;-><init>(Ljava/lang/String;Z)V

    .line 187
    invoke-interface {p1, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    goto :goto_1f

    .line 192
    :cond_17
    nop

    .line 193
    invoke-static {p0}, Landroid/adservices/common/AdServicesStatusUtils;->asException(Landroid/adservices/common/AdServicesResponse;)Ljava/lang/Exception;

    move-result-object v0

    .line 192
    invoke-interface {p1, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 196
    :goto_1f
    return-void
.end method


# virtual methods
.method public blacklist onError(I)V
    .registers 5
    .param p1, "resultCode"    # I

    .line 201
    iget-object v0, p0, Landroid/adservices/adid/AdIdManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/adservices/adid/AdIdManager$1;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/adservices/adid/AdIdManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/adservices/adid/AdIdManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method

.method public blacklist onResult(Landroid/adservices/adid/GetAdIdResult;)V
    .registers 5
    .param p1, "resultParcel"    # Landroid/adservices/adid/GetAdIdResult;

    .line 184
    iget-object v0, p0, Landroid/adservices/adid/AdIdManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/adservices/adid/AdIdManager$1;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/adservices/adid/AdIdManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, v1}, Landroid/adservices/adid/AdIdManager$1$$ExternalSyntheticLambda1;-><init>(Landroid/adservices/adid/GetAdIdResult;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method
