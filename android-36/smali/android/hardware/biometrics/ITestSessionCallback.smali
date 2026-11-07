.class public interface abstract Landroid/hardware/biometrics/ITestSessionCallback;
.super Ljava/lang/Object;
.source "ITestSessionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/ITestSessionCallback$Stub;,
        Landroid/hardware/biometrics/ITestSessionCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.biometrics.ITestSessionCallback"


# virtual methods
.method public abstract blacklist onCleanupFinished(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onCleanupStarted(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
