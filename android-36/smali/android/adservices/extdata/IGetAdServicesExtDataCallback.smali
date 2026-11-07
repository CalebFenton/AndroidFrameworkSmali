.class public interface abstract Landroid/adservices/extdata/IGetAdServicesExtDataCallback;
.super Ljava/lang/Object;
.source "IGetAdServicesExtDataCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/extdata/IGetAdServicesExtDataCallback$Stub;,
        Landroid/adservices/extdata/IGetAdServicesExtDataCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.extdata.IGetAdServicesExtDataCallback"


# virtual methods
.method public abstract blacklist onError(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onResult(Landroid/adservices/extdata/GetAdServicesExtDataResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
