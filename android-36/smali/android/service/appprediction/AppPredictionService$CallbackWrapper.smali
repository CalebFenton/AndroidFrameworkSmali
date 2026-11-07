.class final Landroid/service/appprediction/AppPredictionService$CallbackWrapper;
.super Ljava/lang/Object;
.source "AppPredictionService.java"

# interfaces
.implements Ljava/util/function/Consumer;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/appprediction/AppPredictionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/util/List<",
        "Landroid/app/prediction/AppTarget;",
        ">;>;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/app/prediction/IPredictionCallback;

.field private final blacklist mOnBinderDied:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/service/appprediction/AppPredictionService$CallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/app/prediction/IPredictionCallback;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "callback"    # Landroid/app/prediction/IPredictionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/prediction/IPredictionCallback;",
            "Ljava/util/function/Consumer<",
            "Landroid/service/appprediction/AppPredictionService$CallbackWrapper;",
            ">;)V"
        }
    .end annotation

    .line 340
    .local p2, "onBinderDied":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/appprediction/AppPredictionService$CallbackWrapper;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput-object p1, p0, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;->mCallback:Landroid/app/prediction/IPredictionCallback;

    .line 342
    iput-object p2, p0, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    .line 343
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    if-eqz v0, :cond_2f

    .line 345
    :try_start_b
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;->mCallback:Landroid/app/prediction/IPredictionCallback;

    invoke-interface {v0}, Landroid/app/prediction/IPredictionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_15} :catch_16

    .line 348
    goto :goto_2f

    .line 346
    :catch_16
    move-exception v0

    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to link to death: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppPredictionService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2f
    :goto_2f
    return-void
.end method


# virtual methods
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

    .line 333
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;->accept(Ljava/util/List;)V

    return-void
.end method

.method public blacklist accept(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;)V"
        }
    .end annotation

    .line 369
    .local p1, "ts":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    :try_start_0
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;->mCallback:Landroid/app/prediction/IPredictionCallback;

    if-eqz v0, :cond_e

    .line 370
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;->mCallback:Landroid/app/prediction/IPredictionCallback;

    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Landroid/app/prediction/IPredictionCallback;->onResult(Landroid/content/pm/ParceledListSlice;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 374
    :cond_e
    goto :goto_28

    .line 372
    :catch_f
    move-exception v0

    .line 373
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error sending result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppPredictionService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_28
    return-void
.end method

.method public whitelist binderDied()V
    .registers 2

    .line 379
    invoke-virtual {p0}, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;->destroy()V

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;->mCallback:Landroid/app/prediction/IPredictionCallback;

    .line 381
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    if-eqz v0, :cond_f

    .line 382
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 384
    :cond_f
    return-void
.end method

.method public blacklist destroy()V
    .registers 3

    .line 361
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;->mCallback:Landroid/app/prediction/IPredictionCallback;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;->mOnBinderDied:Ljava/util/function/Consumer;

    if-eqz v0, :cond_12

    .line 362
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;->mCallback:Landroid/app/prediction/IPredictionCallback;

    invoke-interface {v0}, Landroid/app/prediction/IPredictionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 364
    :cond_12
    return-void
.end method

.method public blacklist isCallback(Landroid/app/prediction/IPredictionCallback;)Z
    .registers 4
    .param p1, "callback"    # Landroid/app/prediction/IPredictionCallback;

    .line 353
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;->mCallback:Landroid/app/prediction/IPredictionCallback;

    if-nez v0, :cond_d

    .line 354
    const-string v0, "AppPredictionService"

    const-string v1, "Callback is null, likely the binder has died."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v0, 0x0

    return v0

    .line 357
    :cond_d
    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;->mCallback:Landroid/app/prediction/IPredictionCallback;

    invoke-interface {v0}, Landroid/app/prediction/IPredictionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Landroid/app/prediction/IPredictionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
