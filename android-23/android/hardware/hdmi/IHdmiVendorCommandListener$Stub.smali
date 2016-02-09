.class public abstract Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub;
.super Landroid/os/Binder;
.source "IHdmiVendorCommandListener.java"

# interfaces
.implements Landroid/hardware/hdmi/IHdmiVendorCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/IHdmiVendorCommandListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.hdmi.IHdmiVendorCommandListener"

.field static final TRANSACTION_onControlStateChanged:I = 0x2

.field static final TRANSACTION_onReceived:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 21
    const-string/jumbo v0, "android.hardware.hdmi.IHdmiVendorCommandListener"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;
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
    const-string/jumbo v1, "android.hardware.hdmi.IHdmiVendorCommandListener"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 34
    check-cast v0, Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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
    const/4 v6, 0x1

    #@1
    .line 44
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v5

    #@8
    return v5

    #@9
    .line 48
    :sswitch_0
    const-string/jumbo v5, "android.hardware.hdmi.IHdmiVendorCommandListener"

    #@c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 49
    return v6

    #@10
    .line 53
    :sswitch_1
    const-string/jumbo v5, "android.hardware.hdmi.IHdmiVendorCommandListener"

    #@13
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    .line 57
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v2

    #@1e
    .line 59
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@21
    move-result-object v3

    #@22
    .line 61
    .local v3, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_0

    #@28
    const/4 v4, 0x1

    #@29
    .line 62
    .local v4, "_arg3":Z
    :goto_0
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub;->onReceived(II[BZ)V

    #@2c
    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f
    .line 64
    return v6

    #@30
    .line 61
    .end local v4    # "_arg3":Z
    :cond_0
    const/4 v4, 0x0

    #@31
    .restart local v4    # "_arg3":Z
    goto :goto_0

    #@32
    .line 68
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":Z
    :sswitch_2
    const-string/jumbo v5, "android.hardware.hdmi.IHdmiVendorCommandListener"

    #@35
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@38
    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v5

    #@3c
    if-eqz v5, :cond_1

    #@3e
    const/4 v1, 0x1

    #@3f
    .line 72
    .local v1, "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v2

    #@43
    .line 73
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub;->onControlStateChanged(ZI)V

    #@46
    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@49
    .line 75
    return v6

    #@4a
    .line 70
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    :cond_1
    const/4 v1, 0x0

    #@4b
    .restart local v1    # "_arg0":Z
    goto :goto_1

    #@4c
    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
