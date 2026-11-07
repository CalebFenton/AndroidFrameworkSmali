.class public interface abstract Landroid/hardware/camera2/ICameraInjectionCallback;
.super Ljava/lang/Object;
.source "ICameraInjectionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/ICameraInjectionCallback$Stub;,
        Landroid/hardware/camera2/ICameraInjectionCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.camera2.ICameraInjectionCallback"

.field public static final blacklist ERROR_INJECTION_INVALID_ERROR:I = -0x1

.field public static final blacklist ERROR_INJECTION_SERVICE:I = 0x1

.field public static final blacklist ERROR_INJECTION_SESSION:I = 0x0

.field public static final blacklist ERROR_INJECTION_UNSUPPORTED:I = 0x2


# virtual methods
.method public abstract blacklist onInjectionError(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
