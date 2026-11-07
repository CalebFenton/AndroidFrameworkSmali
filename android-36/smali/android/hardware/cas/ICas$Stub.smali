.class public abstract Landroid/hardware/cas/ICas$Stub;
.super Landroid/os/Binder;
.source "ICas.java"

# interfaces
.implements Landroid/hardware/cas/ICas;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/cas/ICas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/cas/ICas$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_closeSession:I = 0x1

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_openSession:I = 0x3

.field static final blacklist TRANSACTION_openSessionDefault:I = 0x2

.field static final blacklist TRANSACTION_processEcm:I = 0x4

.field static final blacklist TRANSACTION_processEmm:I = 0x5

.field static final blacklist TRANSACTION_provision:I = 0x6

.field static final blacklist TRANSACTION_refreshEntitlements:I = 0x7

.field static final blacklist TRANSACTION_release:I = 0x8

.field static final blacklist TRANSACTION_sendEvent:I = 0x9

.field static final blacklist TRANSACTION_sendSessionEvent:I = 0xa

.field static final blacklist TRANSACTION_setPrivateData:I = 0xb

.field static final blacklist TRANSACTION_setSessionPrivateData:I = 0xc


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 82
    invoke-virtual {p0}, Landroid/hardware/cas/ICas$Stub;->markVintfStability()V

    .line 83
    sget-object v0, Landroid/hardware/cas/ICas$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/cas/ICas$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/cas/ICas;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 91
    if-nez p0, :cond_4

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_4
    sget-object v0, Landroid/hardware/cas/ICas$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 95
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/cas/ICas;

    if-eqz v1, :cond_14

    .line 96
    move-object v1, v0

    check-cast v1, Landroid/hardware/cas/ICas;

    return-object v1

    .line 98
    :cond_14
    new-instance v1, Landroid/hardware/cas/ICas$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/cas/ICas$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 102
    return-object p0
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
    sget-object v0, Landroid/hardware/cas/ICas$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 107
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 108
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 111
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return v2

    .line 114
    :cond_16
    if-ne p1, v1, :cond_23

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p0}, Landroid/hardware/cas/ICas$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    return v2

    .line 119
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p0}, Landroid/hardware/cas/ICas$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return v2

    .line 124
    :cond_33
    packed-switch p1, :pswitch_data_106

    .line 250
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 240
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 242
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 243
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, v1, v3}, Landroid/hardware/cas/ICas$Stub;->setSessionPrivateData([B[B)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    goto/16 :goto_105

    .line 231
    .end local v1    # "_arg0":[B
    .end local v3    # "_arg1":[B
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 232
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {p0, v1}, Landroid/hardware/cas/ICas$Stub;->setPrivateData([B)V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    goto/16 :goto_105

    .line 216
    .end local v1    # "_arg0":[B
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 218
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 220
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 222
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 223
    .local v5, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/hardware/cas/ICas$Stub;->sendSessionEvent([BII[B)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    goto/16 :goto_105

    .line 203
    .end local v1    # "_arg0":[B
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":[B
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 205
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 207
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 208
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/cas/ICas$Stub;->sendEvent(II[B)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    goto/16 :goto_105

    .line 196
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[B
    :pswitch_8f
    invoke-virtual {p0}, Landroid/hardware/cas/ICas$Stub;->release()V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    goto :goto_105

    .line 186
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 188
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 189
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, v1, v3}, Landroid/hardware/cas/ICas$Stub;->refreshEntitlements(I[B)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    goto :goto_105

    .line 177
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v1}, Landroid/hardware/cas/ICas$Stub;->provision(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    goto :goto_105

    .line 168
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_b6
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 169
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v1}, Landroid/hardware/cas/ICas$Stub;->processEmm([B)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    goto :goto_105

    .line 157
    .end local v1    # "_arg0":[B
    :pswitch_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 159
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 160
    .restart local v3    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, v1, v3}, Landroid/hardware/cas/ICas$Stub;->processEcm([B[B)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    goto :goto_105

    .line 145
    .end local v1    # "_arg0":[B
    .end local v3    # "_arg1":[B
    :pswitch_d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 147
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 148
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v1, v3}, Landroid/hardware/cas/ICas$Stub;->openSession(II)[B

    move-result-object v4

    .line 150
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 152
    goto :goto_105

    .line 137
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":[B
    :pswitch_ec
    invoke-virtual {p0}, Landroid/hardware/cas/ICas$Stub;->openSessionDefault()[B

    move-result-object v1

    .line 138
    .local v1, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 140
    goto :goto_105

    .line 129
    .end local v1    # "_result":[B
    :pswitch_f7
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 130
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v1}, Landroid/hardware/cas/ICas$Stub;->closeSession([B)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    nop

    .line 253
    .end local v1    # "_arg0":[B
    :goto_105
    return v2

    :pswitch_data_106
    .packed-switch 0x1
        :pswitch_f7
        :pswitch_ec
        :pswitch_d6
        :pswitch_c4
        :pswitch_b6
        :pswitch_a8
        :pswitch_96
        :pswitch_8f
        :pswitch_78
        :pswitch_5d
        :pswitch_4e
        :pswitch_3b
    .end packed-switch
.end method
