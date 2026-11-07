.class public abstract Landroid/app/wearable/IWearableSensingManager$Stub;
.super Landroid/os/Binder;
.source "IWearableSensingManager.java"

# interfaces
.implements Landroid/app/wearable/IWearableSensingManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wearable/IWearableSensingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wearable/IWearableSensingManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getAvailableConnectionCount:I = 0x1

.field static final blacklist TRANSACTION_provideConcurrentConnection:I = 0x3

.field static final blacklist TRANSACTION_provideConnection:I = 0x2

.field static final blacklist TRANSACTION_provideData:I = 0x8

.field static final blacklist TRANSACTION_provideDataStream:I = 0x7

.field static final blacklist TRANSACTION_provideReadOnlyParcelFileDescriptor:I = 0x6

.field static final blacklist TRANSACTION_registerDataRequestObserver:I = 0x9

.field static final blacklist TRANSACTION_removeAllConnections:I = 0x5

.field static final blacklist TRANSACTION_removeConnection:I = 0x4

.field static final blacklist TRANSACTION_startHotwordRecognition:I = 0xb

.field static final blacklist TRANSACTION_stopHotwordRecognition:I = 0xc

.field static final blacklist TRANSACTION_unregisterDataRequestObserver:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    const-string v0, "android.app.wearable.IWearableSensingManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/wearable/IWearableSensingManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/wearable/IWearableSensingManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 79
    if-nez p0, :cond_4

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_4
    const-string v0, "android.app.wearable.IWearableSensingManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 83
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/wearable/IWearableSensingManager;

    if-eqz v1, :cond_14

    .line 84
    move-object v1, v0

    check-cast v1, Landroid/app/wearable/IWearableSensingManager;

    return-object v1

    .line 86
    :cond_14
    new-instance v1, Landroid/app/wearable/IWearableSensingManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/wearable/IWearableSensingManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 95
    packed-switch p0, :pswitch_data_34

    .line 147
    const/4 v0, 0x0

    return-object v0

    .line 143
    :pswitch_5
    const-string/jumbo v0, "stopHotwordRecognition"

    return-object v0

    .line 139
    :pswitch_9
    const-string/jumbo v0, "startHotwordRecognition"

    return-object v0

    .line 135
    :pswitch_d
    const-string/jumbo v0, "unregisterDataRequestObserver"

    return-object v0

    .line 131
    :pswitch_11
    const-string/jumbo v0, "registerDataRequestObserver"

    return-object v0

    .line 127
    :pswitch_15
    const-string/jumbo v0, "provideData"

    return-object v0

    .line 123
    :pswitch_19
    const-string/jumbo v0, "provideDataStream"

    return-object v0

    .line 119
    :pswitch_1d
    const-string/jumbo v0, "provideReadOnlyParcelFileDescriptor"

    return-object v0

    .line 115
    :pswitch_21
    const-string/jumbo v0, "removeAllConnections"

    return-object v0

    .line 111
    :pswitch_25
    const-string/jumbo v0, "removeConnection"

    return-object v0

    .line 107
    :pswitch_29
    const-string/jumbo v0, "provideConcurrentConnection"

    return-object v0

    .line 103
    :pswitch_2d
    const-string/jumbo v0, "provideConnection"

    return-object v0

    .line 99
    :pswitch_31
    const-string v0, "getAvailableConnectionCount"

    return-object v0

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 90
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 546
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 154
    invoke-static {p1}, Landroid/app/wearable/IWearableSensingManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 158
    const-string v0, "android.app.wearable.IWearableSensingManager"

    .line 159
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 160
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 163
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    return v1

    .line 166
    :cond_16
    packed-switch p1, :pswitch_data_168

    .line 307
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 299
    :pswitch_1e
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 300
    .local v2, "_arg0":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {p0, v2}, Landroid/app/wearable/IWearableSensingManager$Stub;->stopHotwordRecognition(Landroid/os/RemoteCallback;)V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    goto/16 :goto_166

    .line 288
    .end local v2    # "_arg0":Landroid/os/RemoteCallback;
    :pswitch_31
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 290
    .local v2, "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 291
    .local v3, "_arg1":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    invoke-virtual {p0, v2, v3}, Landroid/app/wearable/IWearableSensingManager$Stub;->startHotwordRecognition(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    goto/16 :goto_166

    .line 275
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/os/RemoteCallback;
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 277
    .local v2, "_arg0":I
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 279
    .local v3, "_arg1":Landroid/app/PendingIntent;
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallback;

    .line 280
    .local v4, "_arg2":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/wearable/IWearableSensingManager$Stub;->unregisterDataRequestObserver(ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    goto/16 :goto_166

    .line 262
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/app/PendingIntent;
    .end local v4    # "_arg2":Landroid/os/RemoteCallback;
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 264
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 266
    .restart local v3    # "_arg1":Landroid/app/PendingIntent;
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallback;

    .line 267
    .restart local v4    # "_arg2":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/wearable/IWearableSensingManager$Stub;->registerDataRequestObserver(ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    goto/16 :goto_166

    .line 249
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/app/PendingIntent;
    .end local v4    # "_arg2":Landroid/os/RemoteCallback;
    :pswitch_8a
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 251
    .local v2, "_arg0":Landroid/os/PersistableBundle;
    sget-object v3, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/SharedMemory;

    .line 253
    .local v3, "_arg1":Landroid/os/SharedMemory;
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallback;

    .line 254
    .restart local v4    # "_arg2":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/wearable/IWearableSensingManager$Stub;->provideData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    goto/16 :goto_166

    .line 236
    .end local v2    # "_arg0":Landroid/os/PersistableBundle;
    .end local v3    # "_arg1":Landroid/os/SharedMemory;
    .end local v4    # "_arg2":Landroid/os/RemoteCallback;
    :pswitch_ad
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 238
    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/wearable/IWearableSensingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/wearable/IWearableSensingCallback;

    move-result-object v3

    .line 240
    .local v3, "_arg1":Landroid/app/wearable/IWearableSensingCallback;
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallback;

    .line 241
    .restart local v4    # "_arg2":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/wearable/IWearableSensingManager$Stub;->provideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    goto/16 :goto_166

    .line 223
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg1":Landroid/app/wearable/IWearableSensingCallback;
    .end local v4    # "_arg2":Landroid/os/RemoteCallback;
    :pswitch_d0
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 225
    .restart local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 227
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallback;

    .line 228
    .restart local v4    # "_arg2":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/wearable/IWearableSensingManager$Stub;->provideReadOnlyParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/os/RemoteCallback;)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    goto :goto_166

    .line 216
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    .end local v4    # "_arg2":Landroid/os/RemoteCallback;
    :pswitch_f2
    invoke-virtual {p0}, Landroid/app/wearable/IWearableSensingManager$Stub;->removeAllConnections()V

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    goto :goto_166

    .line 207
    :pswitch_f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 208
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v2}, Landroid/app/wearable/IWearableSensingManager$Stub;->removeConnection(I)Z

    move-result v3

    .line 210
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 212
    goto :goto_166

    .line 191
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_10b
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 193
    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 195
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/wearable/IWearableSensingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/wearable/IWearableSensingCallback;

    move-result-object v4

    .line 197
    .local v4, "_arg2":Landroid/app/wearable/IWearableSensingCallback;
    sget-object v5, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/RemoteCallback;

    .line 198
    .local v5, "_arg3":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/wearable/IWearableSensingManager$Stub;->provideConcurrentConnection(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)I

    move-result v6

    .line 200
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    goto :goto_166

    .line 178
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    .end local v4    # "_arg2":Landroid/app/wearable/IWearableSensingCallback;
    .end local v5    # "_arg3":Landroid/os/RemoteCallback;
    .end local v6    # "_result":I
    :pswitch_139
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 180
    .restart local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/wearable/IWearableSensingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/wearable/IWearableSensingCallback;

    move-result-object v3

    .line 182
    .local v3, "_arg1":Landroid/app/wearable/IWearableSensingCallback;
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallback;

    .line 183
    .local v4, "_arg2":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/wearable/IWearableSensingManager$Stub;->provideConnection(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    goto :goto_166

    .line 170
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg1":Landroid/app/wearable/IWearableSensingCallback;
    .end local v4    # "_arg2":Landroid/os/RemoteCallback;
    :pswitch_15b
    invoke-virtual {p0}, Landroid/app/wearable/IWearableSensingManager$Stub;->getAvailableConnectionCount()I

    move-result v2

    .line 171
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    nop

    .line 310
    .end local v2    # "_result":I
    :goto_166
    return v1

    nop

    :pswitch_data_168
    .packed-switch 0x1
        :pswitch_15b
        :pswitch_139
        :pswitch_10b
        :pswitch_f9
        :pswitch_f2
        :pswitch_d0
        :pswitch_ad
        :pswitch_8a
        :pswitch_6b
        :pswitch_4c
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
