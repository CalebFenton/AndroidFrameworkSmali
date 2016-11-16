.class public abstract Landroid/hardware/location/IFusedLocationHardwareSink$Stub;
.super Landroid/os/Binder;
.source "IFusedLocationHardwareSink.java"

# interfaces
.implements Landroid/hardware/location/IFusedLocationHardwareSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IFusedLocationHardwareSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IFusedLocationHardwareSink$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IFusedLocationHardwareSink"

.field static final TRANSACTION_onCapabilities:I = 0x3

.field static final TRANSACTION_onDiagnosticDataAvailable:I = 0x2

.field static final TRANSACTION_onLocationAvailable:I = 0x1

.field static final TRANSACTION_onStatusChanged:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 21
    const-string/jumbo v0, "android.hardware.location.IFusedLocationHardwareSink"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IFusedLocationHardwareSink$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IFusedLocationHardwareSink;
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
    const-string/jumbo v1, "android.hardware.location.IFusedLocationHardwareSink"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/hardware/location/IFusedLocationHardwareSink;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 34
    check-cast v0, Landroid/hardware/location/IFusedLocationHardwareSink;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/location/IFusedLocationHardwareSink$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/hardware/location/IFusedLocationHardwareSink$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v4, 0x1

    #@1
    .line 44
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v3

    #@8
    return v3

    #@9
    .line 48
    :sswitch_0
    const-string/jumbo v3, "android.hardware.location.IFusedLocationHardwareSink"

    #@c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 49
    return v4

    #@10
    .line 53
    :sswitch_1
    const-string/jumbo v3, "android.hardware.location.IFusedLocationHardwareSink"

    #@13
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 55
    sget-object v3, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    #@18
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, [Landroid/location/Location;

    #@1e
    .line 56
    .local v2, "_arg0":[Landroid/location/Location;
    invoke-virtual {p0, v2}, Landroid/hardware/location/IFusedLocationHardwareSink$Stub;->onLocationAvailable([Landroid/location/Location;)V

    #@21
    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@24
    .line 58
    return v4

    #@25
    .line 62
    .end local v2    # "_arg0":[Landroid/location/Location;
    :sswitch_2
    const-string/jumbo v3, "android.hardware.location.IFusedLocationHardwareSink"

    #@28
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b
    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .line 65
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/location/IFusedLocationHardwareSink$Stub;->onDiagnosticDataAvailable(Ljava/lang/String;)V

    #@32
    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@35
    .line 67
    return v4

    #@36
    .line 71
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v3, "android.hardware.location.IFusedLocationHardwareSink"

    #@39
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c
    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v0

    #@40
    .line 74
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/location/IFusedLocationHardwareSink$Stub;->onCapabilities(I)V

    #@43
    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@46
    .line 76
    return v4

    #@47
    .line 80
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string/jumbo v3, "android.hardware.location.IFusedLocationHardwareSink"

    #@4a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d
    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@50
    move-result v0

    #@51
    .line 83
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/location/IFusedLocationHardwareSink$Stub;->onStatusChanged(I)V

    #@54
    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@57
    .line 85
    return v4

    #@58
    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
