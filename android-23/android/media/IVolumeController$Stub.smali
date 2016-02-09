.class public abstract Landroid/media/IVolumeController$Stub;
.super Landroid/os/Binder;
.source "IVolumeController.java"

# interfaces
.implements Landroid/media/IVolumeController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IVolumeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IVolumeController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IVolumeController"

.field static final TRANSACTION_dismiss:I = 0x5

.field static final TRANSACTION_displaySafeVolumeWarning:I = 0x1

.field static final TRANSACTION_masterMuteChanged:I = 0x3

.field static final TRANSACTION_setLayoutDirection:I = 0x4

.field static final TRANSACTION_volumeChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.media.IVolumeController"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/media/IVolumeController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 28
    if-nez p0, :cond_0

    #@3
    .line 29
    return-object v1

    #@4
    .line 31
    :cond_0
    const-string/jumbo v1, "android.media.IVolumeController"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/media/IVolumeController;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/media/IVolumeController;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/IVolumeController$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/media/IVolumeController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 39
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 47
    :sswitch_0
    const-string/jumbo v2, "android.media.IVolumeController"

    #@c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 48
    return v3

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v2, "android.media.IVolumeController"

    #@13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    .line 55
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/IVolumeController$Stub;->displaySafeVolumeWarning(I)V

    #@1d
    .line 56
    return v3

    #@1e
    .line 60
    .end local v0    # "_arg0":I
    :sswitch_2
    const-string/jumbo v2, "android.media.IVolumeController"

    #@21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24
    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v0

    #@28
    .line 64
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v1

    #@2c
    .line 65
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/media/IVolumeController$Stub;->volumeChanged(II)V

    #@2f
    .line 66
    return v3

    #@30
    .line 70
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_3
    const-string/jumbo v2, "android.media.IVolumeController"

    #@33
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@36
    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v0

    #@3a
    .line 73
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/IVolumeController$Stub;->masterMuteChanged(I)V

    #@3d
    .line 74
    return v3

    #@3e
    .line 78
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string/jumbo v2, "android.media.IVolumeController"

    #@41
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@44
    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v0

    #@48
    .line 81
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/IVolumeController$Stub;->setLayoutDirection(I)V

    #@4b
    .line 82
    return v3

    #@4c
    .line 86
    .end local v0    # "_arg0":I
    :sswitch_5
    const-string/jumbo v2, "android.media.IVolumeController"

    #@4f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@52
    .line 87
    invoke-virtual {p0}, Landroid/media/IVolumeController$Stub;->dismiss()V

    #@55
    .line 88
    return v3

    #@56
    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
