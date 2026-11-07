.class public interface abstract Landroid/app/sdksandbox/IRequestSurfacePackageCallback;
.super Ljava/lang/Object;
.source "IRequestSurfacePackageCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/sdksandbox/IRequestSurfacePackageCallback$Stub;,
        Landroid/app/sdksandbox/IRequestSurfacePackageCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.sdksandbox.IRequestSurfacePackageCallback"


# virtual methods
.method public abstract blacklist onSurfacePackageError(ILjava/lang/String;Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSurfacePackageReady(Landroid/view/SurfaceControlViewHost$SurfacePackage;ILandroid/os/Bundle;Landroid/app/sdksandbox/SandboxLatencyInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
