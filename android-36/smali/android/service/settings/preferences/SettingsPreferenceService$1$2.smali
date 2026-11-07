.class Landroid/service/settings/preferences/SettingsPreferenceService$1$2;
.super Ljava/lang/Object;
.source "SettingsPreferenceService.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/settings/preferences/SettingsPreferenceService$1;->getPreferenceValue(Landroid/service/settings/preferences/GetValueRequest;Landroid/service/settings/preferences/IGetValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Landroid/service/settings/preferences/GetValueResult;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/service/settings/preferences/IGetValueCallback;


# direct methods
.method constructor blacklist <init>(Landroid/service/settings/preferences/SettingsPreferenceService$1;Landroid/service/settings/preferences/IGetValueCallback;)V
    .registers 3
    .param p1, "this$1"    # Landroid/service/settings/preferences/SettingsPreferenceService$1;
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

    .line 120
    iput-object p2, p0, Landroid/service/settings/preferences/SettingsPreferenceService$1$2;->val$callback:Landroid/service/settings/preferences/IGetValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/Exception;

    .line 133
    :try_start_0
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceService$1$2;->val$callback:Landroid/service/settings/preferences/IGetValueCallback;

    invoke-interface {v0}, Landroid/service/settings/preferences/IGetValueCallback;->onFailure()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 136
    goto :goto_a

    .line 134
    :catch_6
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 137
    .end local v0    # "e":Landroid/os/RemoteException;
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

    .line 120
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Landroid/service/settings/preferences/SettingsPreferenceService$1$2;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public blacklist onResult(Landroid/service/settings/preferences/GetValueResult;)V
    .registers 3
    .param p1, "result"    # Landroid/service/settings/preferences/GetValueResult;

    .line 124
    :try_start_0
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceService$1$2;->val$callback:Landroid/service/settings/preferences/IGetValueCallback;

    invoke-interface {v0, p1}, Landroid/service/settings/preferences/IGetValueCallback;->onSuccess(Landroid/service/settings/preferences/GetValueResult;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 127
    goto :goto_a

    .line 125
    :catch_6
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 128
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

    .line 120
    check-cast p1, Landroid/service/settings/preferences/GetValueResult;

    invoke-virtual {p0, p1}, Landroid/service/settings/preferences/SettingsPreferenceService$1$2;->onResult(Landroid/service/settings/preferences/GetValueResult;)V

    return-void
.end method
