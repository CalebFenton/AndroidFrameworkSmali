.class public interface abstract Landroid/adservices/extdata/IAdServicesExtDataStorageService;
.super Ljava/lang/Object;
.source "IAdServicesExtDataStorageService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/extdata/IAdServicesExtDataStorageService$Stub;,
        Landroid/adservices/extdata/IAdServicesExtDataStorageService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.extdata.IAdServicesExtDataStorageService"


# virtual methods
.method public abstract blacklist getAdServicesExtData(Landroid/adservices/extdata/IGetAdServicesExtDataCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist putAdServicesExtData(Landroid/adservices/extdata/AdServicesExtDataParams;[ILandroid/adservices/extdata/IGetAdServicesExtDataCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
