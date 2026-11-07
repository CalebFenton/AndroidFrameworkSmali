.class public Landroid/hardware/biometrics/AuthenticationStateListener$Default;
.super Ljava/lang/Object;
.source "AuthenticationStateListener.java"

# interfaces
.implements Landroid/hardware/biometrics/AuthenticationStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/AuthenticationStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onAuthenticationAcquired(Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;)V
    .registers 2
    .param p1, "authInfo"    # Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist onAuthenticationError(Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V
    .registers 2
    .param p1, "authInfo"    # Landroid/hardware/biometrics/events/AuthenticationErrorInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist onAuthenticationFailed(Landroid/hardware/biometrics/events/AuthenticationFailedInfo;)V
    .registers 2
    .param p1, "authInfo"    # Landroid/hardware/biometrics/events/AuthenticationFailedInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist onAuthenticationHelp(Landroid/hardware/biometrics/events/AuthenticationHelpInfo;)V
    .registers 2
    .param p1, "authInfo"    # Landroid/hardware/biometrics/events/AuthenticationHelpInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist onAuthenticationStarted(Landroid/hardware/biometrics/events/AuthenticationStartedInfo;)V
    .registers 2
    .param p1, "authInfo"    # Landroid/hardware/biometrics/events/AuthenticationStartedInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public blacklist onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V
    .registers 2
    .param p1, "authInfo"    # Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public blacklist onAuthenticationSucceeded(Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;)V
    .registers 2
    .param p1, "authInfo"    # Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    return-void
.end method
