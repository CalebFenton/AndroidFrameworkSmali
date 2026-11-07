.class public interface abstract Landroid/os/vibrator/IVibrationSession;
.super Ljava/lang/Object;
.source "IVibrationSession.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/vibrator/IVibrationSession$Stub;,
        Landroid/os/vibrator/IVibrationSession$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.vibrator.IVibrationSession"

.field public static final blacklist STATUS_CANCELED:I = 0x4

.field public static final blacklist STATUS_IGNORED:I = 0x2

.field public static final blacklist STATUS_SUCCESS:I = 0x1

.field public static final blacklist STATUS_UNKNOWN:I = 0x0

.field public static final blacklist STATUS_UNKNOWN_ERROR:I = 0x5

.field public static final blacklist STATUS_UNSUPPORTED:I = 0x3


# virtual methods
.method public abstract blacklist cancelSession()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist finishSession()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist vibrate(Landroid/os/CombinedVibration;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
