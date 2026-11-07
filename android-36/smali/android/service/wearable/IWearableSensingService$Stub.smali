.class public abstract Landroid/service/wearable/IWearableSensingService$Stub;
.super Landroid/os/Binder;
.source "IWearableSensingService.java"

# interfaces
.implements Landroid/service/wearable/IWearableSensingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wearable/IWearableSensingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wearable/IWearableSensingService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_killProcess:I = 0xf

.field static final blacklist TRANSACTION_onValidatedByHotwordDetectionService:I = 0xa

.field static final blacklist TRANSACTION_provideConcurrentSecureConnection:I = 0x2

.field static final blacklist TRANSACTION_provideData:I = 0x5

.field static final blacklist TRANSACTION_provideDataStream:I = 0x4

.field static final blacklist TRANSACTION_provideReadOnlyParcelFileDescriptor:I = 0x3

.field static final blacklist TRANSACTION_provideSecureConnection:I = 0x1

.field static final blacklist TRANSACTION_queryServiceStatus:I = 0xe

.field static final blacklist TRANSACTION_registerDataRequestObserver:I = 0x6

.field static final blacklist TRANSACTION_startDetection:I = 0xc

.field static final blacklist TRANSACTION_startHotwordRecognition:I = 0x8

.field static final blacklist TRANSACTION_stopActiveHotwordAudio:I = 0xb

.field static final blacklist TRANSACTION_stopDetection:I = 0xd

.field static final blacklist TRANSACTION_stopHotwordRecognition:I = 0x9

.field static final blacklist TRANSACTION_unregisterDataRequestObserver:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 78
    const-string v0, "android.service.wearable.IWearableSensingService"

    invoke-virtual {p0, p0, v0}, Landroid/service/wearable/IWearableSensingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/wearable/IWearableSensingService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 86
    if-nez p0, :cond_4

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 89
    :cond_4
    const-string v0, "android.service.wearable.IWearableSensingService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 90
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/wearable/IWearableSensingService;

    if-eqz v1, :cond_14

    .line 91
    move-object v1, v0

    check-cast v1, Landroid/service/wearable/IWearableSensingService;

    return-object v1

    .line 93
    :cond_14
    new-instance v1, Landroid/service/wearable/IWearableSensingService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/wearable/IWearableSensingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 102
    packed-switch p0, :pswitch_data_42

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 162
    :pswitch_5
    const-string/jumbo v0, "killProcess"

    return-object v0

    .line 158
    :pswitch_9
    const-string/jumbo v0, "queryServiceStatus"

    return-object v0

    .line 154
    :pswitch_d
    const-string/jumbo v0, "stopDetection"

    return-object v0

    .line 150
    :pswitch_11
    const-string/jumbo v0, "startDetection"

    return-object v0

    .line 146
    :pswitch_15
    const-string/jumbo v0, "stopActiveHotwordAudio"

    return-object v0

    .line 142
    :pswitch_19
    const-string/jumbo v0, "onValidatedByHotwordDetectionService"

    return-object v0

    .line 138
    :pswitch_1d
    const-string/jumbo v0, "stopHotwordRecognition"

    return-object v0

    .line 134
    :pswitch_21
    const-string/jumbo v0, "startHotwordRecognition"

    return-object v0

    .line 130
    :pswitch_25
    const-string/jumbo v0, "unregisterDataRequestObserver"

    return-object v0

    .line 126
    :pswitch_29
    const-string/jumbo v0, "registerDataRequestObserver"

    return-object v0

    .line 122
    :pswitch_2d
    const-string/jumbo v0, "provideData"

    return-object v0

    .line 118
    :pswitch_31
    const-string/jumbo v0, "provideDataStream"

    return-object v0

    .line 114
    :pswitch_35
    const-string/jumbo v0, "provideReadOnlyParcelFileDescriptor"

    return-object v0

    .line 110
    :pswitch_39
    const-string/jumbo v0, "provideConcurrentSecureConnection"

    return-object v0

    .line 106
    :pswitch_3d
    const-string/jumbo v0, "provideSecureConnection"

    return-object v0

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_39
        :pswitch_35
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

    .line 97
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 588
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 173
    invoke-static {p1}, Landroid/service/wearable/IWearableSensingService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    const-string v6, "android.service.wearable.IWearableSensingService"

    .line 178
    .local v6, "descriptor":Ljava/lang/String;
    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 179
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 182
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    return v7

    .line 185
    :cond_16
    packed-switch p1, :pswitch_data_184

    .line 348
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 343
    :pswitch_1e
    invoke-virtual {p0}, Landroid/service/wearable/IWearableSensingService$Stub;->killProcess()V

    .line 344
    goto/16 :goto_182

    .line 332
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 334
    .local v1, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 337
    .local v3, "_arg2":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {p0, v1, v2, v3}, Landroid/service/wearable/IWearableSensingService$Stub;->queryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 339
    goto/16 :goto_182

    .line 324
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/RemoteCallback;
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, v1}, Landroid/service/wearable/IWearableSensingService$Stub;->stopDetection(Ljava/lang/String;)V

    .line 327
    goto/16 :goto_182

    .line 310
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_47
    sget-object v1, Landroid/app/ambientcontext/AmbientContextEventRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 312
    .local v1, "_arg0":Landroid/app/ambientcontext/AmbientContextEventRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 314
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 316
    .restart local v3    # "_arg2":Landroid/os/RemoteCallback;
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallback;

    .line 317
    .local v4, "_arg3":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/service/wearable/IWearableSensingService$Stub;->startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 319
    goto/16 :goto_182

    .line 304
    .end local v1    # "_arg0":Landroid/app/ambientcontext/AmbientContextEventRequest;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/RemoteCallback;
    .end local v4    # "_arg3":Landroid/os/RemoteCallback;
    :pswitch_6b
    invoke-virtual {p0}, Landroid/service/wearable/IWearableSensingService$Stub;->stopActiveHotwordAudio()V

    .line 305
    goto/16 :goto_182

    .line 299
    :pswitch_70
    invoke-virtual {p0}, Landroid/service/wearable/IWearableSensingService$Stub;->onValidatedByHotwordDetectionService()V

    .line 300
    goto/16 :goto_182

    .line 292
    :pswitch_75
    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    .line 293
    .local v1, "_arg0":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, v1}, Landroid/service/wearable/IWearableSensingService$Stub;->stopHotwordRecognition(Landroid/os/RemoteCallback;)V

    .line 295
    goto/16 :goto_182

    .line 282
    .end local v1    # "_arg0":Landroid/os/RemoteCallback;
    :pswitch_85
    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    .line 284
    .restart local v1    # "_arg0":Landroid/os/RemoteCallback;
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 285
    .local v2, "_arg1":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, v1, v2}, Landroid/service/wearable/IWearableSensingService$Stub;->startHotwordRecognition(Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 287
    goto/16 :goto_182

    .line 268
    .end local v1    # "_arg0":Landroid/os/RemoteCallback;
    .end local v2    # "_arg1":Landroid/os/RemoteCallback;
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 270
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 272
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallback;

    .line 275
    .restart local v4    # "_arg3":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/service/wearable/IWearableSensingService$Stub;->unregisterDataRequestObserver(IILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 277
    goto/16 :goto_182

    .line 252
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/os/RemoteCallback;
    :pswitch_b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 254
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 256
    .local v2, "_arg1":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 258
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, "_arg3":Ljava/lang/String;
    sget-object v5, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/RemoteCallback;

    .line 261
    .local v5, "_arg4":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/service/wearable/IWearableSensingService$Stub;->registerDataRequestObserver(ILandroid/os/RemoteCallback;ILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 263
    goto/16 :goto_182

    .line 240
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/RemoteCallback;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/RemoteCallback;
    :pswitch_de
    sget-object v1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .line 242
    .local v1, "_arg0":Landroid/os/PersistableBundle;
    sget-object v2, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/SharedMemory;

    .line 244
    .local v2, "_arg1":Landroid/os/SharedMemory;
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 245
    .local v3, "_arg2":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {p0, v1, v2, v3}, Landroid/service/wearable/IWearableSensingService$Stub;->provideData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V

    .line 247
    goto/16 :goto_182

    .line 228
    .end local v1    # "_arg0":Landroid/os/PersistableBundle;
    .end local v2    # "_arg1":Landroid/os/SharedMemory;
    .end local v3    # "_arg2":Landroid/os/RemoteCallback;
    :pswitch_fe
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 230
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/wearable/IWearableSensingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/wearable/IWearableSensingCallback;

    move-result-object v2

    .line 232
    .local v2, "_arg1":Landroid/app/wearable/IWearableSensingCallback;
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 233
    .restart local v3    # "_arg2":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, v1, v2, v3}, Landroid/service/wearable/IWearableSensingService$Stub;->provideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    .line 235
    goto :goto_182

    .line 216
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":Landroid/app/wearable/IWearableSensingCallback;
    .end local v3    # "_arg2":Landroid/os/RemoteCallback;
    :pswitch_11d
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 218
    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 220
    .local v2, "_arg1":Landroid/os/PersistableBundle;
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 221
    .restart local v3    # "_arg2":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, v1, v2, v3}, Landroid/service/wearable/IWearableSensingService$Stub;->provideReadOnlyParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/os/RemoteCallback;)V

    .line 223
    goto :goto_182

    .line 202
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":Landroid/os/PersistableBundle;
    .end local v3    # "_arg2":Landroid/os/RemoteCallback;
    :pswitch_13c
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 204
    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 206
    .restart local v2    # "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/wearable/IWearableSensingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/wearable/IWearableSensingCallback;

    move-result-object v3

    .line 208
    .local v3, "_arg2":Landroid/app/wearable/IWearableSensingCallback;
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallback;

    .line 209
    .local v4, "_arg3":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/service/wearable/IWearableSensingService$Stub;->provideConcurrentSecureConnection(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    .line 211
    goto :goto_182

    .line 190
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":Landroid/os/PersistableBundle;
    .end local v3    # "_arg2":Landroid/app/wearable/IWearableSensingCallback;
    .end local v4    # "_arg3":Landroid/os/RemoteCallback;
    :pswitch_163
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 192
    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/wearable/IWearableSensingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/wearable/IWearableSensingCallback;

    move-result-object v2

    .line 194
    .local v2, "_arg1":Landroid/app/wearable/IWearableSensingCallback;
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 195
    .local v3, "_arg2":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v1, v2, v3}, Landroid/service/wearable/IWearableSensingService$Stub;->provideSecureConnection(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    .line 197
    nop

    .line 351
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":Landroid/app/wearable/IWearableSensingCallback;
    .end local v3    # "_arg2":Landroid/os/RemoteCallback;
    :goto_182
    return v7

    nop

    :pswitch_data_184
    .packed-switch 0x1
        :pswitch_163
        :pswitch_13c
        :pswitch_11d
        :pswitch_fe
        :pswitch_de
        :pswitch_b9
        :pswitch_9d
        :pswitch_85
        :pswitch_75
        :pswitch_70
        :pswitch_6b
        :pswitch_47
        :pswitch_3b
        :pswitch_23
        :pswitch_1e
    .end packed-switch
.end method
