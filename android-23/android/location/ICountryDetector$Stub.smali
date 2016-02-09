.class public abstract Landroid/location/ICountryDetector$Stub;
.super Landroid/os/Binder;
.source "ICountryDetector.java"

# interfaces
.implements Landroid/location/ICountryDetector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ICountryDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ICountryDetector$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.ICountryDetector"

.field static final TRANSACTION_addCountryListener:I = 0x2

.field static final TRANSACTION_detectCountry:I = 0x1

.field static final TRANSACTION_removeCountryListener:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.location.ICountryDetector"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/location/ICountryDetector$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/ICountryDetector;
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
    const-string/jumbo v1, "android.location.ICountryDetector"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/location/ICountryDetector;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/location/ICountryDetector;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/location/ICountryDetector$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/location/ICountryDetector$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 47
    :sswitch_0
    const-string/jumbo v2, "android.location.ICountryDetector"

    #@c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 48
    return v3

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v2, "android.location.ICountryDetector"

    #@13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 53
    invoke-virtual {p0}, Landroid/location/ICountryDetector$Stub;->detectCountry()Landroid/location/Country;

    #@19
    move-result-object v1

    #@1a
    .line 54
    .local v1, "_result":Landroid/location/Country;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d
    .line 55
    if-eqz v1, :cond_0

    #@1f
    .line 56
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 57
    invoke-virtual {v1, p3, v3}, Landroid/location/Country;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 62
    :goto_0
    return v3

    #@26
    .line 60
    :cond_0
    const/4 v2, 0x0

    #@27
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    goto :goto_0

    #@2b
    .line 66
    .end local v1    # "_result":Landroid/location/Country;
    :sswitch_2
    const-string/jumbo v2, "android.location.ICountryDetector"

    #@2e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31
    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@34
    move-result-object v2

    #@35
    invoke-static {v2}, Landroid/location/ICountryListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ICountryListener;

    #@38
    move-result-object v0

    #@39
    .line 69
    .local v0, "_arg0":Landroid/location/ICountryListener;
    invoke-virtual {p0, v0}, Landroid/location/ICountryDetector$Stub;->addCountryListener(Landroid/location/ICountryListener;)V

    #@3c
    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3f
    .line 71
    return v3

    #@40
    .line 75
    .end local v0    # "_arg0":Landroid/location/ICountryListener;
    :sswitch_3
    const-string/jumbo v2, "android.location.ICountryDetector"

    #@43
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@46
    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@49
    move-result-object v2

    #@4a
    invoke-static {v2}, Landroid/location/ICountryListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ICountryListener;

    #@4d
    move-result-object v0

    #@4e
    .line 78
    .restart local v0    # "_arg0":Landroid/location/ICountryListener;
    invoke-virtual {p0, v0}, Landroid/location/ICountryDetector$Stub;->removeCountryListener(Landroid/location/ICountryListener;)V

    #@51
    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@54
    .line 80
    return v3

    #@55
    .line 43
    nop

    #@56
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
