.class public abstract Landroid/hardware/location/IContextHubClient$Stub;
.super Landroid/os/Binder;
.source "IContextHubClient.java"

# interfaces
.implements Landroid/hardware/location/IContextHubClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IContextHubClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IContextHubClient$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IContextHubClient"

.field static final blacklist TRANSACTION_callbackFinished:I = 0x4

.field static final greylist-max-o TRANSACTION_close:I = 0x2

.field static final blacklist TRANSACTION_getId:I = 0x3

.field static final blacklist TRANSACTION_reliableMessageCallbackFinished:I = 0x5

.field static final greylist-max-o TRANSACTION_sendMessageToNanoApp:I = 0x1

.field static final blacklist TRANSACTION_sendReliableMessageToNanoApp:I = 0x6


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    const-string v0, "android.hardware.location.IContextHubClient"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IContextHubClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubClient;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 69
    if-nez p0, :cond_4

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_4
    const-string v0, "android.hardware.location.IContextHubClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/location/IContextHubClient;

    if-eqz v1, :cond_14

    .line 74
    move-object v1, v0

    check-cast v1, Landroid/hardware/location/IContextHubClient;

    return-object v1

    .line 76
    :cond_14
    new-instance v1, Landroid/hardware/location/IContextHubClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/location/IContextHubClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 85
    packed-switch p0, :pswitch_data_18

    .line 113
    const/4 v0, 0x0

    return-object v0

    .line 109
    :pswitch_5
    const-string v0, "sendReliableMessageToNanoApp"

    return-object v0

    .line 105
    :pswitch_8
    const-string v0, "reliableMessageCallbackFinished"

    return-object v0

    .line 101
    :pswitch_b
    const-string v0, "callbackFinished"

    return-object v0

    .line 97
    :pswitch_e
    const-string v0, "getId"

    return-object v0

    .line 93
    :pswitch_11
    const-string v0, "close"

    return-object v0

    .line 89
    :pswitch_14
    const-string v0, "sendMessageToNanoApp"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
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

    .line 80
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 330
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 120
    invoke-static {p1}, Landroid/hardware/location/IContextHubClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    const-string v0, "android.hardware.location.IContextHubClient"

    .line 125
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 126
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 129
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    return v1

    .line 132
    :cond_16
    packed-switch p1, :pswitch_data_7e

    .line 188
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 177
    :pswitch_1e
    sget-object v2, Landroid/hardware/location/NanoAppMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/NanoAppMessage;

    .line 179
    .local v2, "_arg0":Landroid/hardware/location/NanoAppMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v3

    .line 180
    .local v3, "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, v2, v3}, Landroid/hardware/location/IContextHubClient$Stub;->sendReliableMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;Landroid/hardware/location/IContextHubTransactionCallback;)I

    move-result v4

    .line 182
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    goto :goto_7d

    .line 166
    .end local v2    # "_arg0":Landroid/hardware/location/NanoAppMessage;
    .end local v3    # "_arg1":Landroid/hardware/location/IContextHubTransactionCallback;
    .end local v4    # "_result":I
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 168
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 169
    .local v3, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v2, v3}, Landroid/hardware/location/IContextHubClient$Stub;->reliableMessageCallbackFinished(IB)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    goto :goto_7d

    .line 159
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":B
    :pswitch_4e
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubClient$Stub;->callbackFinished()V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    goto :goto_7d

    .line 152
    :pswitch_55
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubClient$Stub;->getId()I

    move-result v2

    .line 153
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    goto :goto_7d

    .line 146
    .end local v2    # "_result":I
    :pswitch_60
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubClient$Stub;->close()V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    goto :goto_7d

    .line 137
    :pswitch_67
    sget-object v2, Landroid/hardware/location/NanoAppMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/NanoAppMessage;

    .line 138
    .local v2, "_arg0":Landroid/hardware/location/NanoAppMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v2}, Landroid/hardware/location/IContextHubClient$Stub;->sendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)I

    move-result v3

    .line 140
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    nop

    .line 191
    .end local v2    # "_arg0":Landroid/hardware/location/NanoAppMessage;
    .end local v3    # "_result":I
    :goto_7d
    return v1

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_67
        :pswitch_60
        :pswitch_55
        :pswitch_4e
        :pswitch_3c
        :pswitch_1e
    .end packed-switch
.end method
