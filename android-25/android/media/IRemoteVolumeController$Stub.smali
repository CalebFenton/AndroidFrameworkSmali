.class public abstract Landroid/media/IRemoteVolumeController$Stub;
.super Landroid/os/Binder;
.source "IRemoteVolumeController.java"

# interfaces
.implements Landroid/media/IRemoteVolumeController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IRemoteVolumeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IRemoteVolumeController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IRemoteVolumeController"

.field static final TRANSACTION_remoteVolumeChanged:I = 0x1

.field static final TRANSACTION_updateRemoteController:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 21
    const-string/jumbo v0, "android.media.IRemoteVolumeController"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/media/IRemoteVolumeController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteVolumeController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 29
    if-nez p0, :cond_0

    #@3
    .line 30
    return-object v1

    #@4
    .line 32
    :cond_0
    const-string/jumbo v1, "android.media.IRemoteVolumeController"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/media/IRemoteVolumeController;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 34
    check-cast v0, Landroid/media/IRemoteVolumeController;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/IRemoteVolumeController$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/media/IRemoteVolumeController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 44
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 48
    :sswitch_0
    const-string/jumbo v2, "android.media.IRemoteVolumeController"

    #@c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 49
    return v3

    #@10
    .line 53
    :sswitch_1
    const-string/jumbo v2, "android.media.IRemoteVolumeController"

    #@13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v2

    #@1a
    invoke-static {v2}, Landroid/media/session/ISessionController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionController;

    #@1d
    move-result-object v0

    #@1e
    .line 57
    .local v0, "_arg0":Landroid/media/session/ISessionController;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v1

    #@22
    .line 58
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/media/IRemoteVolumeController$Stub;->remoteVolumeChanged(Landroid/media/session/ISessionController;I)V

    #@25
    .line 59
    return v3

    #@26
    .line 63
    .end local v0    # "_arg0":Landroid/media/session/ISessionController;
    .end local v1    # "_arg1":I
    :sswitch_2
    const-string/jumbo v2, "android.media.IRemoteVolumeController"

    #@29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c
    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2f
    move-result-object v2

    #@30
    invoke-static {v2}, Landroid/media/session/ISessionController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionController;

    #@33
    move-result-object v0

    #@34
    .line 66
    .restart local v0    # "_arg0":Landroid/media/session/ISessionController;
    invoke-virtual {p0, v0}, Landroid/media/IRemoteVolumeController$Stub;->updateRemoteController(Landroid/media/session/ISessionController;)V

    #@37
    .line 67
    return v3

    #@38
    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
