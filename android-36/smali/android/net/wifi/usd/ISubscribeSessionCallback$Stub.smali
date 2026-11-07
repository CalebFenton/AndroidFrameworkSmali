.class public abstract Landroid/net/wifi/usd/ISubscribeSessionCallback$Stub;
.super Landroid/os/Binder;
.source "ISubscribeSessionCallback.java"

# interfaces
.implements Landroid/net/wifi/usd/ISubscribeSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/usd/ISubscribeSessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/usd/ISubscribeSessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onMessageReceived:I = 0x5

.field static final blacklist TRANSACTION_onSubscribeDiscovered:I = 0x3

.field static final blacklist TRANSACTION_onSubscribeFailed:I = 0x1

.field static final blacklist TRANSACTION_onSubscribeSessionTerminated:I = 0x4

.field static final blacklist TRANSACTION_onSubscribeStarted:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "android.net.wifi.usd.ISubscribeSessionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/usd/ISubscribeSessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/usd/ISubscribeSessionCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_4
    const-string v0, "android.net.wifi.usd.ISubscribeSessionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/usd/ISubscribeSessionCallback;

    if-eqz v1, :cond_14

    .line 60
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/usd/ISubscribeSessionCallback;

    return-object v1

    .line 62
    :cond_14
    new-instance v1, Landroid/net/wifi/usd/ISubscribeSessionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/usd/ISubscribeSessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 71
    packed-switch p0, :pswitch_data_14

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 91
    :pswitch_5
    const-string v0, "onMessageReceived"

    return-object v0

    .line 87
    :pswitch_8
    const-string v0, "onSubscribeSessionTerminated"

    return-object v0

    .line 83
    :pswitch_b
    const-string v0, "onSubscribeDiscovered"

    return-object v0

    .line 79
    :pswitch_e
    const-string v0, "onSubscribeStarted"

    return-object v0

    .line 75
    :pswitch_11
    const-string v0, "onSubscribeFailed"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 66
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 254
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 102
    invoke-static {p1}, Landroid/net/wifi/usd/ISubscribeSessionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    const-string v0, "android.net.wifi.usd.ISubscribeSessionCallback"

    .line 107
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 108
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 111
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return v1

    .line 114
    :cond_16
    packed-switch p1, :pswitch_data_58

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 153
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 155
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 156
    .local v3, "_arg1":[B
    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/usd/ISubscribeSessionCallback$Stub;->onMessageReceived(I[B)V

    .line 157
    goto :goto_56

    .line 146
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 147
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/usd/ISubscribeSessionCallback$Stub;->onSubscribeSessionTerminated(I)V

    .line 148
    goto :goto_56

    .line 133
    .end local v2    # "_arg0":I
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 135
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 137
    .restart local v3    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 139
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 140
    .local v5, "_arg3":Z
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/net/wifi/usd/ISubscribeSessionCallback$Stub;->onSubscribeDiscovered(I[BIZ)V

    .line 141
    goto :goto_56

    .line 126
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Z
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 127
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/usd/ISubscribeSessionCallback$Stub;->onSubscribeStarted(I)V

    .line 128
    goto :goto_56

    .line 119
    .end local v2    # "_arg0":I
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 120
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/usd/ISubscribeSessionCallback$Stub;->onSubscribeFailed(I)V

    .line 121
    nop

    .line 164
    .end local v2    # "_arg0":I
    :goto_56
    return v1

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_46
        :pswitch_32
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
