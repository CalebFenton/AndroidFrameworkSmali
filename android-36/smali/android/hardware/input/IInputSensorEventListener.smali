.class public interface abstract Landroid/hardware/input/IInputSensorEventListener;
.super Ljava/lang/Object;
.source "IInputSensorEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IInputSensorEventListener$Stub;,
        Landroid/hardware/input/IInputSensorEventListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IInputSensorEventListener"


# virtual methods
.method public abstract blacklist onInputSensorAccuracyChanged(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onInputSensorChanged(IIIJ[F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
