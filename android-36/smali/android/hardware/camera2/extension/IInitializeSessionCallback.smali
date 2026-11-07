.class public interface abstract Landroid/hardware/camera2/extension/IInitializeSessionCallback;
.super Ljava/lang/Object;
.source "IInitializeSessionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/IInitializeSessionCallback$Stub;,
        Landroid/hardware/camera2/extension/IInitializeSessionCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.camera2.extension.IInitializeSessionCallback"


# virtual methods
.method public abstract blacklist onFailure()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
