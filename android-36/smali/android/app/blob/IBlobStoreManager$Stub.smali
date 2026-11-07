.class public abstract Landroid/app/blob/IBlobStoreManager$Stub;
.super Landroid/os/Binder;
.source "IBlobStoreManager.java"

# interfaces
.implements Landroid/app/blob/IBlobStoreManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/blob/IBlobStoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/blob/IBlobStoreManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_abandonSession:I = 0x4

.field static final blacklist TRANSACTION_acquireLease:I = 0x5

.field static final blacklist TRANSACTION_createSession:I = 0x1

.field static final blacklist TRANSACTION_deleteBlob:I = 0xb

.field static final blacklist TRANSACTION_getLeaseInfo:I = 0xd

.field static final blacklist TRANSACTION_getLeasedBlobs:I = 0xc

.field static final blacklist TRANSACTION_getRemainingLeaseQuotaBytes:I = 0x8

.field static final blacklist TRANSACTION_openBlob:I = 0x3

.field static final blacklist TRANSACTION_openSession:I = 0x2

.field static final blacklist TRANSACTION_queryBlobsForUser:I = 0xa

.field static final blacklist TRANSACTION_releaseAllLeases:I = 0x7

.field static final blacklist TRANSACTION_releaseLease:I = 0x6

.field static final blacklist TRANSACTION_waitForIdle:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 74
    const-string v0, "android.app.blob.IBlobStoreManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/blob/IBlobStoreManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/blob/IBlobStoreManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 82
    if-nez p0, :cond_4

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_4
    const-string v0, "android.app.blob.IBlobStoreManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 86
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/blob/IBlobStoreManager;

    if-eqz v1, :cond_14

    .line 87
    move-object v1, v0

    check-cast v1, Landroid/app/blob/IBlobStoreManager;

    return-object v1

    .line 89
    :cond_14
    new-instance v1, Landroid/app/blob/IBlobStoreManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/blob/IBlobStoreManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 98
    packed-switch p0, :pswitch_data_32

    .line 154
    const/4 v0, 0x0

    return-object v0

    .line 150
    :pswitch_5
    const-string v0, "getLeaseInfo"

    return-object v0

    .line 146
    :pswitch_8
    const-string v0, "getLeasedBlobs"

    return-object v0

    .line 142
    :pswitch_b
    const-string v0, "deleteBlob"

    return-object v0

    .line 138
    :pswitch_e
    const-string/jumbo v0, "queryBlobsForUser"

    return-object v0

    .line 134
    :pswitch_12
    const-string/jumbo v0, "waitForIdle"

    return-object v0

    .line 130
    :pswitch_16
    const-string v0, "getRemainingLeaseQuotaBytes"

    return-object v0

    .line 126
    :pswitch_19
    const-string/jumbo v0, "releaseAllLeases"

    return-object v0

    .line 122
    :pswitch_1d
    const-string/jumbo v0, "releaseLease"

    return-object v0

    .line 118
    :pswitch_21
    const-string v0, "acquireLease"

    return-object v0

    .line 114
    :pswitch_24
    const-string v0, "abandonSession"

    return-object v0

    .line 110
    :pswitch_27
    const-string/jumbo v0, "openBlob"

    return-object v0

    .line 106
    :pswitch_2b
    const-string/jumbo v0, "openSession"

    return-object v0

    .line 102
    :pswitch_2f
    const-string v0, "createSession"

    return-object v0

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_16
        :pswitch_12
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 93
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 590
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 161
    invoke-static {p1}, Landroid/app/blob/IBlobStoreManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
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
    const-string v0, "android.app.blob.IBlobStoreManager"

    .line 166
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 167
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 170
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    return v1

    .line 173
    :cond_16
    packed-switch p1, :pswitch_data_14e

    .line 321
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 310
    :pswitch_1f
    sget-object v2, Landroid/app/blob/BlobHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/blob/BlobHandle;

    .line 312
    .local v2, "_arg0":Landroid/app/blob/BlobHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 313
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {p0, v2, v3}, Landroid/app/blob/IBlobStoreManager$Stub;->getLeaseInfo(Landroid/app/blob/BlobHandle;Ljava/lang/String;)Landroid/app/blob/LeaseInfo;

    move-result-object v4

    .line 315
    .local v4, "_result":Landroid/app/blob/LeaseInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 317
    move-object v3, p0

    goto/16 :goto_14c

    .line 300
    .end local v2    # "_arg0":Landroid/app/blob/BlobHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/app/blob/LeaseInfo;
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    invoke-virtual {p0, v2}, Landroid/app/blob/IBlobStoreManager$Stub;->getLeasedBlobs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 303
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/blob/BlobHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 305
    move-object v3, p0

    goto/16 :goto_14c

    .line 291
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/blob/BlobHandle;>;"
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 292
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {p0, v2, v3}, Landroid/app/blob/IBlobStoreManager$Stub;->deleteBlob(J)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    move-object v3, p0

    goto/16 :goto_14c

    .line 281
    .end local v2    # "_arg0":J
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 282
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {p0, v2}, Landroid/app/blob/IBlobStoreManager$Stub;->queryBlobsForUser(I)Ljava/util/List;

    move-result-object v3

    .line 284
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/blob/BlobInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 286
    move-object v3, p0

    goto/16 :goto_14c

    .line 272
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/blob/BlobInfo;>;"
    :pswitch_73
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 273
    .local v2, "_arg0":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    invoke-virtual {p0, v2}, Landroid/app/blob/IBlobStoreManager$Stub;->waitForIdle(Landroid/os/RemoteCallback;)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    move-object v3, p0

    goto/16 :goto_14c

    .line 262
    .end local v2    # "_arg0":Landroid/os/RemoteCallback;
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {p0, v2}, Landroid/app/blob/IBlobStoreManager$Stub;->getRemainingLeaseQuotaBytes(Ljava/lang/String;)J

    move-result-wide v3

    .line 265
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 267
    move-object v3, p0

    goto/16 :goto_14c

    .line 253
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":J
    :pswitch_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 254
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {p0, v2}, Landroid/app/blob/IBlobStoreManager$Stub;->releaseAllLeases(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    move-object v3, p0

    goto/16 :goto_14c

    .line 242
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_ab
    sget-object v2, Landroid/app/blob/BlobHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/blob/BlobHandle;

    .line 244
    .local v2, "_arg0":Landroid/app/blob/BlobHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {p0, v2, v3}, Landroid/app/blob/IBlobStoreManager$Stub;->releaseLease(Landroid/app/blob/BlobHandle;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    move-object v3, p0

    goto/16 :goto_14c

    .line 225
    .end local v2    # "_arg0":Landroid/app/blob/BlobHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_c3
    sget-object v2, Landroid/app/blob/BlobHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/app/blob/BlobHandle;

    .line 227
    .local v4, "_arg0":Landroid/app/blob/BlobHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 229
    .local v5, "_arg1":I
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/CharSequence;

    .line 231
    .local v6, "_arg2":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 233
    .local v7, "_arg3":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 234
    .local v9, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/app/blob/IBlobStoreManager$Stub;->acquireLease(Landroid/app/blob/BlobHandle;ILjava/lang/CharSequence;JLjava/lang/String;)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    goto :goto_14c

    .line 214
    .end local v4    # "_arg0":Landroid/app/blob/BlobHandle;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Ljava/lang/CharSequence;
    .end local v7    # "_arg3":J
    .end local v9    # "_arg4":Ljava/lang/String;
    :pswitch_ec
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 216
    .local v4, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {p0, v4, v5, v2}, Landroid/app/blob/IBlobStoreManager$Stub;->abandonSession(JLjava/lang/String;)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    goto :goto_14c

    .line 202
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg0":J
    :pswitch_ff
    move-object v3, p0

    sget-object v2, Landroid/app/blob/BlobHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/blob/BlobHandle;

    .line 204
    .local v2, "_arg0":Landroid/app/blob/BlobHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {p0, v2, v4}, Landroid/app/blob/IBlobStoreManager$Stub;->openBlob(Landroid/app/blob/BlobHandle;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 207
    .local v5, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 209
    goto :goto_14c

    .line 190
    .end local v2    # "_arg0":Landroid/app/blob/BlobHandle;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_11a
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 192
    .local v4, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v4, v5, v2}, Landroid/app/blob/IBlobStoreManager$Stub;->openSession(JLjava/lang/String;)Landroid/app/blob/IBlobStoreSession;

    move-result-object v6

    .line 195
    .local v6, "_result":Landroid/app/blob/IBlobStoreSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 197
    goto :goto_14c

    .line 178
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg0":J
    .end local v6    # "_result":Landroid/app/blob/IBlobStoreSession;
    :pswitch_131
    move-object v3, p0

    sget-object v2, Landroid/app/blob/BlobHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/blob/BlobHandle;

    .line 180
    .local v2, "_arg0":Landroid/app/blob/BlobHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, v2, v4}, Landroid/app/blob/IBlobStoreManager$Stub;->createSession(Landroid/app/blob/BlobHandle;Ljava/lang/String;)J

    move-result-wide v5

    .line 183
    .local v5, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 185
    nop

    .line 324
    .end local v2    # "_arg0":Landroid/app/blob/BlobHandle;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":J
    :goto_14c
    return v1

    nop

    :pswitch_data_14e
    .packed-switch 0x1
        :pswitch_131
        :pswitch_11a
        :pswitch_ff
        :pswitch_ec
        :pswitch_c3
        :pswitch_ab
        :pswitch_9b
        :pswitch_87
        :pswitch_73
        :pswitch_5f
        :pswitch_4f
        :pswitch_3b
        :pswitch_1f
    .end packed-switch
.end method
