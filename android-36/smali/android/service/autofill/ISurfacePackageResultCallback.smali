.class public interface abstract Landroid/service/autofill/ISurfacePackageResultCallback;
.super Ljava/lang/Object;
.source "ISurfacePackageResultCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/ISurfacePackageResultCallback$Stub;,
        Landroid/service/autofill/ISurfacePackageResultCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.autofill.ISurfacePackageResultCallback"


# virtual methods
.method public abstract blacklist onResult(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
