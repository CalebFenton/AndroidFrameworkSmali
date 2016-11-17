.class public abstract Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;
.super Landroid/os/Binder;
.source "IWifiNanSessionListener.java"

# interfaces
.implements Landroid/net/wifi/nan/IWifiNanSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/IWifiNanSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nan/IWifiNanSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.nan.IWifiNanSessionListener"

.field static final TRANSACTION_onMatch:I = 0x5

.field static final TRANSACTION_onMessageReceived:I = 0x8

.field static final TRANSACTION_onMessageSendFail:I = 0x7

.field static final TRANSACTION_onMessageSendSuccess:I = 0x6

.field static final TRANSACTION_onPublishFail:I = 0x1

.field static final TRANSACTION_onPublishTerminated:I = 0x2

.field static final TRANSACTION_onSubscribeFail:I = 0x3

.field static final TRANSACTION_onSubscribeTerminated:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.net.wifi.nan.IWifiNanSessionListener"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nan/IWifiNanSessionListener;
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
    const-string/jumbo v1, "android.net.wifi.nan.IWifiNanSessionListener"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/net/wifi/nan/IWifiNanSessionListener;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/net/wifi/nan/IWifiNanSessionListener;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v7, 0x1

    #@1
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 47
    :sswitch_0
    const-string/jumbo v0, "android.net.wifi.nan.IWifiNanSessionListener"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 48
    return v7

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v0, "android.net.wifi.nan.IWifiNanSessionListener"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v1

    #@1a
    .line 55
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;->onPublishFail(I)V

    #@1d
    .line 56
    return v7

    #@1e
    .line 60
    .end local v1    # "_arg0":I
    :sswitch_2
    const-string/jumbo v0, "android.net.wifi.nan.IWifiNanSessionListener"

    #@21
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24
    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v1

    #@28
    .line 63
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;->onPublishTerminated(I)V

    #@2b
    .line 64
    return v7

    #@2c
    .line 68
    .end local v1    # "_arg0":I
    :sswitch_3
    const-string/jumbo v0, "android.net.wifi.nan.IWifiNanSessionListener"

    #@2f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32
    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v1

    #@36
    .line 71
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;->onSubscribeFail(I)V

    #@39
    .line 72
    return v7

    #@3a
    .line 76
    .end local v1    # "_arg0":I
    :sswitch_4
    const-string/jumbo v0, "android.net.wifi.nan.IWifiNanSessionListener"

    #@3d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@40
    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@43
    move-result v1

    #@44
    .line 79
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;->onSubscribeTerminated(I)V

    #@47
    .line 80
    return v7

    #@48
    .line 84
    .end local v1    # "_arg0":I
    :sswitch_5
    const-string/jumbo v0, "android.net.wifi.nan.IWifiNanSessionListener"

    #@4b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4e
    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v1

    #@52
    .line 88
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@55
    move-result-object v2

    #@56
    .line 90
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@59
    move-result v3

    #@5a
    .line 92
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@5d
    move-result-object v4

    #@5e
    .line 94
    .local v4, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@61
    move-result v5

    #@62
    .local v5, "_arg4":I
    move-object v0, p0

    #@63
    .line 95
    invoke-virtual/range {v0 .. v5}, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;->onMatch(I[BI[BI)V

    #@66
    .line 96
    return v7

    #@67
    .line 100
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":I
    :sswitch_6
    const-string/jumbo v0, "android.net.wifi.nan.IWifiNanSessionListener"

    #@6a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6d
    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@70
    move-result v1

    #@71
    .line 103
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;->onMessageSendSuccess(I)V

    #@74
    .line 104
    return v7

    #@75
    .line 108
    .end local v1    # "_arg0":I
    :sswitch_7
    const-string/jumbo v0, "android.net.wifi.nan.IWifiNanSessionListener"

    #@78
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7b
    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7e
    move-result v1

    #@7f
    .line 112
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@82
    move-result v6

    #@83
    .line 113
    .local v6, "_arg1":I
    invoke-virtual {p0, v1, v6}, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;->onMessageSendFail(II)V

    #@86
    .line 114
    return v7

    #@87
    .line 118
    .end local v1    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_8
    const-string/jumbo v0, "android.net.wifi.nan.IWifiNanSessionListener"

    #@8a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8d
    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@90
    move-result v1

    #@91
    .line 122
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@94
    move-result-object v2

    #@95
    .line 124
    .restart local v2    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@98
    move-result v3

    #@99
    .line 125
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/nan/IWifiNanSessionListener$Stub;->onMessageReceived(I[BI)V

    #@9c
    .line 126
    return v7

    #@9d
    .line 43
    nop

    #@9e
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
