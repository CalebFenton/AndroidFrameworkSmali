.class public abstract Landroid/hardware/gnss/IAGnss$Stub;
.super Landroid/os/Binder;
.source "IAGnss.java"

# interfaces
.implements Landroid/hardware/gnss/IAGnss;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IAGnss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IAGnss$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_dataConnClosed:I = 0x2

.field static final blacklist TRANSACTION_dataConnFailed:I = 0x3

.field static final blacklist TRANSACTION_dataConnOpen:I = 0x5

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_setCallback:I = 0x1

.field static final blacklist TRANSACTION_setServer:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    invoke-virtual {p0}, Landroid/hardware/gnss/IAGnss$Stub;->markVintfStability()V

    .line 60
    sget-object v0, Landroid/hardware/gnss/IAGnss$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/gnss/IAGnss$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IAGnss;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 68
    if-nez p0, :cond_4

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_4
    sget-object v0, Landroid/hardware/gnss/IAGnss$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 72
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/gnss/IAGnss;

    if-eqz v1, :cond_14

    .line 73
    move-object v1, v0

    check-cast v1, Landroid/hardware/gnss/IAGnss;

    return-object v1

    .line 75
    :cond_14
    new-instance v1, Landroid/hardware/gnss/IAGnss$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/gnss/IAGnss$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 84
    sparse-switch p0, :sswitch_data_1a

    .line 116
    const/4 v0, 0x0

    return-object v0

    .line 108
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 112
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 104
    :sswitch_b
    const-string v0, "dataConnOpen"

    return-object v0

    .line 100
    :sswitch_e
    const-string v0, "setServer"

    return-object v0

    .line 96
    :sswitch_11
    const-string v0, "dataConnFailed"

    return-object v0

    .line 92
    :sswitch_14
    const-string v0, "dataConnClosed"

    return-object v0

    .line 88
    :sswitch_17
    const-string v0, "setCallback"

    return-object v0

    :sswitch_data_1a
    .sparse-switch
        0x1 -> :sswitch_17
        0x2 -> :sswitch_14
        0x3 -> :sswitch_11
        0x4 -> :sswitch_e
        0x5 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 79
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 355
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 123
    invoke-static {p1}, Landroid/hardware/gnss/IAGnss$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 127
    sget-object v0, Landroid/hardware/gnss/IAGnss$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 128
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 129
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 132
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    return v2

    .line 135
    :cond_16
    if-ne p1, v1, :cond_23

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p0}, Landroid/hardware/gnss/IAGnss$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    return v2

    .line 140
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p0}, Landroid/hardware/gnss/IAGnss$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return v2

    .line 145
    :cond_33
    packed-switch p1, :pswitch_data_88

    .line 196
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 184
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 186
    .local v3, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 189
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, v3, v4, v1, v5}, Landroid/hardware/gnss/IAGnss$Stub;->dataConnOpen(JLjava/lang/String;I)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    goto :goto_87

    .line 171
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg0":J
    .end local v5    # "_arg2":I
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 173
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 176
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/gnss/IAGnss$Stub;->setServer(ILjava/lang/String;I)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    goto :goto_87

    .line 164
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_67
    invoke-virtual {p0}, Landroid/hardware/gnss/IAGnss$Stub;->dataConnFailed()V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    goto :goto_87

    .line 158
    :pswitch_6e
    invoke-virtual {p0}, Landroid/hardware/gnss/IAGnss$Stub;->dataConnClosed()V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    goto :goto_87

    .line 150
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/gnss/IAGnssCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IAGnssCallback;

    move-result-object v1

    .line 151
    .local v1, "_arg0":Landroid/hardware/gnss/IAGnssCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/IAGnss$Stub;->setCallback(Landroid/hardware/gnss/IAGnssCallback;)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    nop

    .line 199
    .end local v1    # "_arg0":Landroid/hardware/gnss/IAGnssCallback;
    :goto_87
    return v2

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_75
        :pswitch_6e
        :pswitch_67
        :pswitch_51
        :pswitch_3b
    .end packed-switch
.end method
