.class public abstract Landroid/app/job/IJobCallback$Stub;
.super Landroid/os/Binder;
.source "IJobCallback.java"

# interfaces
.implements Landroid/app/job/IJobCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/IJobCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/IJobCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.job.IJobCallback"

.field static final blacklist TRANSACTION_acknowledgeGetTransferredDownloadBytesMessage:I = 0x1

.field static final blacklist TRANSACTION_acknowledgeGetTransferredUploadBytesMessage:I = 0x2

.field static final greylist-max-o TRANSACTION_acknowledgeStartMessage:I = 0x3

.field static final greylist-max-o TRANSACTION_acknowledgeStopMessage:I = 0x4

.field static final greylist-max-o TRANSACTION_completeWork:I = 0x6

.field static final greylist-max-o TRANSACTION_dequeueWork:I = 0x5

.field static final blacklist TRANSACTION_handleAbandonedJob:I = 0x8

.field static final greylist-max-o TRANSACTION_jobFinished:I = 0x7

.field static final blacklist TRANSACTION_setNotification:I = 0xb

.field static final blacklist TRANSACTION_updateEstimatedNetworkBytes:I = 0x9

.field static final blacklist TRANSACTION_updateTransferredNetworkBytes:I = 0xa


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 142
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 143
    const-string v0, "android.app.job.IJobCallback"

    invoke-virtual {p0, p0, v0}, Landroid/app/job/IJobCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 151
    if-nez p0, :cond_4

    .line 152
    const/4 v0, 0x0

    return-object v0

    .line 154
    :cond_4
    const-string v0, "android.app.job.IJobCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 155
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/job/IJobCallback;

    if-eqz v1, :cond_14

    .line 156
    move-object v1, v0

    check-cast v1, Landroid/app/job/IJobCallback;

    return-object v1

    .line 158
    :cond_14
    new-instance v1, Landroid/app/job/IJobCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/job/IJobCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 167
    packed-switch p0, :pswitch_data_2c

    .line 215
    const/4 v0, 0x0

    return-object v0

    .line 211
    :pswitch_5
    const-string/jumbo v0, "setNotification"

    return-object v0

    .line 207
    :pswitch_9
    const-string/jumbo v0, "updateTransferredNetworkBytes"

    return-object v0

    .line 203
    :pswitch_d
    const-string/jumbo v0, "updateEstimatedNetworkBytes"

    return-object v0

    .line 199
    :pswitch_11
    const-string/jumbo v0, "handleAbandonedJob"

    return-object v0

    .line 195
    :pswitch_15
    const-string/jumbo v0, "jobFinished"

    return-object v0

    .line 191
    :pswitch_19
    const-string v0, "completeWork"

    return-object v0

    .line 187
    :pswitch_1c
    const-string v0, "dequeueWork"

    return-object v0

    .line 183
    :pswitch_1f
    const-string v0, "acknowledgeStopMessage"

    return-object v0

    .line 179
    :pswitch_22
    const-string v0, "acknowledgeStartMessage"

    return-object v0

    .line 175
    :pswitch_25
    const-string v0, "acknowledgeGetTransferredUploadBytesMessage"

    return-object v0

    .line 171
    :pswitch_28
    const-string v0, "acknowledgeGetTransferredDownloadBytesMessage"

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
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

    .line 162
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 669
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 222
    invoke-static {p1}, Landroid/app/job/IJobCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    const-string v7, "android.app.job.IJobCallback"

    .line 227
    .local v7, "descriptor":Ljava/lang/String;
    const/4 v8, 0x1

    if-lt p1, v8, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 228
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 231
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    return v8

    .line 234
    :cond_16
    packed-switch p1, :pswitch_data_11a

    .line 373
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 359
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 361
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 363
    .local v2, "_arg1":I
    sget-object v3, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification;

    .line 365
    .local v3, "_arg2":Landroid/app/Notification;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 366
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/job/IJobCallback$Stub;->setNotification(IILandroid/app/Notification;I)V

    .line 368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    goto/16 :goto_118

    .line 344
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/app/Notification;
    .end local v4    # "_arg3":I
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 346
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/app/job/JobWorkItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobWorkItem;

    .line 348
    .local v2, "_arg1":Landroid/app/job/JobWorkItem;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 350
    .local v3, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 351
    .local v5, "_arg3":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/job/IJobCallback$Stub;->updateTransferredNetworkBytes(ILandroid/app/job/JobWorkItem;JJ)V

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    goto/16 :goto_118

    .line 329
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/app/job/JobWorkItem;
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":J
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 331
    .restart local v1    # "_arg0":I
    sget-object v0, Landroid/app/job/JobWorkItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/job/JobWorkItem;

    .line 333
    .restart local v2    # "_arg1":Landroid/app/job/JobWorkItem;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 335
    .restart local v3    # "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 336
    .restart local v5    # "_arg3":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/job/IJobCallback$Stub;->updateEstimatedNetworkBytes(ILandroid/app/job/JobWorkItem;JJ)V

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    goto/16 :goto_118

    .line 320
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/app/job/JobWorkItem;
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":J
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 321
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {p0, v1}, Landroid/app/job/IJobCallback$Stub;->handleAbandonedJob(I)V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    goto/16 :goto_118

    .line 309
    .end local v1    # "_arg0":I
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 311
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 312
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, v1, v2}, Landroid/app/job/IJobCallback$Stub;->jobFinished(IZ)V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    goto/16 :goto_118

    .line 297
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 299
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 300
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {p0, v1, v2}, Landroid/app/job/IJobCallback$Stub;->completeWork(II)Z

    move-result v3

    .line 302
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 304
    goto :goto_118

    .line 287
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 288
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-virtual {p0, v1}, Landroid/app/job/IJobCallback$Stub;->dequeueWork(I)Landroid/app/job/JobWorkItem;

    move-result-object v2

    .line 290
    .local v2, "_result":Landroid/app/job/JobWorkItem;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {p3, v2, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 292
    goto :goto_118

    .line 276
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/app/job/JobWorkItem;
    :pswitch_c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 278
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 279
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {p0, v1, v2}, Landroid/app/job/IJobCallback$Stub;->acknowledgeStopMessage(IZ)V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    goto :goto_118

    .line 265
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_da
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 267
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 268
    .restart local v2    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, v1, v2}, Landroid/app/job/IJobCallback$Stub;->acknowledgeStartMessage(IZ)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    goto :goto_118

    .line 252
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 254
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 256
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 257
    .local v3, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/job/IJobCallback$Stub;->acknowledgeGetTransferredUploadBytesMessage(IIJ)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    goto :goto_118

    .line 239
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":J
    :pswitch_102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 241
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 243
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 244
    .restart local v3    # "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/job/IJobCallback$Stub;->acknowledgeGetTransferredDownloadBytesMessage(IIJ)V

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    nop

    .line 376
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":J
    :goto_118
    return v8

    nop

    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_102
        :pswitch_ec
        :pswitch_da
        :pswitch_c8
        :pswitch_b6
        :pswitch_a0
        :pswitch_8d
        :pswitch_7e
        :pswitch_5d
        :pswitch_3d
        :pswitch_1e
    .end packed-switch
.end method
