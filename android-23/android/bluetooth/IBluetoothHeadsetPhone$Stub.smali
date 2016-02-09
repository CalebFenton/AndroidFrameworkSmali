.class public abstract Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHeadsetPhone.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHeadsetPhone;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHeadsetPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHeadsetPhone$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHeadsetPhone"

.field static final TRANSACTION_answerCall:I = 0x1

.field static final TRANSACTION_cdmaSetSecondCallState:I = 0xb

.field static final TRANSACTION_cdmaSwapSecondCallState:I = 0xa

.field static final TRANSACTION_getNetworkOperator:I = 0x5

.field static final TRANSACTION_getSubscriberNumber:I = 0x6

.field static final TRANSACTION_hangupCall:I = 0x2

.field static final TRANSACTION_listCurrentCalls:I = 0x7

.field static final TRANSACTION_processChld:I = 0x4

.field static final TRANSACTION_queryPhoneState:I = 0x8

.field static final TRANSACTION_sendDtmf:I = 0x3

.field static final TRANSACTION_updateBtHandsfreeAfterRadioTechnologyChange:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.bluetooth.IBluetoothHeadsetPhone"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadsetPhone;
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
    const-string/jumbo v1, "android.bluetooth.IBluetoothHeadsetPhone"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/bluetooth/IBluetoothHeadsetPhone;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothHeadsetPhone;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v4

    #@9
    return v4

    #@a
    .line 47
    :sswitch_0
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadsetPhone"

    #@d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    return v5

    #@11
    .line 52
    :sswitch_1
    const-string/jumbo v6, "android.bluetooth.IBluetoothHeadsetPhone"

    #@14
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 53
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->answerCall()Z

    #@1a
    move-result v3

    #@1b
    .line 54
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e
    .line 55
    if-eqz v3, :cond_0

    #@20
    move v4, v5

    #@21
    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 56
    return v5

    #@25
    .line 60
    .end local v3    # "_result":Z
    :sswitch_2
    const-string/jumbo v6, "android.bluetooth.IBluetoothHeadsetPhone"

    #@28
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b
    .line 61
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->hangupCall()Z

    #@2e
    move-result v3

    #@2f
    .line 62
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@32
    .line 63
    if-eqz v3, :cond_1

    #@34
    move v4, v5

    #@35
    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 64
    return v5

    #@39
    .line 68
    .end local v3    # "_result":Z
    :sswitch_3
    const-string/jumbo v6, "android.bluetooth.IBluetoothHeadsetPhone"

    #@3c
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3f
    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v0

    #@43
    .line 71
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->sendDtmf(I)Z

    #@46
    move-result v3

    #@47
    .line 72
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4a
    .line 73
    if-eqz v3, :cond_2

    #@4c
    move v4, v5

    #@4d
    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@50
    .line 74
    return v5

    #@51
    .line 78
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_4
    const-string/jumbo v6, "android.bluetooth.IBluetoothHeadsetPhone"

    #@54
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@57
    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5a
    move-result v0

    #@5b
    .line 81
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->processChld(I)Z

    #@5e
    move-result v3

    #@5f
    .line 82
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@62
    .line 83
    if-eqz v3, :cond_3

    #@64
    move v4, v5

    #@65
    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@68
    .line 84
    return v5

    #@69
    .line 88
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_5
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadsetPhone"

    #@6c
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6f
    .line 89
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->getNetworkOperator()Ljava/lang/String;

    #@72
    move-result-object v2

    #@73
    .line 90
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@76
    .line 91
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@79
    .line 92
    return v5

    #@7a
    .line 96
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadsetPhone"

    #@7d
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@80
    .line 97
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->getSubscriberNumber()Ljava/lang/String;

    #@83
    move-result-object v2

    #@84
    .line 98
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@87
    .line 99
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@8a
    .line 100
    return v5

    #@8b
    .line 104
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v6, "android.bluetooth.IBluetoothHeadsetPhone"

    #@8e
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@91
    .line 105
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->listCurrentCalls()Z

    #@94
    move-result v3

    #@95
    .line 106
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@98
    .line 107
    if-eqz v3, :cond_4

    #@9a
    move v4, v5

    #@9b
    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@9e
    .line 108
    return v5

    #@9f
    .line 112
    .end local v3    # "_result":Z
    :sswitch_8
    const-string/jumbo v6, "android.bluetooth.IBluetoothHeadsetPhone"

    #@a2
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a5
    .line 113
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->queryPhoneState()Z

    #@a8
    move-result v3

    #@a9
    .line 114
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ac
    .line 115
    if-eqz v3, :cond_5

    #@ae
    move v4, v5

    #@af
    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@b2
    .line 116
    return v5

    #@b3
    .line 120
    .end local v3    # "_result":Z
    :sswitch_9
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadsetPhone"

    #@b6
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b9
    .line 121
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->updateBtHandsfreeAfterRadioTechnologyChange()V

    #@bc
    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@bf
    .line 123
    return v5

    #@c0
    .line 127
    :sswitch_a
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadsetPhone"

    #@c3
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c6
    .line 128
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->cdmaSwapSecondCallState()V

    #@c9
    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@cc
    .line 130
    return v5

    #@cd
    .line 134
    :sswitch_b
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadsetPhone"

    #@d0
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d3
    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d6
    move-result v4

    #@d7
    if-eqz v4, :cond_6

    #@d9
    const/4 v1, 0x1

    #@da
    .line 137
    .local v1, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->cdmaSetSecondCallState(Z)V

    #@dd
    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@e0
    .line 139
    return v5

    #@e1
    .line 136
    .end local v1    # "_arg0":Z
    :cond_6
    const/4 v1, 0x0

    #@e2
    .restart local v1    # "_arg0":Z
    goto :goto_0

    #@e3
    .line 43
    nop

    #@e4
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
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
