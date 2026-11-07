.class public interface abstract Landroid/adservices/ondevicepersonalization/aidl/IRequestSurfacePackageCallback;
.super Ljava/lang/Object;
.source "IRequestSurfacePackageCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/aidl/IRequestSurfacePackageCallback$Stub;,
        Landroid/adservices/ondevicepersonalization/aidl/IRequestSurfacePackageCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.ondevicepersonalization.aidl.IRequestSurfacePackageCallback"


# virtual methods
.method public abstract blacklist onError(II[BLandroid/adservices/ondevicepersonalization/CalleeMetadata;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess(Landroid/view/SurfaceControlViewHost$SurfacePackage;Landroid/adservices/ondevicepersonalization/CalleeMetadata;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
