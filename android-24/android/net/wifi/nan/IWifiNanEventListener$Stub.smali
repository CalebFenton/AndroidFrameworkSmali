.class public abstract Landroid/net/wifi/nan/IWifiNanEventListener$Stub;
.super Landroid/os/Binder;
.source "IWifiNanEventListener.java"

# interfaces
.implements Landroid/net/wifi/nan/IWifiNanEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/IWifiNanEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nan/IWifiNanEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.nan.IWifiNanEventListener"

.field static final TRANSACTION_onConfigCompleted:I = 0x1

.field static final TRANSACTION_onConfigFailed:I = 0x2

.field static final TRANSACTION_onIdentityChanged:I = 0x4

.field static final TRANSACTION_onNanDown:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.net.wifi.nan.IWifiNanEventListener"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nan/IWifiNanEventListener;
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
    const-string/jumbo v1, "android.net.wifi.nan.IWifiNanEventListener"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/net/wifi/nan/IWifiNanEventListener;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/net/wifi/nan/IWifiNanEventListener;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/wifi/nan/IWifiNanEventListener$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/net/wifi/nan/IWifiNanEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v3

    #@8
    return v3

    #@9
    .line 47
    :sswitch_0
    const-string/jumbo v3, "android.net.wifi.nan.IWifiNanEventListener"

    #@c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 48
    return v4

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v3, "android.net.wifi.nan.IWifiNanEventListener"

    #@13
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_0

    #@1c
    .line 55
    sget-object v3, Landroid/net/wifi/nan/ConfigRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Landroid/net/wifi/nan/ConfigRequest;

    #@24
    .line 60
    :goto_0
    invoke-virtual {p0, v1}, Landroid/net/wifi/nan/IWifiNanEventListener$Stub;->onConfigCompleted(Landroid/net/wifi/nan/ConfigRequest;)V

    #@27
    .line 61
    return v4

    #@28
    .line 58
    :cond_0
    const/4 v1, 0x0

    #@29
    .local v1, "_arg0":Landroid/net/wifi/nan/ConfigRequest;
    goto :goto_0

    #@2a
    .line 65
    .end local v1    # "_arg0":Landroid/net/wifi/nan/ConfigRequest;
    :sswitch_2
    const-string/jumbo v3, "android.net.wifi.nan.IWifiNanEventListener"

    #@2d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30
    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_1

    #@36
    .line 68
    sget-object v3, Landroid/net/wifi/nan/ConfigRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@38
    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3b
    move-result-object v1

    #@3c
    check-cast v1, Landroid/net/wifi/nan/ConfigRequest;

    #@3e
    .line 74
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@41
    move-result v2

    #@42
    .line 75
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/nan/IWifiNanEventListener$Stub;->onConfigFailed(Landroid/net/wifi/nan/ConfigRequest;I)V

    #@45
    .line 76
    return v4

    #@46
    .line 71
    .end local v2    # "_arg1":I
    :cond_1
    const/4 v1, 0x0

    #@47
    .restart local v1    # "_arg0":Landroid/net/wifi/nan/ConfigRequest;
    goto :goto_1

    #@48
    .line 80
    .end local v1    # "_arg0":Landroid/net/wifi/nan/ConfigRequest;
    :sswitch_3
    const-string/jumbo v3, "android.net.wifi.nan.IWifiNanEventListener"

    #@4b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4e
    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v0

    #@52
    .line 83
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/nan/IWifiNanEventListener$Stub;->onNanDown(I)V

    #@55
    .line 84
    return v4

    #@56
    .line 88
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string/jumbo v3, "android.net.wifi.nan.IWifiNanEventListener"

    #@59
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5c
    .line 89
    invoke-virtual {p0}, Landroid/net/wifi/nan/IWifiNanEventListener$Stub;->onIdentityChanged()V

    #@5f
    .line 90
    return v4

    #@60
    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
