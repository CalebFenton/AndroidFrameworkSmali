.class Landroid/service/assist/classification/FieldClassificationService$1;
.super Ljava/lang/Object;
.source "FieldClassificationService.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/assist/classification/FieldClassificationService;->handleOnClassificationRequest(Landroid/service/assist/classification/FieldClassificationRequest;Landroid/service/assist/classification/IFieldClassificationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Landroid/service/assist/classification/FieldClassificationResponse;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/service/assist/classification/IFieldClassificationCallback;


# direct methods
.method constructor blacklist <init>(Landroid/service/assist/classification/FieldClassificationService;Landroid/service/assist/classification/IFieldClassificationCallback;)V
    .registers 3
    .param p1, "this$0"    # Landroid/service/assist/classification/FieldClassificationService;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 158
    iput-object p2, p0, Landroid/service/assist/classification/FieldClassificationService$1;->val$callback:Landroid/service/assist/classification/IFieldClassificationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 170
    :try_start_0
    iget-object v0, p0, Landroid/service/assist/classification/FieldClassificationService$1;->val$callback:Landroid/service/assist/classification/IFieldClassificationCallback;

    invoke-interface {v0}, Landroid/service/assist/classification/IFieldClassificationCallback;->onFailure()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 173
    goto :goto_a

    .line 171
    :catch_6
    move-exception v0

    .line 172
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 174
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_a
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

    .line 158
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Landroid/service/assist/classification/FieldClassificationService$1;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public blacklist onResult(Landroid/service/assist/classification/FieldClassificationResponse;)V
    .registers 3
    .param p1, "result"    # Landroid/service/assist/classification/FieldClassificationResponse;

    .line 162
    :try_start_0
    iget-object v0, p0, Landroid/service/assist/classification/FieldClassificationService$1;->val$callback:Landroid/service/assist/classification/IFieldClassificationCallback;

    invoke-interface {v0, p1}, Landroid/service/assist/classification/IFieldClassificationCallback;->onSuccess(Landroid/service/assist/classification/FieldClassificationResponse;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 165
    goto :goto_a

    .line 163
    :catch_6
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 166
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public bridge synthetic whitelist onResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 158
    check-cast p1, Landroid/service/assist/classification/FieldClassificationResponse;

    invoke-virtual {p0, p1}, Landroid/service/assist/classification/FieldClassificationService$1;->onResult(Landroid/service/assist/classification/FieldClassificationResponse;)V

    return-void
.end method
