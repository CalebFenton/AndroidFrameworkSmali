.class public abstract Landroid/net/connectivity/android/net/thread/IThreadNetworkController$Stub;
.super Landroid/os/Binder;
.source "IThreadNetworkController.java"

# interfaces
.implements Landroid/net/connectivity/android/net/thread/IThreadNetworkController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/thread/IThreadNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/thread/IThreadNetworkController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_activateEphemeralKeyMode:I = 0x10

.field static final blacklist TRANSACTION_createRandomizedDataset:I = 0xb

.field static final blacklist TRANSACTION_deactivateEphemeralKeyMode:I = 0x11

.field static final blacklist TRANSACTION_getThreadVersion:I = 0xa

.field static final blacklist TRANSACTION_join:I = 0x5

.field static final blacklist TRANSACTION_leave:I = 0x7

.field static final blacklist TRANSACTION_registerConfigurationCallback:I = 0xe

.field static final blacklist TRANSACTION_registerOperationalDatasetCallback:I = 0x3

.field static final blacklist TRANSACTION_registerStateCallback:I = 0x1

.field static final blacklist TRANSACTION_scheduleMigration:I = 0x6

.field static final blacklist TRANSACTION_setChannelMaxPowers:I = 0x9

.field static final blacklist TRANSACTION_setConfiguration:I = 0xd

.field static final blacklist TRANSACTION_setEnabled:I = 0xc

.field static final blacklist TRANSACTION_setTestNetworkAsUpstream:I = 0x8

.field static final blacklist TRANSACTION_unregisterConfigurationCallback:I = 0xf

.field static final blacklist TRANSACTION_unregisterOperationalDatasetCallback:I = 0x4

.field static final blacklist TRANSACTION_unregisterStateCallback:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 83
    const-string v0, "android.net.connectivity.android.net.thread.IThreadNetworkController"

    invoke-virtual {p0, p0, v0}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/thread/IThreadNetworkController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 91
    if-nez p0, :cond_4

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_4
    const-string v0, "android.net.connectivity.android.net.thread.IThreadNetworkController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 95
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/connectivity/android/net/thread/IThreadNetworkController;

    if-eqz v1, :cond_14

    .line 96
    move-object v1, v0

    check-cast v1, Landroid/net/connectivity/android/net/thread/IThreadNetworkController;

    return-object v1

    .line 98
    :cond_14
    new-instance v1, Landroid/net/connectivity/android/net/thread/IThreadNetworkController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 107
    packed-switch p0, :pswitch_data_38

    .line 179
    const/4 v0, 0x0

    return-object v0

    .line 175
    :pswitch_5
    const-string v0, "deactivateEphemeralKeyMode"

    return-object v0

    .line 171
    :pswitch_8
    const-string v0, "activateEphemeralKeyMode"

    return-object v0

    .line 167
    :pswitch_b
    const-string v0, "unregisterConfigurationCallback"

    return-object v0

    .line 163
    :pswitch_e
    const-string v0, "registerConfigurationCallback"

    return-object v0

    .line 159
    :pswitch_11
    const-string v0, "setConfiguration"

    return-object v0

    .line 155
    :pswitch_14
    const-string v0, "setEnabled"

    return-object v0

    .line 151
    :pswitch_17
    const-string v0, "createRandomizedDataset"

    return-object v0

    .line 147
    :pswitch_1a
    const-string v0, "getThreadVersion"

    return-object v0

    .line 143
    :pswitch_1d
    const-string v0, "setChannelMaxPowers"

    return-object v0

    .line 139
    :pswitch_20
    const-string v0, "setTestNetworkAsUpstream"

    return-object v0

    .line 135
    :pswitch_23
    const-string v0, "leave"

    return-object v0

    .line 131
    :pswitch_26
    const-string v0, "scheduleMigration"

    return-object v0

    .line 127
    :pswitch_29
    const-string v0, "join"

    return-object v0

    .line 123
    :pswitch_2c
    const-string v0, "unregisterOperationalDatasetCallback"

    return-object v0

    .line 119
    :pswitch_2f
    const-string v0, "registerOperationalDatasetCallback"

    return-object v0

    .line 115
    :pswitch_32
    const-string v0, "unregisterStateCallback"

    return-object v0

    .line 111
    :pswitch_35
    const-string v0, "registerStateCallback"

    return-object v0

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
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

    .line 102
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 675
    const/16 v0, 0x10

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 186
    invoke-static {p1}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 190
    const-string v0, "android.net.connectivity.android.net.thread.IThreadNetworkController"

    .line 191
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 192
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 195
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    return v1

    .line 198
    :cond_16
    packed-switch p1, :pswitch_data_186

    .line 369
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 361
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/connectivity/android/net/thread/IOperationReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/thread/IOperationReceiver;

    move-result-object v2

    .line 362
    .local v2, "_arg0":Landroid/net/connectivity/android/net/thread/IOperationReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {p0, v2}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController$Stub;->deactivateEphemeralKeyMode(Landroid/net/connectivity/android/net/thread/IOperationReceiver;)V

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    goto/16 :goto_184

    .line 350
    .end local v2    # "_arg0":Landroid/net/connectivity/android/net/thread/IOperationReceiver;
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 352
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/connectivity/android/net/thread/IOperationReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/thread/IOperationReceiver;

    move-result-object v4

    .line 353
    .local v4, "_arg1":Landroid/net/connectivity/android/net/thread/IOperationReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController$Stub;->activateEphemeralKeyMode(JLandroid/net/connectivity/android/net/thread/IOperationReceiver;)V

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    goto/16 :goto_184

    .line 341
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Landroid/net/connectivity/android/net/thread/IOperationReceiver;
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/connectivity/android/net/thread/IConfigurationReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/thread/IConfigurationReceiver;

    move-result-object v2

    .line 342
    .local v2, "_arg0":Landroid/net/connectivity/android/net/thread/IConfigurationReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, v2}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController$Stub;->unregisterConfigurationCallback(Landroid/net/connectivity/android/net/thread/IConfigurationReceiver;)V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    goto/16 :goto_184

    .line 332
    .end local v2    # "_arg0":Landroid/net/connectivity/android/net/thread/IConfigurationReceiver;
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/connectivity/android/net/thread/IConfigurationReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/thread/IConfigurationReceiver;

    move-result-object v2

    .line 333
    .restart local v2    # "_arg0":Landroid/net/connectivity/android/net/thread/IConfigurationReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {p0, v2}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController$Stub;->registerConfigurationCallback(Landroid/net/connectivity/android/net/thread/IConfigurationReceiver;)V

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    goto/16 :goto_184

    .line 321
    .end local v2    # "_arg0":Landroid/net/connectivity/android/net/thread/IConfigurationReceiver;
    :pswitch_6e
    sget-object v2, Landroid/net/thread/ThreadConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/thread/ThreadConfiguration;

    .line 323
    .local v2, "_arg0":Landroid/net/thread/ThreadConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/connectivity/android/net/thread/IOperationReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/thread/IOperationReceiver;

    move-result-object v3

    .line 324
    .local v3, "_arg1":Landroid/net/connectivity/android/net/thread/IOperationReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    invoke-virtual {p0, v2, v3}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController$Stub;->setConfiguration(Landroid/net/thread/ThreadConfiguration;Landroid/net/connectivity/android/net/thread/IOperationReceiver;)V

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    goto/16 :goto_184

    .line 310
    .end local v2    # "_arg0":Landroid/net/thread/ThreadConfiguration;
    .end local v3    # "_arg1":Landroid/net/connectivity/android/net/thread/IOperationReceiver;
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 312
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/connectivity/android/net/thread/IOperationReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/thread/IOperationReceiver;

    move-result-object v3

    .line 313
    .restart local v3    # "_arg1":Landroid/net/connectivity/android/net/thread/IOperationReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {p0, v2, v3}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController$Stub;->setEnabled(ZLandroid/net/connectivity/android/net/thread/IOperationReceiver;)V

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    goto/16 :goto_184

    .line 299
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/net/connectivity/android/net/thread/IOperationReceiver;
    :pswitch_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/connectivity/android/net/thread/IActiveOperationalDatasetReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/thread/IActiveOperationalDatasetReceiver;

    move-result-object v3

    .line 302
    .local v3, "_arg1":Landroid/net/connectivity/android/net/thread/IActiveOperationalDatasetReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, v2, v3}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController$Stub;->createRandomizedDataset(Ljava/lang/String;Landroid/net/connectivity/android/net/thread/IActiveOperationalDatasetReceiver;)V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    goto/16 :goto_184

    .line 291
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/net/connectivity/android/net/thread/IActiveOperationalDatasetReceiver;
    :pswitch_b7
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController$Stub;->getThreadVersion()I

    move-result v2

    .line 292
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    goto/16 :goto_184

    .line 281
    .end local v2    # "_result":I
    :pswitch_c3
    sget-object v2, Landroid/net/connectivity/android/net/thread/ChannelMaxPower;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/connectivity/android/net/thread/ChannelMaxPower;

    .line 283
    .local v2, "_arg0":[Landroid/net/connectivity/android/net/thread/ChannelMaxPower;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/connectivity/android/net/thread/IOperationReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/thread/IOperationReceiver;

    move-result-object v3

    .line 284
    .local v3, "_arg1":Landroid/net/connectivity/android/net/thread/IOperationReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, v2, v3}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController$Stub;->setChannelMaxPowers([Landroid/net/connectivity/android/net/thread/ChannelMaxPower;Landroid/net/connectivity/android/net/thread/IOperationReceiver;)V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    goto/16 :goto_184

    .line 270
    .end local v2    # "_arg0":[Landroid/net/connectivity/android/net/thread/ChannelMaxPower;
    .end local v3    # "_arg1":Landroid/net/connectivity/android/net/thread/IOperationReceiver;
    :pswitch_de
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/connectivity/android/net/thread/IOperationReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/thread/IOperationReceiver;

    move-result-object v3

    .line 273
    .restart local v3    # "_arg1":Landroid/net/connectivity/android/net/thread/IOperationReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    invoke-virtual {p0, v2, v3}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController$Stub;->setTestNetworkAsUpstream(Ljava/lang/String;Landroid/net/connectivity/android/net/thread/IOperationReceiver;)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    goto/16 :goto_184

    .line 261
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/net/connectivity/android/net/thread/IOperationReceiver;
    :pswitch_f5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/connectivity/android/net/thread/IOperationReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/thread/IOperationReceiver;

    move-result-object v2

    .line 262
    .local v2, "_arg0":Landroid/net/connectivity/android/net/thread/IOperationReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {p0, v2}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController$Stub;->leave(Landroid/net/connectivity/android/net/thread/IOperationReceiver;)V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    goto/16 :goto_184

    .line 250
    .end local v2    # "_arg0":Landroid/net/connectivity/android/net/thread/IOperationReceiver;
    :pswitch_108
    sget-object v2, Landroid/net/thread/PendingOperationalDataset;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/thread/PendingOperationalDataset;

    .line 252
    .local v2, "_arg0":Landroid/net/thread/PendingOperationalDataset;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/connectivity/android/net/thread/IOperationReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/thread/IOperationReceiver;

    move-result-object v3

    .line 253
    .restart local v3    # "_arg1":Landroid/net/connectivity/android/net/thread/IOperationReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, v2, v3}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController$Stub;->scheduleMigration(Landroid/net/thread/PendingOperationalDataset;Landroid/net/connectivity/android/net/thread/IOperationReceiver;)V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    goto :goto_184

    .line 239
    .end local v2    # "_arg0":Landroid/net/thread/PendingOperationalDataset;
    .end local v3    # "_arg1":Landroid/net/connectivity/android/net/thread/IOperationReceiver;
    :pswitch_122
    sget-object v2, Landroid/net/thread/ActiveOperationalDataset;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/thread/ActiveOperationalDataset;

    .line 241
    .local v2, "_arg0":Landroid/net/thread/ActiveOperationalDataset;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/connectivity/android/net/thread/IOperationReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/thread/IOperationReceiver;

    move-result-object v3

    .line 242
    .restart local v3    # "_arg1":Landroid/net/connectivity/android/net/thread/IOperationReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, v2, v3}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController$Stub;->join(Landroid/net/thread/ActiveOperationalDataset;Landroid/net/connectivity/android/net/thread/IOperationReceiver;)V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    goto :goto_184

    .line 230
    .end local v2    # "_arg0":Landroid/net/thread/ActiveOperationalDataset;
    .end local v3    # "_arg1":Landroid/net/connectivity/android/net/thread/IOperationReceiver;
    :pswitch_13c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/connectivity/android/net/thread/IOperationalDatasetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/thread/IOperationalDatasetCallback;

    move-result-object v2

    .line 231
    .local v2, "_arg0":Landroid/net/connectivity/android/net/thread/IOperationalDatasetCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, v2}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController$Stub;->unregisterOperationalDatasetCallback(Landroid/net/connectivity/android/net/thread/IOperationalDatasetCallback;)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    goto :goto_184

    .line 221
    .end local v2    # "_arg0":Landroid/net/connectivity/android/net/thread/IOperationalDatasetCallback;
    :pswitch_14e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/connectivity/android/net/thread/IOperationalDatasetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/thread/IOperationalDatasetCallback;

    move-result-object v2

    .line 222
    .restart local v2    # "_arg0":Landroid/net/connectivity/android/net/thread/IOperationalDatasetCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, v2}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController$Stub;->registerOperationalDatasetCallback(Landroid/net/connectivity/android/net/thread/IOperationalDatasetCallback;)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    goto :goto_184

    .line 212
    .end local v2    # "_arg0":Landroid/net/connectivity/android/net/thread/IOperationalDatasetCallback;
    :pswitch_160
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/connectivity/android/net/thread/IStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/thread/IStateCallback;

    move-result-object v2

    .line 213
    .local v2, "_arg0":Landroid/net/connectivity/android/net/thread/IStateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, v2}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController$Stub;->unregisterStateCallback(Landroid/net/connectivity/android/net/thread/IStateCallback;)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    goto :goto_184

    .line 203
    .end local v2    # "_arg0":Landroid/net/connectivity/android/net/thread/IStateCallback;
    :pswitch_172
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/connectivity/android/net/thread/IStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/connectivity/android/net/thread/IStateCallback;

    move-result-object v2

    .line 204
    .restart local v2    # "_arg0":Landroid/net/connectivity/android/net/thread/IStateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, v2}, Landroid/net/connectivity/android/net/thread/IThreadNetworkController$Stub;->registerStateCallback(Landroid/net/connectivity/android/net/thread/IStateCallback;)V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    nop

    .line 372
    .end local v2    # "_arg0":Landroid/net/connectivity/android/net/thread/IStateCallback;
    :goto_184
    return v1

    nop

    :pswitch_data_186
    .packed-switch 0x1
        :pswitch_172
        :pswitch_160
        :pswitch_14e
        :pswitch_13c
        :pswitch_122
        :pswitch_108
        :pswitch_f5
        :pswitch_de
        :pswitch_c3
        :pswitch_b7
        :pswitch_a0
        :pswitch_89
        :pswitch_6e
        :pswitch_5b
        :pswitch_48
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
