.class public interface abstract Landroid/os/vibrator/IVibrationSessionCallback;
.super Ljava/lang/Object;
.source "IVibrationSessionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/vibrator/IVibrationSessionCallback$Stub;,
        Landroid/os/vibrator/IVibrationSessionCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.vibrator.IVibrationSessionCallback"


# virtual methods
.method public abstract blacklist onFinished(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onFinishing()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onStarted(Landroid/os/vibrator/IVibrationSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
