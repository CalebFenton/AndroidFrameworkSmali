.class public interface abstract Landroid/os/IDeviceIdentifiersPolicyService;
.super Ljava/lang/Object;
.source "IDeviceIdentifiersPolicyService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDeviceIdentifiersPolicyService$Stub;,
        Landroid/os/IDeviceIdentifiersPolicyService$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o getSerial()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSerialForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
