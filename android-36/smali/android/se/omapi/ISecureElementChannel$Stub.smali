.class public abstract Landroid/se/omapi/ISecureElementChannel$Stub;
.super Landroid/os/Binder;
.source "ISecureElementChannel.java"

# interfaces
.implements Landroid/se/omapi/ISecureElementChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/se/omapi/ISecureElementChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String;

.field static final greylist-max-o TRANSACTION_close:I = 0x1

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final greylist-max-o TRANSACTION_getSelectResponse:I = 0x4

.field static final greylist-max-o TRANSACTION_isBasicChannel:I = 0x3

.field static final greylist-max-o TRANSACTION_isClosed:I = 0x2

.field static final greylist-max-o TRANSACTION_selectNext:I = 0x6

.field static final greylist-max-o TRANSACTION_transmit:I = 0x5


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 333
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$se$omapi$ISecureElementChannel"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/se/omapi/ISecureElementChannel$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementChannel$Stub;->markVintfStability()V

    .line 68
    sget-object v0, Landroid/se/omapi/ISecureElementChannel$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/se/omapi/ISecureElementChannel$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementChannel;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 76
    if-nez p0, :cond_4

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_4
    sget-object v0, Landroid/se/omapi/ISecureElementChannel$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 80
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/se/omapi/ISecureElementChannel;

    if-eqz v1, :cond_14

    .line 81
    move-object v1, v0

    check-cast v1, Landroid/se/omapi/ISecureElementChannel;

    return-object v1

    .line 83
    :cond_14
    new-instance v1, Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 87
    return-object p0
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

    .line 91
    sget-object v0, Landroid/se/omapi/ISecureElementChannel$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 92
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 93
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 96
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v2

    .line 99
    :cond_16
    if-ne p1, v1, :cond_23

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementChannel$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return v2

    .line 104
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementChannel$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    return v2

    .line 109
    :cond_33
    packed-switch p1, :pswitch_data_82

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 150
    :pswitch_3b
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementChannel$Stub;->selectNext()Z

    move-result v1

    .line 151
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 153
    goto :goto_80

    .line 141
    .end local v1    # "_result":Z
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 142
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, v1}, Landroid/se/omapi/ISecureElementChannel$Stub;->transmit([B)[B

    move-result-object v3

    .line 144
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 146
    goto :goto_80

    .line 133
    .end local v1    # "_arg0":[B
    .end local v3    # "_result":[B
    :pswitch_58
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementChannel$Stub;->getSelectResponse()[B

    move-result-object v1

    .line 134
    .local v1, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 136
    goto :goto_80

    .line 126
    .end local v1    # "_result":[B
    :pswitch_63
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementChannel$Stub;->isBasicChannel()Z

    move-result v1

    .line 127
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 129
    goto :goto_80

    .line 119
    .end local v1    # "_result":Z
    :pswitch_6e
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementChannel$Stub;->isClosed()Z

    move-result v1

    .line 120
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 122
    goto :goto_80

    .line 113
    .end local v1    # "_result":Z
    :pswitch_79
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementChannel$Stub;->close()V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    nop

    .line 160
    :goto_80
    return v2

    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_79
        :pswitch_6e
        :pswitch_63
        :pswitch_58
        :pswitch_46
        :pswitch_3b
    .end packed-switch
.end method
