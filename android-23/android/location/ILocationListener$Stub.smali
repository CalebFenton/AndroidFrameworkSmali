.class public abstract Landroid/location/ILocationListener$Stub;
.super Landroid/os/Binder;
.source "ILocationListener.java"

# interfaces
.implements Landroid/location/ILocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.ILocationListener"

.field static final TRANSACTION_onLocationChanged:I = 0x1

.field static final TRANSACTION_onProviderDisabled:I = 0x4

.field static final TRANSACTION_onProviderEnabled:I = 0x3

.field static final TRANSACTION_onStatusChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.location.ILocationListener"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/location/ILocationListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 26
    if-nez p0, :cond_0

    #@3
    .line 27
    return-object v1

    #@4
    .line 29
    :cond_0
    const-string/jumbo v1, "android.location.ILocationListener"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/location/ILocationListener;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/location/ILocationListener;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/location/ILocationListener$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/location/ILocationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v5, 0x1

    #@1
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v4

    #@8
    return v4

    #@9
    .line 45
    :sswitch_0
    const-string/jumbo v4, "android.location.ILocationListener"

    #@c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 46
    return v5

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v4, "android.location.ILocationListener"

    #@13
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_0

    #@1c
    .line 53
    sget-object v4, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/location/Location;

    #@24
    .line 58
    :goto_0
    invoke-virtual {p0, v0}, Landroid/location/ILocationListener$Stub;->onLocationChanged(Landroid/location/Location;)V

    #@27
    .line 59
    return v5

    #@28
    .line 56
    :cond_0
    const/4 v0, 0x0

    #@29
    .local v0, "_arg0":Landroid/location/Location;
    goto :goto_0

    #@2a
    .line 63
    .end local v0    # "_arg0":Landroid/location/Location;
    :sswitch_2
    const-string/jumbo v4, "android.location.ILocationListener"

    #@2d
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30
    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    .line 67
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v2

    #@38
    .line 69
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_1

    #@3e
    .line 70
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@40
    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@43
    move-result-object v3

    #@44
    check-cast v3, Landroid/os/Bundle;

    #@46
    .line 75
    :goto_1
    invoke-virtual {p0, v1, v2, v3}, Landroid/location/ILocationListener$Stub;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    #@49
    .line 76
    return v5

    #@4a
    .line 73
    :cond_1
    const/4 v3, 0x0

    #@4b
    .local v3, "_arg2":Landroid/os/Bundle;
    goto :goto_1

    #@4c
    .line 80
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :sswitch_3
    const-string/jumbo v4, "android.location.ILocationListener"

    #@4f
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@52
    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    .line 83
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/location/ILocationListener$Stub;->onProviderEnabled(Ljava/lang/String;)V

    #@59
    .line 84
    return v5

    #@5a
    .line 88
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v4, "android.location.ILocationListener"

    #@5d
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@60
    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    .line 91
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/location/ILocationListener$Stub;->onProviderDisabled(Ljava/lang/String;)V

    #@67
    .line 92
    return v5

    #@68
    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
