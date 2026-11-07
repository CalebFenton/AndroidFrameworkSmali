.class public interface abstract Landroid/hardware/ICameraServiceListener;
.super Ljava/lang/Object;
.source "ICameraServiceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ICameraServiceListener$Stub;,
        Landroid/hardware/ICameraServiceListener$Default;
    }
.end annotation


# static fields
.field public static final greylist-max-o STATUS_ENUMERATING:I = 0x2

.field public static final greylist-max-o STATUS_NOT_AVAILABLE:I = -0x2

.field public static final greylist-max-o STATUS_NOT_PRESENT:I = 0x0

.field public static final greylist-max-o STATUS_PRESENT:I = 0x1

.field public static final greylist-max-o STATUS_UNKNOWN:I = -0x1

.field public static final greylist-max-o TORCH_STATUS_AVAILABLE_OFF:I = 0x1

.field public static final greylist-max-o TORCH_STATUS_AVAILABLE_ON:I = 0x2

.field public static final greylist-max-o TORCH_STATUS_NOT_AVAILABLE:I = 0x0

.field public static final greylist-max-o TORCH_STATUS_UNKNOWN:I = -0x1


# virtual methods
.method public abstract blacklist onCameraAccessPrioritiesChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onCameraClosed(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onCameraOpened(Ljava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onCameraOpenedInSharedMode(Ljava/lang/String;Ljava/lang/String;IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onPhysicalCameraStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onStatusChanged(ILjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onTorchStatusChanged(ILjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onTorchStrengthLevelChanged(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
