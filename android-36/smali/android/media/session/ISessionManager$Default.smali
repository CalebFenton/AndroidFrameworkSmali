.class public Landroid/media/session/ISessionManager$Default;
.super Ljava/lang/Object;
.source "ISessionManager.java"

# interfaces
.implements Landroid/media/session/ISessionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addOnMediaKeyEventDispatchedListener(Landroid/media/session/IOnMediaKeyEventDispatchedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/session/IOnMediaKeyEventDispatchedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    return-void
.end method

.method public blacklist addOnMediaKeyEventSessionChangedListener(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;Ljava/lang/String;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/session/IOnMediaKeyEventSessionChangedListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    return-void
.end method

.method public blacklist addSession2TokensListener(Landroid/media/session/ISession2TokensListener;I)V
    .registers 3
    .param p1, "listener"    # Landroid/media/session/ISession2TokensListener;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public blacklist addSessionsListener(Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;I)V
    .registers 4
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;
    .param p2, "compName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createSession(Ljava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/media/session/ISession;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "sessionCb"    # Landroid/media/session/ISessionCallback;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "sessionInfo"    # Landroid/os/Bundle;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist dispatchAdjustVolume(Ljava/lang/String;Ljava/lang/String;III)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "suggestedStream"    # I
    .param p4, "delta"    # I
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist dispatchMediaKeyEvent(Ljava/lang/String;ZLandroid/view/KeyEvent;Z)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "asSystemService"    # Z
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;
    .param p4, "needWakeLock"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist dispatchMediaKeyEventToSessionAsSystemService(Ljava/lang/String;Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;
    .param p3, "sessionToken"    # Landroid/media/session/MediaSession$Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dispatchVolumeKeyEvent(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/KeyEvent;IZ)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "asSystemService"    # Z
    .param p4, "keyEvent"    # Landroid/view/KeyEvent;
    .param p5, "stream"    # I
    .param p6, "musicOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist dispatchVolumeKeyEventToSessionAsSystemService(Ljava/lang/String;Ljava/lang/String;Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;
    .param p4, "sessionToken"    # Landroid/media/session/MediaSession$Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public blacklist expireTempEngagedSessions()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    return-void
.end method

.method public blacklist getMediaKeyEventSession(Ljava/lang/String;)Landroid/media/session/MediaSession$Token;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMediaKeyEventSessionPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSessionPolicies(Landroid/media/session/MediaSession$Token;)I
    .registers 3
    .param p1, "token"    # Landroid/media/session/MediaSession$Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSessions(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 4
    .param p1, "compName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$Token;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasCustomMediaKeyDispatcher(Ljava/lang/String;)Z
    .registers 3
    .param p1, "componentName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasCustomMediaSessionPolicyProvider(Ljava/lang/String;)Z
    .registers 3
    .param p1, "componentName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isGlobalPriorityActive()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isTrusted(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "controllerPackageName"    # Ljava/lang/String;
    .param p2, "controllerPid"    # I
    .param p3, "controllerUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerRemoteSessionCallback(Landroid/media/IRemoteSessionCallback;)V
    .registers 2
    .param p1, "rvc"    # Landroid/media/IRemoteSessionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public blacklist removeOnMediaKeyEventDispatchedListener(Landroid/media/session/IOnMediaKeyEventDispatchedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/session/IOnMediaKeyEventDispatchedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    return-void
.end method

.method public blacklist removeOnMediaKeyEventSessionChangedListener(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/session/IOnMediaKeyEventSessionChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    return-void
.end method

.method public blacklist removeSession2TokensListener(Landroid/media/session/ISession2TokensListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/session/ISession2TokensListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public blacklist removeSessionsListener(Landroid/media/session/IActiveSessionsListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist setCustomMediaKeyDispatcher(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    return-void
.end method

.method public blacklist setCustomMediaSessionPolicyProvider(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    return-void
.end method

.method public blacklist setOnMediaKeyListener(Landroid/media/session/IOnMediaKeyListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/session/IOnMediaKeyListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    return-void
.end method

.method public blacklist setOnVolumeKeyLongPressListener(Landroid/media/session/IOnVolumeKeyLongPressListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/media/session/IOnVolumeKeyLongPressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    return-void
.end method

.method public blacklist setSessionPolicies(Landroid/media/session/MediaSession$Token;I)V
    .registers 3
    .param p1, "token"    # Landroid/media/session/MediaSession$Token;
    .param p2, "policies"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    return-void
.end method

.method public blacklist unregisterRemoteSessionCallback(Landroid/media/IRemoteSessionCallback;)V
    .registers 2
    .param p1, "rvc"    # Landroid/media/IRemoteSessionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method
