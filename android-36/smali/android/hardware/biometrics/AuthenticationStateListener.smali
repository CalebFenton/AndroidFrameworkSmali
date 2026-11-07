.class public interface abstract Landroid/hardware/biometrics/AuthenticationStateListener;
.super Ljava/lang/Object;
.source "AuthenticationStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/AuthenticationStateListener$Stub;,
        Landroid/hardware/biometrics/AuthenticationStateListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.biometrics.AuthenticationStateListener"


# virtual methods
.method public abstract blacklist onAuthenticationAcquired(Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onAuthenticationError(Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onAuthenticationFailed(Landroid/hardware/biometrics/events/AuthenticationFailedInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onAuthenticationHelp(Landroid/hardware/biometrics/events/AuthenticationHelpInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onAuthenticationStarted(Landroid/hardware/biometrics/events/AuthenticationStartedInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onAuthenticationSucceeded(Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
