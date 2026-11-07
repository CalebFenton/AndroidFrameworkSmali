.class public Landroid/app/search/ISearchUiManager$Default;
.super Ljava/lang/Object;
.source "ISearchUiManager.java"

# interfaces
.implements Landroid/app/search/ISearchUiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/search/ISearchUiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createSearchSession(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "context"    # Landroid/app/search/SearchContext;
    .param p2, "sessionId"    # Landroid/app/search/SearchSessionId;
    .param p3, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist destroySearchSession(Landroid/app/search/SearchSessionId;)V
    .registers 2
    .param p1, "sessionId"    # Landroid/app/search/SearchSessionId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist notifyEvent(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V
    .registers 4
    .param p1, "sessionId"    # Landroid/app/search/SearchSessionId;
    .param p2, "input"    # Landroid/app/search/Query;
    .param p3, "event"    # Landroid/app/search/SearchTargetEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist query(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;)V
    .registers 4
    .param p1, "sessionId"    # Landroid/app/search/SearchSessionId;
    .param p2, "input"    # Landroid/app/search/Query;
    .param p3, "callback"    # Landroid/app/search/ISearchCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist registerEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V
    .registers 3
    .param p1, "sessionId"    # Landroid/app/search/SearchSessionId;
    .param p2, "callback"    # Landroid/app/search/ISearchCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist unregisterEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V
    .registers 3
    .param p1, "sessionId"    # Landroid/app/search/SearchSessionId;
    .param p2, "callback"    # Landroid/app/search/ISearchCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method
