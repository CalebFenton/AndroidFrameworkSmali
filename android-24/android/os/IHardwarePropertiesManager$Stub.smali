.class public abstract Landroid/os/IHardwarePropertiesManager$Stub;
.super Landroid/os/Binder;
.source "IHardwarePropertiesManager.java"

# interfaces
.implements Landroid/os/IHardwarePropertiesManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IHardwarePropertiesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IHardwarePropertiesManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IHardwarePropertiesManager"

.field static final TRANSACTION_getCpuUsages:I = 0x2

.field static final TRANSACTION_getDeviceTemperatures:I = 0x1

.field static final TRANSACTION_getFanSpeeds:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.os.IHardwarePropertiesManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/IHardwarePropertiesManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IHardwarePropertiesManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 24
    if-nez p0, :cond_0

    #@3
    .line 25
    return-object v1

    #@4
    .line 27
    :cond_0
    const-string/jumbo v1, "android.os.IHardwarePropertiesManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/os/IHardwarePropertiesManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/os/IHardwarePropertiesManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/IHardwarePropertiesManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/os/IHardwarePropertiesManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 35
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v5

    #@8
    return v5

    #@9
    .line 43
    :sswitch_0
    const-string/jumbo v5, "android.os.IHardwarePropertiesManager"

    #@c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 44
    return v6

    #@10
    .line 48
    :sswitch_1
    const-string/jumbo v5, "android.os.IHardwarePropertiesManager"

    #@13
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 52
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v1

    #@1e
    .line 54
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v2

    #@22
    .line 55
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/IHardwarePropertiesManager$Stub;->getDeviceTemperatures(Ljava/lang/String;II)[F

    #@25
    move-result-object v3

    #@26
    .line 56
    .local v3, "_result":[F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@29
    .line 57
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeFloatArray([F)V

    #@2c
    .line 58
    return v6

    #@2d
    .line 62
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":[F
    :sswitch_2
    const-string/jumbo v5, "android.os.IHardwarePropertiesManager"

    #@30
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@33
    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    .line 65
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IHardwarePropertiesManager$Stub;->getCpuUsages(Ljava/lang/String;)[Landroid/os/CpuUsageInfo;

    #@3a
    move-result-object v4

    #@3b
    .line 66
    .local v4, "_result":[Landroid/os/CpuUsageInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e
    .line 67
    invoke-virtual {p3, v4, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@41
    .line 68
    return v6

    #@42
    .line 72
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":[Landroid/os/CpuUsageInfo;
    :sswitch_3
    const-string/jumbo v5, "android.os.IHardwarePropertiesManager"

    #@45
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48
    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    .line 75
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IHardwarePropertiesManager$Stub;->getFanSpeeds(Ljava/lang/String;)[F

    #@4f
    move-result-object v3

    #@50
    .line 76
    .restart local v3    # "_result":[F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@53
    .line 77
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeFloatArray([F)V

    #@56
    .line 78
    return v6

    #@57
    .line 39
    nop

    #@58
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
