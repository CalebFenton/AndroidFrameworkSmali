.class Landroid/app/appfunctions/AppFunctionManager$2;
.super Ljava/lang/Object;
.source "AppFunctionManager.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/appfunctions/AppFunctionManager;->isAppFunctionEnabledInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/os/OutcomeReceiver;


# direct methods
.method constructor blacklist <init>(Landroid/app/appfunctions/AppFunctionManager;Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p1, "this$0"    # Landroid/app/appfunctions/AppFunctionManager;
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

    .line 332
    iput-object p2, p0, Landroid/app/appfunctions/AppFunctionManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 340
    instance-of v0, p1, Landroid/app/appfunctions/AppFunctionManagerHelper$AppFunctionNotFoundException;

    if-eqz v0, :cond_a

    .line 341
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    .line 343
    :cond_a
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 344
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

    .line 332
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Landroid/app/appfunctions/AppFunctionManager$2;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public blacklist onResult(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 335
    iget-object v0, p0, Landroid/app/appfunctions/AppFunctionManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 336
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

    .line 332
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroid/app/appfunctions/AppFunctionManager$2;->onResult(Ljava/lang/Boolean;)V

    return-void
.end method
