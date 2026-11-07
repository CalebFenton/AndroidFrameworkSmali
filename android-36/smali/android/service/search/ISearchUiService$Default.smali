.class public Landroid/service/search/ISearchUiService$Default;
.super Ljava/lang/Object;
.source "ISearchUiService.java"

# interfaces
.implements Landroid/service/search/ISearchUiService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/search/ISearchUiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onCreateSearchSession(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;)V
    .registers 3
    .param p1, "context"    # Landroid/app/search/SearchContext;
    .param p2, "sessionId"    # Landroid/app/search/SearchSessionId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist onDestroy(Landroid/app/search/SearchSessionId;)V
    .registers 2
    .param p1, "sessionId"    # Landroid/app/search/SearchSessionId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist onNotifyEvent(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V
    .registers 4
    .param p1, "sessionId"    # Landroid/app/search/SearchSessionId;
    .param p2, "input"    # Landroid/app/search/Query;
    .param p3, "event"    # Landroid/app/search/SearchTargetEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist onQuery(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;)V
    .registers 4
    .param p1, "sessionId"    # Landroid/app/search/SearchSessionId;
    .param p2, "input"    # Landroid/app/search/Query;
    .param p3, "callback"    # Landroid/app/search/ISearchCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist onRegisterEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V
    .registers 3
    .param p1, "sessionId"    # Landroid/app/search/SearchSessionId;
    .param p2, "callback"    # Landroid/app/search/ISearchCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist onUnregisterEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V
    .registers 3
    .param p1, "sessionId"    # Landroid/app/search/SearchSessionId;
    .param p2, "callback"    # Landroid/app/search/ISearchCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method
