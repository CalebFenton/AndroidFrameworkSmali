.class public abstract Landroid/nfc/INfcAdapterExtras$Stub;
.super Landroid/os/Binder;
.source "INfcAdapterExtras.java"

# interfaces
.implements Landroid/nfc/INfcAdapterExtras;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAdapterExtras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapterExtras$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcAdapterExtras"

.field static final TRANSACTION_authenticate:I = 0x6

.field static final TRANSACTION_close:I = 0x2

.field static final TRANSACTION_getCardEmulationRoute:I = 0x4

.field static final TRANSACTION_getDriverName:I = 0x7

.field static final TRANSACTION_open:I = 0x1

.field static final TRANSACTION_setCardEmulationRoute:I = 0x5

.field static final TRANSACTION_transceive:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.nfc.INfcAdapterExtras"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcAdapterExtras$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapterExtras;
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
    const-string/jumbo v1, "android.nfc.INfcAdapterExtras"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/nfc/INfcAdapterExtras;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/nfc/INfcAdapterExtras;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/nfc/INfcAdapterExtras$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/nfc/INfcAdapterExtras$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v7

    #@9
    return v7

    #@a
    .line 45
    :sswitch_0
    const-string/jumbo v7, "android.nfc.INfcAdapterExtras"

    #@d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 46
    return v8

    #@11
    .line 50
    :sswitch_1
    const-string/jumbo v7, "android.nfc.INfcAdapterExtras"

    #@14
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 54
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1e
    move-result-object v2

    #@1f
    .line 55
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v2}, Landroid/nfc/INfcAdapterExtras$Stub;->open(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    #@22
    move-result-object v5

    #@23
    .line 56
    .local v5, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@26
    .line 57
    if-eqz v5, :cond_0

    #@28
    .line 58
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 59
    invoke-virtual {v5, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@2e
    .line 64
    :goto_0
    return v8

    #@2f
    .line 62
    :cond_0
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    goto :goto_0

    #@33
    .line 68
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v5    # "_result":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v7, "android.nfc.INfcAdapterExtras"

    #@36
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@39
    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    .line 72
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@40
    move-result-object v2

    #@41
    .line 73
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v2}, Landroid/nfc/INfcAdapterExtras$Stub;->close(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    #@44
    move-result-object v5

    #@45
    .line 74
    .restart local v5    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@48
    .line 75
    if-eqz v5, :cond_1

    #@4a
    .line 76
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@4d
    .line 77
    invoke-virtual {v5, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@50
    .line 82
    :goto_1
    return v8

    #@51
    .line 80
    :cond_1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@54
    goto :goto_1

    #@55
    .line 86
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v5    # "_result":Landroid/os/Bundle;
    :sswitch_3
    const-string/jumbo v7, "android.nfc.INfcAdapterExtras"

    #@58
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5b
    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5e
    move-result-object v0

    #@5f
    .line 90
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@62
    move-result-object v3

    #@63
    .line 91
    .local v3, "_arg1":[B
    invoke-virtual {p0, v0, v3}, Landroid/nfc/INfcAdapterExtras$Stub;->transceive(Ljava/lang/String;[B)Landroid/os/Bundle;

    #@66
    move-result-object v5

    #@67
    .line 92
    .restart local v5    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@6a
    .line 93
    if-eqz v5, :cond_2

    #@6c
    .line 94
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@6f
    .line 95
    invoke-virtual {v5, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@72
    .line 100
    :goto_2
    return v8

    #@73
    .line 98
    :cond_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@76
    goto :goto_2

    #@77
    .line 104
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    .end local v5    # "_result":Landroid/os/Bundle;
    :sswitch_4
    const-string/jumbo v7, "android.nfc.INfcAdapterExtras"

    #@7a
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7d
    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@80
    move-result-object v0

    #@81
    .line 107
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapterExtras$Stub;->getCardEmulationRoute(Ljava/lang/String;)I

    #@84
    move-result v4

    #@85
    .line 108
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@88
    .line 109
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@8b
    .line 110
    return v8

    #@8c
    .line 114
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_5
    const-string/jumbo v7, "android.nfc.INfcAdapterExtras"

    #@8f
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@92
    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@95
    move-result-object v0

    #@96
    .line 118
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@99
    move-result v1

    #@9a
    .line 119
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcAdapterExtras$Stub;->setCardEmulationRoute(Ljava/lang/String;I)V

    #@9d
    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a0
    .line 121
    return v8

    #@a1
    .line 125
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_6
    const-string/jumbo v7, "android.nfc.INfcAdapterExtras"

    #@a4
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a7
    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@aa
    move-result-object v0

    #@ab
    .line 129
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@ae
    move-result-object v3

    #@af
    .line 130
    .restart local v3    # "_arg1":[B
    invoke-virtual {p0, v0, v3}, Landroid/nfc/INfcAdapterExtras$Stub;->authenticate(Ljava/lang/String;[B)V

    #@b2
    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b5
    .line 132
    return v8

    #@b6
    .line 136
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    :sswitch_7
    const-string/jumbo v7, "android.nfc.INfcAdapterExtras"

    #@b9
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bc
    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@bf
    move-result-object v0

    #@c0
    .line 139
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/nfc/INfcAdapterExtras$Stub;->getDriverName(Ljava/lang/String;)Ljava/lang/String;

    #@c3
    move-result-object v6

    #@c4
    .line 140
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c7
    .line 141
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@ca
    .line 142
    return v8

    #@cb
    .line 41
    nop

    #@cc
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
