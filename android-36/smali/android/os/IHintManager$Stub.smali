.class public abstract Landroid/os/IHintManager$Stub;
.super Landroid/os/Binder;
.source "IHintManager.java"

# interfaces
.implements Landroid/os/IHintManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IHintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IHintManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_closeSessionChannel:I = 0x5

.field static final blacklist TRANSACTION_createHintSessionWithConfig:I = 0x1

.field static final blacklist TRANSACTION_getClientData:I = 0xc

.field static final blacklist TRANSACTION_getCpuHeadroom:I = 0x6

.field static final blacklist TRANSACTION_getCpuHeadroomMinIntervalMillis:I = 0x7

.field static final blacklist TRANSACTION_getGpuHeadroom:I = 0x8

.field static final blacklist TRANSACTION_getGpuHeadroomMinIntervalMillis:I = 0x9

.field static final blacklist TRANSACTION_getHintSessionThreadIds:I = 0x3

.field static final blacklist TRANSACTION_getSessionChannel:I = 0x4

.field static final blacklist TRANSACTION_passSessionManagerBinder:I = 0xa

.field static final blacklist TRANSACTION_registerClient:I = 0xb

.field static final blacklist TRANSACTION_setHintSessionThreads:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 93
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 94
    const-string v0, "android.os.IHintManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IHintManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IHintManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 102
    if-nez p0, :cond_4

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 105
    :cond_4
    const-string v0, "android.os.IHintManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 106
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IHintManager;

    if-eqz v1, :cond_14

    .line 107
    move-object v1, v0

    check-cast v1, Landroid/os/IHintManager;

    return-object v1

    .line 109
    :cond_14
    new-instance v1, Landroid/os/IHintManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IHintManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 118
    packed-switch p0, :pswitch_data_2e

    .line 170
    const/4 v0, 0x0

    return-object v0

    .line 166
    :pswitch_5
    const-string v0, "getClientData"

    return-object v0

    .line 162
    :pswitch_8
    const-string/jumbo v0, "registerClient"

    return-object v0

    .line 158
    :pswitch_c
    const-string/jumbo v0, "passSessionManagerBinder"

    return-object v0

    .line 154
    :pswitch_10
    const-string v0, "getGpuHeadroomMinIntervalMillis"

    return-object v0

    .line 150
    :pswitch_13
    const-string v0, "getGpuHeadroom"

    return-object v0

    .line 146
    :pswitch_16
    const-string v0, "getCpuHeadroomMinIntervalMillis"

    return-object v0

    .line 142
    :pswitch_19
    const-string v0, "getCpuHeadroom"

    return-object v0

    .line 138
    :pswitch_1c
    const-string v0, "closeSessionChannel"

    return-object v0

    .line 134
    :pswitch_1f
    const-string/jumbo v0, "getSessionChannel"

    return-object v0

    .line 130
    :pswitch_23
    const-string v0, "getHintSessionThreadIds"

    return-object v0

    .line 126
    :pswitch_26
    const-string/jumbo v0, "setHintSessionThreads"

    return-object v0

    .line 122
    :pswitch_2a
    const-string v0, "createHintSessionWithConfig"

    return-object v0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_26
        :pswitch_23
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 113
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 565
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 177
    invoke-static {p1}, Landroid/os/IHintManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    const-string v0, "android.os.IHintManager"

    .line 182
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 183
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 186
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    return v1

    .line 189
    :cond_16
    packed-switch p1, :pswitch_data_fc

    .line 305
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 298
    :pswitch_1e
    invoke-virtual {p0}, Landroid/os/IHintManager$Stub;->getClientData()Landroid/os/IHintManager$HintManagerClientData;

    move-result-object v2

    .line 299
    .local v2, "_result":Landroid/os/IHintManager$HintManagerClientData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 301
    goto/16 :goto_fa

    .line 289
    .end local v2    # "_result":Landroid/os/IHintManager$HintManagerClientData;
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IHintManager$IHintManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHintManager$IHintManagerClient;

    move-result-object v2

    .line 290
    .local v2, "_arg0":Landroid/os/IHintManager$IHintManagerClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, v2}, Landroid/os/IHintManager$Stub;->registerClient(Landroid/os/IHintManager$IHintManagerClient;)Landroid/os/IHintManager$HintManagerClientData;

    move-result-object v3

    .line 292
    .local v3, "_result":Landroid/os/IHintManager$HintManagerClientData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 294
    goto/16 :goto_fa

    .line 281
    .end local v2    # "_arg0":Landroid/os/IHintManager$IHintManagerClient;
    .end local v3    # "_result":Landroid/os/IHintManager$HintManagerClientData;
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 282
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {p0, v2}, Landroid/os/IHintManager$Stub;->passSessionManagerBinder(Landroid/os/IBinder;)V

    .line 284
    goto/16 :goto_fa

    .line 273
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_4d
    invoke-virtual {p0}, Landroid/os/IHintManager$Stub;->getGpuHeadroomMinIntervalMillis()J

    move-result-wide v2

    .line 274
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 276
    goto/16 :goto_fa

    .line 264
    .end local v2    # "_result":J
    :pswitch_59
    sget-object v2, Landroid/os/GpuHeadroomParamsInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/GpuHeadroomParamsInternal;

    .line 265
    .local v2, "_arg0":Landroid/os/GpuHeadroomParamsInternal;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {p0, v2}, Landroid/os/IHintManager$Stub;->getGpuHeadroom(Landroid/os/GpuHeadroomParamsInternal;)Landroid/hardware/power/GpuHeadroomResult;

    move-result-object v3

    .line 267
    .local v3, "_result":Landroid/hardware/power/GpuHeadroomResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 269
    goto/16 :goto_fa

    .line 256
    .end local v2    # "_arg0":Landroid/os/GpuHeadroomParamsInternal;
    .end local v3    # "_result":Landroid/hardware/power/GpuHeadroomResult;
    :pswitch_70
    invoke-virtual {p0}, Landroid/os/IHintManager$Stub;->getCpuHeadroomMinIntervalMillis()J

    move-result-wide v2

    .line 257
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 259
    goto/16 :goto_fa

    .line 247
    .end local v2    # "_result":J
    :pswitch_7c
    sget-object v2, Landroid/os/CpuHeadroomParamsInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/CpuHeadroomParamsInternal;

    .line 248
    .local v2, "_arg0":Landroid/os/CpuHeadroomParamsInternal;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    invoke-virtual {p0, v2}, Landroid/os/IHintManager$Stub;->getCpuHeadroom(Landroid/os/CpuHeadroomParamsInternal;)Landroid/hardware/power/CpuHeadroomResult;

    move-result-object v3

    .line 250
    .local v3, "_result":Landroid/hardware/power/CpuHeadroomResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 252
    goto :goto_fa

    .line 241
    .end local v2    # "_arg0":Landroid/os/CpuHeadroomParamsInternal;
    .end local v3    # "_result":Landroid/hardware/power/CpuHeadroomResult;
    :pswitch_92
    invoke-virtual {p0}, Landroid/os/IHintManager$Stub;->closeSessionChannel()V

    .line 242
    goto :goto_fa

    .line 232
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 233
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, v2}, Landroid/os/IHintManager$Stub;->getSessionChannel(Landroid/os/IBinder;)Landroid/hardware/power/ChannelConfig;

    move-result-object v3

    .line 235
    .local v3, "_result":Landroid/hardware/power/ChannelConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 237
    goto :goto_fa

    .line 222
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Landroid/hardware/power/ChannelConfig;
    :pswitch_a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IHintSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHintSession;

    move-result-object v2

    .line 223
    .local v2, "_arg0":Landroid/os/IHintSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v2}, Landroid/os/IHintManager$Stub;->getHintSessionThreadIds(Landroid/os/IHintSession;)[I

    move-result-object v3

    .line 225
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 227
    goto :goto_fa

    .line 211
    .end local v2    # "_arg0":Landroid/os/IHintSession;
    .end local v3    # "_result":[I
    :pswitch_be
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IHintSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHintSession;

    move-result-object v2

    .line 213
    .restart local v2    # "_arg0":Landroid/os/IHintSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 214
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v2, v3}, Landroid/os/IHintManager$Stub;->setHintSessionThreads(Landroid/os/IHintSession;[I)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    goto :goto_fa

    .line 194
    .end local v2    # "_arg0":Landroid/os/IHintSession;
    .end local v3    # "_arg1":[I
    :pswitch_d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 196
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 198
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/SessionCreationConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/SessionCreationConfig;

    .line 200
    .local v4, "_arg2":Landroid/os/SessionCreationConfig;
    new-instance v5, Landroid/hardware/power/SessionConfig;

    invoke-direct {v5}, Landroid/hardware/power/SessionConfig;-><init>()V

    .line 201
    .local v5, "_arg3":Landroid/hardware/power/SessionConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/os/IHintManager$Stub;->createHintSessionWithConfig(Landroid/os/IBinder;ILandroid/os/SessionCreationConfig;Landroid/hardware/power/SessionConfig;)Landroid/os/IHintManager$SessionCreationReturn;

    move-result-object v6

    .line 203
    .local v6, "_result":Landroid/os/IHintManager$SessionCreationReturn;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 205
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 206
    nop

    .line 308
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/SessionCreationConfig;
    .end local v5    # "_arg3":Landroid/hardware/power/SessionConfig;
    .end local v6    # "_result":Landroid/os/IHintManager$SessionCreationReturn;
    :goto_fa
    return v1

    nop

    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_d4
        :pswitch_be
        :pswitch_a8
        :pswitch_96
        :pswitch_92
        :pswitch_7c
        :pswitch_70
        :pswitch_59
        :pswitch_4d
        :pswitch_41
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
