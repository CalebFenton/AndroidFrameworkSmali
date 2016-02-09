.class public abstract Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub;
.super Landroid/os/Binder;
.source "IWifiPasspointManager.java"

# interfaces
.implements Landroid/net/wifi/passpoint/IWifiPasspointManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/passpoint/IWifiPasspointManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.passpoint.IWifiPasspointManager"

.field static final TRANSACTION_addCredential:I = 0x5

.field static final TRANSACTION_getCredentials:I = 0x4

.field static final TRANSACTION_getMessenger:I = 0x1

.field static final TRANSACTION_getPasspointState:I = 0x2

.field static final TRANSACTION_removeCredential:I = 0x7

.field static final TRANSACTION_requestCredentialMatch:I = 0x3

.field static final TRANSACTION_updateCredential:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.net.wifi.passpoint.IWifiPasspointManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/passpoint/IWifiPasspointManager;
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
    const-string/jumbo v1, "android.net.wifi.passpoint.IWifiPasspointManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/net/wifi/passpoint/IWifiPasspointManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/net/wifi/passpoint/IWifiPasspointManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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
    const/4 v7, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v7

    #@9
    return v7

    #@a
    .line 47
    :sswitch_0
    const-string/jumbo v7, "android.net.wifi.passpoint.IWifiPasspointManager"

    #@d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    return v8

    #@11
    .line 52
    :sswitch_1
    const-string/jumbo v9, "android.net.wifi.passpoint.IWifiPasspointManager"

    #@14
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 53
    invoke-virtual {p0}, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub;->getMessenger()Landroid/os/Messenger;

    #@1a
    move-result-object v3

    #@1b
    .line 54
    .local v3, "_result":Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e
    .line 55
    if-eqz v3, :cond_0

    #@20
    .line 56
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 57
    invoke-virtual {v3, p3, v8}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    #@26
    .line 62
    :goto_0
    return v8

    #@27
    .line 60
    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    goto :goto_0

    #@2b
    .line 66
    .end local v3    # "_result":Landroid/os/Messenger;
    :sswitch_2
    const-string/jumbo v7, "android.net.wifi.passpoint.IWifiPasspointManager"

    #@2e
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31
    .line 67
    invoke-virtual {p0}, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub;->getPasspointState()I

    #@34
    move-result v2

    #@35
    .line 68
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@38
    .line 69
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@3b
    .line 70
    return v8

    #@3c
    .line 74
    .end local v2    # "_result":I
    :sswitch_3
    const-string/jumbo v7, "android.net.wifi.passpoint.IWifiPasspointManager"

    #@3f
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42
    .line 76
    sget-object v7, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@44
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@47
    move-result-object v1

    #@48
    .line 77
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p0, v1}, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub;->requestCredentialMatch(Ljava/util/List;)Ljava/util/List;

    #@4b
    move-result-object v5

    #@4c
    .line 78
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/passpoint/WifiPasspointPolicy;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4f
    .line 79
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@52
    .line 80
    return v8

    #@53
    .line 84
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/passpoint/WifiPasspointPolicy;>;"
    :sswitch_4
    const-string/jumbo v7, "android.net.wifi.passpoint.IWifiPasspointManager"

    #@56
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@59
    .line 85
    invoke-virtual {p0}, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub;->getCredentials()Ljava/util/List;

    #@5c
    move-result-object v4

    #@5d
    .line 86
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/passpoint/WifiPasspointCredential;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@60
    .line 87
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@63
    .line 88
    return v8

    #@64
    .line 92
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/passpoint/WifiPasspointCredential;>;"
    :sswitch_5
    const-string/jumbo v9, "android.net.wifi.passpoint.IWifiPasspointManager"

    #@67
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6a
    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6d
    move-result v9

    #@6e
    if-eqz v9, :cond_2

    #@70
    .line 95
    sget-object v9, Landroid/net/wifi/passpoint/WifiPasspointCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    #@72
    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@75
    move-result-object v0

    #@76
    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@78
    .line 100
    :goto_1
    invoke-virtual {p0, v0}, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub;->addCredential(Landroid/net/wifi/passpoint/WifiPasspointCredential;)Z

    #@7b
    move-result v6

    #@7c
    .line 101
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7f
    .line 102
    if-eqz v6, :cond_1

    #@81
    move v7, v8

    #@82
    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@85
    .line 103
    return v8

    #@86
    .line 98
    .end local v6    # "_result":Z
    :cond_2
    const/4 v0, 0x0

    #@87
    .local v0, "_arg0":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    goto :goto_1

    #@88
    .line 107
    .end local v0    # "_arg0":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    :sswitch_6
    const-string/jumbo v9, "android.net.wifi.passpoint.IWifiPasspointManager"

    #@8b
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8e
    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@91
    move-result v9

    #@92
    if-eqz v9, :cond_4

    #@94
    .line 110
    sget-object v9, Landroid/net/wifi/passpoint/WifiPasspointCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    #@96
    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@99
    move-result-object v0

    #@9a
    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@9c
    .line 115
    :goto_2
    invoke-virtual {p0, v0}, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub;->updateCredential(Landroid/net/wifi/passpoint/WifiPasspointCredential;)Z

    #@9f
    move-result v6

    #@a0
    .line 116
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a3
    .line 117
    if-eqz v6, :cond_3

    #@a5
    move v7, v8

    #@a6
    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@a9
    .line 118
    return v8

    #@aa
    .line 113
    .end local v6    # "_result":Z
    :cond_4
    const/4 v0, 0x0

    #@ab
    .restart local v0    # "_arg0":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    goto :goto_2

    #@ac
    .line 122
    .end local v0    # "_arg0":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    :sswitch_7
    const-string/jumbo v9, "android.net.wifi.passpoint.IWifiPasspointManager"

    #@af
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b2
    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b5
    move-result v9

    #@b6
    if-eqz v9, :cond_6

    #@b8
    .line 125
    sget-object v9, Landroid/net/wifi/passpoint/WifiPasspointCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ba
    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@bd
    move-result-object v0

    #@be
    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;

    #@c0
    .line 130
    :goto_3
    invoke-virtual {p0, v0}, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub;->removeCredential(Landroid/net/wifi/passpoint/WifiPasspointCredential;)Z

    #@c3
    move-result v6

    #@c4
    .line 131
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c7
    .line 132
    if-eqz v6, :cond_5

    #@c9
    move v7, v8

    #@ca
    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@cd
    .line 133
    return v8

    #@ce
    .line 128
    .end local v6    # "_result":Z
    :cond_6
    const/4 v0, 0x0

    #@cf
    .restart local v0    # "_arg0":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    goto :goto_3

    #@d0
    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
