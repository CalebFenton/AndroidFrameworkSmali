.class public interface abstract Landroid/os/IExternalVibratorService;
.super Ljava/lang/Object;
.source "IExternalVibratorService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IExternalVibratorService$Stub;,
        Landroid/os/IExternalVibratorService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.IExternalVibratorService"


# virtual methods
.method public abstract blacklist onExternalVibrationStart(Landroid/os/ExternalVibration;)Landroid/os/ExternalVibrationScale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onExternalVibrationStop(Landroid/os/ExternalVibration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
