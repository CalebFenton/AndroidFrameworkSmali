.class public abstract Landroid/service/gatekeeper/IGateKeeperService$Stub;
.super Landroid/os/Binder;
.source "IGateKeeperService.java"

# interfaces
.implements Landroid/service/gatekeeper/IGateKeeperService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/gatekeeper/IGateKeeperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/gatekeeper/IGateKeeperService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearSecureUserId:I = 0x5

.field static final blacklist TRANSACTION_enroll:I = 0x1

.field static final blacklist TRANSACTION_getSecureUserId:I = 0x4

.field static final blacklist TRANSACTION_reportDeviceSetupComplete:I = 0x6

.field static final blacklist TRANSACTION_verify:I = 0x2

.field static final blacklist TRANSACTION_verifyChallenge:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 100
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 101
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p0, p0, v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 109
    if-nez p0, :cond_4

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_4
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 113
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/gatekeeper/IGateKeeperService;

    if-eqz v1, :cond_14

    .line 114
    move-object v1, v0

    check-cast v1, Landroid/service/gatekeeper/IGateKeeperService;

    return-object v1

    .line 116
    :cond_14
    new-instance v1, Landroid/service/gatekeeper/IGateKeeperService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/gatekeeper/IGateKeeperService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 125
    packed-switch p0, :pswitch_data_1c

    .line 153
    const/4 v0, 0x0

    return-object v0

    .line 149
    :pswitch_5
    const-string/jumbo v0, "reportDeviceSetupComplete"

    return-object v0

    .line 145
    :pswitch_9
    const-string v0, "clearSecureUserId"

    return-object v0

    .line 141
    :pswitch_c
    const-string/jumbo v0, "getSecureUserId"

    return-object v0

    .line 137
    :pswitch_10
    const-string/jumbo v0, "verifyChallenge"

    return-object v0

    .line 133
    :pswitch_14
    const-string/jumbo v0, "verify"

    return-object v0

    .line 129
    :pswitch_18
    const-string v0, "enroll"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 120
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 435
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 160
    invoke-static {p1}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    .line 165
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 166
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 169
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    return v1

    .line 172
    :cond_16
    packed-switch p1, :pswitch_data_a4

    .line 247
    move-object v5, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 241
    :pswitch_1f
    invoke-virtual {p0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->reportDeviceSetupComplete()V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    move-object v5, p0

    goto/16 :goto_a3

    .line 233
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 234
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->clearSecureUserId(I)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    move-object v5, p0

    goto :goto_a3

    .line 223
    .end local v2    # "_arg0":I
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 224
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {p0, v2}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->getSecureUserId(I)J

    move-result-wide v3

    .line 226
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 228
    move-object v5, p0

    goto :goto_a3

    .line 207
    .end local v2    # "_arg0":I
    .end local v3    # "_result":J
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 209
    .local v6, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 211
    .local v7, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 213
    .local v9, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 214
    .local v10, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v2

    .line 216
    .local v2, "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 218
    goto :goto_a3

    .line 193
    .end local v2    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":J
    .end local v9    # "_arg2":[B
    .end local v10    # "_arg3":[B
    :pswitch_69
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 195
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 197
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 198
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->verify(I[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v6

    .line 200
    .local v6, "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 202
    goto :goto_a3

    .line 177
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":[B
    .end local v6    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    :pswitch_84
    move-object v5, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 179
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 181
    .restart local v3    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 183
    .restart local v4    # "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 184
    .local v6, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2, v3, v4, v6}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v7

    .line 186
    .local v7, "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v7, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 188
    nop

    .line 250
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":[B
    .end local v6    # "_arg3":[B
    .end local v7    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    :goto_a3
    return v1

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_84
        :pswitch_69
        :pswitch_4a
        :pswitch_37
        :pswitch_28
        :pswitch_1f
    .end packed-switch
.end method
