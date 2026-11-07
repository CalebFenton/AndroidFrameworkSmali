.class public abstract Landroid/hardware/gnss/IGnssConfiguration$Stub;
.super Landroid/os/Binder;
.source "IGnssConfiguration.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_setBlocklist:I = 0x7

.field static final blacklist TRANSACTION_setEmergencySuplPdn:I = 0x5

.field static final blacklist TRANSACTION_setEsExtensionSec:I = 0x6

.field static final blacklist TRANSACTION_setGlonassPositioningProtocol:I = 0x4

.field static final blacklist TRANSACTION_setLppProfile:I = 0x3

.field static final blacklist TRANSACTION_setSuplMode:I = 0x2

.field static final blacklist TRANSACTION_setSuplVersion:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssConfiguration$Stub;->markVintfStability()V

    .line 66
    sget-object v0, Landroid/hardware/gnss/IGnssConfiguration$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/gnss/IGnssConfiguration$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssConfiguration;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 74
    if-nez p0, :cond_4

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_4
    sget-object v0, Landroid/hardware/gnss/IGnssConfiguration$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/gnss/IGnssConfiguration;

    if-eqz v1, :cond_14

    .line 79
    move-object v1, v0

    check-cast v1, Landroid/hardware/gnss/IGnssConfiguration;

    return-object v1

    .line 81
    :cond_14
    new-instance v1, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 90
    sparse-switch p0, :sswitch_data_20

    .line 130
    const/4 v0, 0x0

    return-object v0

    .line 122
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 126
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 118
    :sswitch_b
    const-string v0, "setBlocklist"

    return-object v0

    .line 114
    :sswitch_e
    const-string v0, "setEsExtensionSec"

    return-object v0

    .line 110
    :sswitch_11
    const-string v0, "setEmergencySuplPdn"

    return-object v0

    .line 106
    :sswitch_14
    const-string v0, "setGlonassPositioningProtocol"

    return-object v0

    .line 102
    :sswitch_17
    const-string v0, "setLppProfile"

    return-object v0

    .line 98
    :sswitch_1a
    const-string v0, "setSuplMode"

    return-object v0

    .line 94
    :sswitch_1d
    const-string v0, "setSuplVersion"

    return-object v0

    :sswitch_data_20
    .sparse-switch
        0x1 -> :sswitch_1d
        0x2 -> :sswitch_1a
        0x3 -> :sswitch_17
        0x4 -> :sswitch_14
        0x5 -> :sswitch_11
        0x6 -> :sswitch_e
        0x7 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 85
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 421
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 137
    invoke-static {p1}, Landroid/hardware/gnss/IGnssConfiguration$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    sget-object v0, Landroid/hardware/gnss/IGnssConfiguration$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 142
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 143
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 146
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    return v2

    .line 149
    :cond_16
    if-ne p1, v1, :cond_23

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssConfiguration$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    return v2

    .line 154
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssConfiguration$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    return v2

    .line 159
    :cond_33
    packed-switch p1, :pswitch_data_a2

    .line 226
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 218
    :pswitch_3b
    sget-object v1, Landroid/hardware/gnss/BlocklistedSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/gnss/BlocklistedSource;

    .line 219
    .local v1, "_arg0":[Landroid/hardware/gnss/BlocklistedSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/IGnssConfiguration$Stub;->setBlocklist([Landroid/hardware/gnss/BlocklistedSource;)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    goto :goto_a1

    .line 209
    .end local v1    # "_arg0":[Landroid/hardware/gnss/BlocklistedSource;
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 210
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/IGnssConfiguration$Stub;->setEsExtensionSec(I)V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    goto :goto_a1

    .line 200
    .end local v1    # "_arg0":I
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 201
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/IGnssConfiguration$Stub;->setEmergencySuplPdn(Z)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    goto :goto_a1

    .line 191
    .end local v1    # "_arg0":Z
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 192
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/IGnssConfiguration$Stub;->setGlonassPositioningProtocol(I)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    goto :goto_a1

    .line 182
    .end local v1    # "_arg0":I
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 183
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/IGnssConfiguration$Stub;->setLppProfile(I)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    goto :goto_a1

    .line 173
    .end local v1    # "_arg0":I
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 174
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/IGnssConfiguration$Stub;->setSuplMode(I)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    goto :goto_a1

    .line 164
    .end local v1    # "_arg0":I
    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 165
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/IGnssConfiguration$Stub;->setSuplVersion(I)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    nop

    .line 229
    .end local v1    # "_arg0":I
    :goto_a1
    return v2

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_93
        :pswitch_85
        :pswitch_77
        :pswitch_69
        :pswitch_5b
        :pswitch_4d
        :pswitch_3b
    .end packed-switch
.end method
