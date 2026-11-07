.class public abstract Landroid/telephony/data/IDataService$Stub;
.super Landroid/os/Binder;
.source "IDataService.java"

# interfaces
.implements Landroid/telephony/data/IDataService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/IDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/IDataService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.telephony.data.IDataService"

.field static final blacklist TRANSACTION_cancelHandover:I = 0xb

.field static final greylist-max-o TRANSACTION_createDataServiceProvider:I = 0x1

.field static final greylist-max-o TRANSACTION_deactivateDataCall:I = 0x4

.field static final greylist-max-o TRANSACTION_registerForDataCallListChanged:I = 0x8

.field static final blacklist TRANSACTION_registerForUnthrottleApn:I = 0xc

.field static final greylist-max-o TRANSACTION_removeDataServiceProvider:I = 0x2

.field static final blacklist TRANSACTION_requestDataCallList:I = 0x7

.field static final blacklist TRANSACTION_requestNetworkValidation:I = 0xe

.field static final greylist-max-o TRANSACTION_setDataProfile:I = 0x6

.field static final greylist-max-o TRANSACTION_setInitialAttachApn:I = 0x5

.field static final greylist-max-o TRANSACTION_setupDataCall:I = 0x3

.field static final blacklist TRANSACTION_startHandover:I = 0xa

.field static final greylist-max-o TRANSACTION_unregisterForDataCallListChanged:I = 0x9

.field static final blacklist TRANSACTION_unregisterForUnthrottleApn:I = 0xd


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 70
    const-string v0, "android.telephony.data.IDataService"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/data/IDataService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 78
    if-nez p0, :cond_4

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_4
    const-string v0, "android.telephony.data.IDataService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 82
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/data/IDataService;

    if-eqz v1, :cond_14

    .line 83
    move-object v1, v0

    check-cast v1, Landroid/telephony/data/IDataService;

    return-object v1

    .line 85
    :cond_14
    new-instance v1, Landroid/telephony/data/IDataService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/data/IDataService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 94
    packed-switch p0, :pswitch_data_3a

    .line 154
    const/4 v0, 0x0

    return-object v0

    .line 150
    :pswitch_5
    const-string/jumbo v0, "requestNetworkValidation"

    return-object v0

    .line 146
    :pswitch_9
    const-string/jumbo v0, "unregisterForUnthrottleApn"

    return-object v0

    .line 142
    :pswitch_d
    const-string/jumbo v0, "registerForUnthrottleApn"

    return-object v0

    .line 138
    :pswitch_11
    const-string v0, "cancelHandover"

    return-object v0

    .line 134
    :pswitch_14
    const-string/jumbo v0, "startHandover"

    return-object v0

    .line 130
    :pswitch_18
    const-string/jumbo v0, "unregisterForDataCallListChanged"

    return-object v0

    .line 126
    :pswitch_1c
    const-string/jumbo v0, "registerForDataCallListChanged"

    return-object v0

    .line 122
    :pswitch_20
    const-string/jumbo v0, "requestDataCallList"

    return-object v0

    .line 118
    :pswitch_24
    const-string/jumbo v0, "setDataProfile"

    return-object v0

    .line 114
    :pswitch_28
    const-string/jumbo v0, "setInitialAttachApn"

    return-object v0

    .line 110
    :pswitch_2c
    const-string v0, "deactivateDataCall"

    return-object v0

    .line 106
    :pswitch_2f
    const-string/jumbo v0, "setupDataCall"

    return-object v0

    .line 102
    :pswitch_33
    const-string/jumbo v0, "removeDataServiceProvider"

    return-object v0

    .line 98
    :pswitch_37
    const-string v0, "createDataServiceProvider"

    return-object v0

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 89
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 590
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 161
    invoke-static {p1}, Landroid/telephony/data/IDataService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    move-object/from16 v0, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    const-string v15, "android.telephony.data.IDataService"

    .line 166
    .local v15, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt v13, v1, :cond_13

    const v2, 0xffffff

    if-gt v13, v2, :cond_13

    .line 167
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    :cond_13
    const v2, 0x5f4e5446

    if-ne v13, v2, :cond_1e

    .line 170
    move-object/from16 v2, p3

    invoke-virtual {v2, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    return v1

    .line 173
    :cond_1e
    move-object/from16 v2, p3

    packed-switch v13, :pswitch_data_1ba

    .line 351
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 340
    :pswitch_28
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 342
    .local v3, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 344
    .local v4, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v5

    .line 345
    .local v5, "_arg2":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    invoke-virtual {v0, v3, v4, v5}, Landroid/telephony/data/IDataService$Stub;->requestNetworkValidation(IILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 347
    move/from16 v16, v1

    goto/16 :goto_1b9

    .line 330
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Lcom/android/internal/telephony/IIntegerConsumer;
    :pswitch_42
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 332
    .restart local v3    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v4

    .line 333
    .local v4, "_arg1":Landroid/telephony/data/IDataServiceCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {v0, v3, v4}, Landroid/telephony/data/IDataService$Stub;->unregisterForUnthrottleApn(ILandroid/telephony/data/IDataServiceCallback;)V

    .line 335
    move/from16 v16, v1

    goto/16 :goto_1b9

    .line 320
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_58
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 322
    .restart local v3    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v4

    .line 323
    .restart local v4    # "_arg1":Landroid/telephony/data/IDataServiceCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {v0, v3, v4}, Landroid/telephony/data/IDataService$Stub;->registerForUnthrottleApn(ILandroid/telephony/data/IDataServiceCallback;)V

    .line 325
    move/from16 v16, v1

    goto/16 :goto_1b9

    .line 308
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_6e
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 310
    .restart local v3    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 312
    .local v4, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v5

    .line 313
    .local v5, "_arg2":Landroid/telephony/data/IDataServiceCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {v0, v3, v4, v5}, Landroid/telephony/data/IDataService$Stub;->cancelHandover(IILandroid/telephony/data/IDataServiceCallback;)V

    .line 315
    move/from16 v16, v1

    goto/16 :goto_1b9

    .line 296
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_88
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 298
    .restart local v3    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 300
    .restart local v4    # "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v5

    .line 301
    .restart local v5    # "_arg2":Landroid/telephony/data/IDataServiceCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    invoke-virtual {v0, v3, v4, v5}, Landroid/telephony/data/IDataService$Stub;->startHandover(IILandroid/telephony/data/IDataServiceCallback;)V

    .line 303
    move/from16 v16, v1

    goto/16 :goto_1b9

    .line 286
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_a2
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 288
    .restart local v3    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v4

    .line 289
    .local v4, "_arg1":Landroid/telephony/data/IDataServiceCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {v0, v3, v4}, Landroid/telephony/data/IDataService$Stub;->unregisterForDataCallListChanged(ILandroid/telephony/data/IDataServiceCallback;)V

    .line 291
    move/from16 v16, v1

    goto/16 :goto_1b9

    .line 276
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_b8
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 278
    .restart local v3    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v4

    .line 279
    .restart local v4    # "_arg1":Landroid/telephony/data/IDataServiceCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {v0, v3, v4}, Landroid/telephony/data/IDataService$Stub;->registerForDataCallListChanged(ILandroid/telephony/data/IDataServiceCallback;)V

    .line 281
    move/from16 v16, v1

    goto/16 :goto_1b9

    .line 266
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_ce
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 268
    .restart local v3    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v4

    .line 269
    .restart local v4    # "_arg1":Landroid/telephony/data/IDataServiceCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {v0, v3, v4}, Landroid/telephony/data/IDataService$Stub;->requestDataCallList(ILandroid/telephony/data/IDataServiceCallback;)V

    .line 271
    move/from16 v16, v1

    goto/16 :goto_1b9

    .line 252
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_e4
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 254
    .restart local v3    # "_arg0":I
    sget-object v4, Landroid/telephony/data/DataProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 256
    .local v4, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataProfile;>;"
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 258
    .local v5, "_arg2":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v6

    .line 259
    .local v6, "_arg3":Landroid/telephony/data/IDataServiceCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/telephony/data/IDataService$Stub;->setDataProfile(ILjava/util/List;ZLandroid/telephony/data/IDataServiceCallback;)V

    .line 261
    move/from16 v16, v1

    goto/16 :goto_1b9

    .line 238
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataProfile;>;"
    .end local v5    # "_arg2":Z
    .end local v6    # "_arg3":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_104
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 240
    .restart local v3    # "_arg0":I
    sget-object v4, Landroid/telephony/data/DataProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/data/DataProfile;

    .line 242
    .local v4, "_arg1":Landroid/telephony/data/DataProfile;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 244
    .restart local v5    # "_arg2":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v6

    .line 245
    .restart local v6    # "_arg3":Landroid/telephony/data/IDataServiceCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/telephony/data/IDataService$Stub;->setInitialAttachApn(ILandroid/telephony/data/DataProfile;ZLandroid/telephony/data/IDataServiceCallback;)V

    .line 247
    move/from16 v16, v1

    goto/16 :goto_1b9

    .line 224
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/telephony/data/DataProfile;
    .end local v5    # "_arg2":Z
    .end local v6    # "_arg3":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_126
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 226
    .restart local v3    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 228
    .local v4, "_arg1":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 230
    .local v5, "_arg2":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v6

    .line 231
    .restart local v6    # "_arg3":Landroid/telephony/data/IDataServiceCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/telephony/data/IDataService$Stub;->deactivateDataCall(IIILandroid/telephony/data/IDataServiceCallback;)V

    .line 233
    move/from16 v16, v1

    goto/16 :goto_1b9

    .line 194
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_144
    move v3, v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 196
    .local v1, "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 198
    .local v2, "_arg1":I
    sget-object v4, Landroid/telephony/data/DataProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/data/DataProfile;

    .line 200
    .local v4, "_arg2":Landroid/telephony/data/DataProfile;
    move v5, v3

    move-object v3, v4

    .end local v4    # "_arg2":Landroid/telephony/data/DataProfile;
    .local v3, "_arg2":Landroid/telephony/data/DataProfile;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 202
    .local v4, "_arg3":Z
    move v6, v5

    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 204
    .local v5, "_arg4":Z
    move v7, v6

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 206
    .local v6, "_arg5":I
    sget-object v8, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkProperties;

    .line 208
    .local v8, "_arg6":Landroid/net/LinkProperties;
    move v9, v7

    move-object v7, v8

    .end local v8    # "_arg6":Landroid/net/LinkProperties;
    .local v7, "_arg6":Landroid/net/LinkProperties;
    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 210
    .local v8, "_arg7":I
    sget-object v10, Landroid/telephony/data/NetworkSliceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/data/NetworkSliceInfo;

    .line 212
    .local v10, "_arg8":Landroid/telephony/data/NetworkSliceInfo;
    sget-object v11, Landroid/telephony/data/TrafficDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/data/TrafficDescriptor;

    .line 214
    .local v11, "_arg9":Landroid/telephony/data/TrafficDescriptor;
    move v12, v9

    move-object v9, v10

    move-object v10, v11

    .end local v11    # "_arg9":Landroid/telephony/data/TrafficDescriptor;
    .local v9, "_arg8":Landroid/telephony/data/NetworkSliceInfo;
    .local v10, "_arg9":Landroid/telephony/data/TrafficDescriptor;
    invoke-virtual {v14}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 216
    .local v11, "_arg10":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v16

    .line 217
    .local v16, "_arg11":Landroid/telephony/data/IDataServiceCallback;
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    move-object/from16 v17, v16

    move/from16 v16, v12

    move-object/from16 v12, v17

    .end local v16    # "_arg11":Landroid/telephony/data/IDataServiceCallback;
    .local v12, "_arg11":Landroid/telephony/data/IDataServiceCallback;
    invoke-virtual/range {v0 .. v12}, Landroid/telephony/data/IDataService$Stub;->setupDataCall(IILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/IDataServiceCallback;)V

    .line 219
    goto :goto_1b9

    .line 186
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/telephony/data/DataProfile;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/net/LinkProperties;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Landroid/telephony/data/NetworkSliceInfo;
    .end local v10    # "_arg9":Landroid/telephony/data/TrafficDescriptor;
    .end local v11    # "_arg10":Z
    .end local v12    # "_arg11":Landroid/telephony/data/IDataServiceCallback;
    :pswitch_19f
    move/from16 v16, v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 187
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {v0, v1}, Landroid/telephony/data/IDataService$Stub;->removeDataServiceProvider(I)V

    .line 189
    goto :goto_1b9

    .line 178
    .end local v1    # "_arg0":I
    :pswitch_1ac
    move/from16 v16, v1

    invoke-virtual {v14}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 179
    .restart local v1    # "_arg0":I
    invoke-virtual {v14}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {v0, v1}, Landroid/telephony/data/IDataService$Stub;->createDataServiceProvider(I)V

    .line 181
    nop

    .line 354
    .end local v1    # "_arg0":I
    :goto_1b9
    return v16

    :pswitch_data_1ba
    .packed-switch 0x1
        :pswitch_1ac
        :pswitch_19f
        :pswitch_144
        :pswitch_126
        :pswitch_104
        :pswitch_e4
        :pswitch_ce
        :pswitch_b8
        :pswitch_a2
        :pswitch_88
        :pswitch_6e
        :pswitch_58
        :pswitch_42
        :pswitch_28
    .end packed-switch
.end method
