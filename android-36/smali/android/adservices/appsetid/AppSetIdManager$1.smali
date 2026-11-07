.class Landroid/adservices/appsetid/AppSetIdManager$1;
.super Landroid/adservices/appsetid/IGetAppSetIdCallback$Stub;
.source "AppSetIdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/adservices/appsetid/AppSetIdManager;->getAppSetId(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/adservices/appsetid/AppSetIdManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .param p1, "this$0"    # Landroid/adservices/appsetid/AppSetIdManager;
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

    .line 171
    iput-object p2, p0, Landroid/adservices/appsetid/AppSetIdManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/adservices/appsetid/AppSetIdManager$1;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Landroid/adservices/appsetid/IGetAppSetIdCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onError$1(Landroid/os/OutcomeReceiver;I)V
    .registers 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "resultCode"    # I

    .line 193
    nop

    .line 194
    invoke-static {p1}, Landroid/adservices/common/AdServicesStatusUtils;->asException(I)Ljava/lang/Exception;

    move-result-object v0

    .line 193
    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onResult$0(Landroid/adservices/appsetid/GetAppSetIdResult;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p0, "resultParcel"    # Landroid/adservices/appsetid/GetAppSetIdResult;
    .param p1, "callback"    # Landroid/os/OutcomeReceiver;

    .line 176
    invoke-virtual {p0}, Landroid/adservices/appsetid/GetAppSetIdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 177
    new-instance v0, Landroid/adservices/appsetid/AppSetId;

    .line 179
    invoke-virtual {p0}, Landroid/adservices/appsetid/GetAppSetIdResult;->getAppSetId()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {p0}, Landroid/adservices/appsetid/GetAppSetIdResult;->getAppSetIdScope()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/adservices/appsetid/AppSetId;-><init>(Ljava/lang/String;I)V

    .line 177
    invoke-interface {p1, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    goto :goto_1f

    .line 182
    :cond_17
    nop

    .line 183
    invoke-static {p0}, Landroid/adservices/common/AdServicesStatusUtils;->asException(Landroid/adservices/common/AdServicesResponse;)Ljava/lang/Exception;

    move-result-object v0

    .line 182
    invoke-interface {p1, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 186
    :goto_1f
    return-void
.end method


# virtual methods
.method public blacklist onError(I)V
    .registers 5
    .param p1, "resultCode"    # I

    .line 191
    iget-object v0, p0, Landroid/adservices/appsetid/AppSetIdManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/adservices/appsetid/AppSetIdManager$1;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/adservices/appsetid/AppSetIdManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/adservices/appsetid/AppSetIdManager$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 195
    return-void
.end method

.method public blacklist onResult(Landroid/adservices/appsetid/GetAppSetIdResult;)V
    .registers 5
    .param p1, "resultParcel"    # Landroid/adservices/appsetid/GetAppSetIdResult;

    .line 174
    iget-object v0, p0, Landroid/adservices/appsetid/AppSetIdManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/adservices/appsetid/AppSetIdManager$1;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/adservices/appsetid/AppSetIdManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1}, Landroid/adservices/appsetid/AppSetIdManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/adservices/appsetid/GetAppSetIdResult;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method
