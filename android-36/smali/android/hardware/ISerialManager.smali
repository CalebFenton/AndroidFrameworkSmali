.class public interface abstract Landroid/hardware/ISerialManager;
.super Ljava/lang/Object;
.source "ISerialManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ISerialManager$Stub;,
        Landroid/hardware/ISerialManager$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o getSerialPorts()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o openSerialPort(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
