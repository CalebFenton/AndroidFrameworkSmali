.class public abstract Landroid/apex/IApexService$Stub;
.super Landroid/os/Binder;
.source "IApexService.java"

# interfaces
.implements Landroid/apex/IApexService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/apex/IApexService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/apex/IApexService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_abortStagedSession:I = 0x9

.field static final blacklist TRANSACTION_calculateSizeForCompressedApex:I = 0x15

.field static final blacklist TRANSACTION_destroyCeSnapshots:I = 0xe

.field static final blacklist TRANSACTION_destroyCeSnapshotsNotSpecified:I = 0xf

.field static final blacklist TRANSACTION_destroyDeSnapshots:I = 0xd

.field static final blacklist TRANSACTION_getActivePackages:I = 0x7

.field static final blacklist TRANSACTION_getAllPackages:I = 0x8

.field static final blacklist TRANSACTION_getSessions:I = 0x4

.field static final blacklist TRANSACTION_getStagedApexInfos:I = 0x6

.field static final blacklist TRANSACTION_getStagedSessionInfo:I = 0x5

.field static final blacklist TRANSACTION_installAndActivatePackage:I = 0x17

.field static final blacklist TRANSACTION_markBootCompleted:I = 0x14

.field static final blacklist TRANSACTION_markStagedSessionReady:I = 0x2

.field static final blacklist TRANSACTION_markStagedSessionSuccessful:I = 0x3

.field static final blacklist TRANSACTION_recollectPreinstalledData:I = 0x13

.field static final blacklist TRANSACTION_reserveSpaceForCompressedApex:I = 0x16

.field static final blacklist TRANSACTION_restoreCeData:I = 0xc

.field static final blacklist TRANSACTION_resumeRevertIfNeeded:I = 0x12

.field static final blacklist TRANSACTION_revertActiveSessions:I = 0xa

.field static final blacklist TRANSACTION_snapshotCeData:I = 0xb

.field static final blacklist TRANSACTION_stagePackages:I = 0x11

.field static final blacklist TRANSACTION_submitStagedSession:I = 0x1

.field static final blacklist TRANSACTION_unstagePackages:I = 0x10


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 140
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 141
    const-string v0, "android.apex.IApexService"

    invoke-virtual {p0, p0, v0}, Landroid/apex/IApexService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/apex/IApexService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 149
    if-nez p0, :cond_4

    .line 150
    const/4 v0, 0x0

    return-object v0

    .line 152
    :cond_4
    const-string v0, "android.apex.IApexService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 153
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/apex/IApexService;

    if-eqz v1, :cond_14

    .line 154
    move-object v1, v0

    check-cast v1, Landroid/apex/IApexService;

    return-object v1

    .line 156
    :cond_14
    new-instance v1, Landroid/apex/IApexService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/apex/IApexService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 160
    return-object p0
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

    .line 164
    const-string v0, "android.apex.IApexService"

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
    packed-switch p1, :pswitch_data_164

    .line 370
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 360
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2a

    move v3, v1

    goto :goto_2b

    :cond_2a
    const/4 v3, 0x0

    .line 363
    .local v3, "_arg1":Z
    :goto_2b
    invoke-virtual {p0, v2, v3}, Landroid/apex/IApexService$Stub;->installAndActivatePackage(Ljava/lang/String;Z)Landroid/apex/ApexInfo;

    move-result-object v4

    .line 364
    .local v4, "_result":Landroid/apex/ApexInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 366
    goto/16 :goto_163

    .line 352
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Landroid/apex/ApexInfo;
    :pswitch_37
    sget-object v2, Landroid/apex/CompressedApexInfoList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/apex/CompressedApexInfoList;

    .line 353
    .local v2, "_arg0":Landroid/apex/CompressedApexInfoList;
    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->reserveSpaceForCompressedApex(Landroid/apex/CompressedApexInfoList;)V

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    goto/16 :goto_163

    .line 343
    .end local v2    # "_arg0":Landroid/apex/CompressedApexInfoList;
    :pswitch_47
    sget-object v2, Landroid/apex/CompressedApexInfoList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/apex/CompressedApexInfoList;

    .line 344
    .restart local v2    # "_arg0":Landroid/apex/CompressedApexInfoList;
    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->calculateSizeForCompressedApex(Landroid/apex/CompressedApexInfoList;)J

    move-result-wide v3

    .line 345
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 347
    goto/16 :goto_163

    .line 336
    .end local v2    # "_arg0":Landroid/apex/CompressedApexInfoList;
    .end local v3    # "_result":J
    :pswitch_5b
    invoke-virtual {p0}, Landroid/apex/IApexService$Stub;->markBootCompleted()V

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    goto/16 :goto_163

    .line 330
    :pswitch_63
    invoke-virtual {p0}, Landroid/apex/IApexService$Stub;->recollectPreinstalledData()V

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    goto/16 :goto_163

    .line 324
    :pswitch_6b
    invoke-virtual {p0}, Landroid/apex/IApexService$Stub;->resumeRevertIfNeeded()V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    goto/16 :goto_163

    .line 317
    :pswitch_73
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 318
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->stagePackages(Ljava/util/List;)V

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    goto/16 :goto_163

    .line 309
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 310
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->unstagePackages(Ljava/util/List;)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    goto/16 :goto_163

    .line 299
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 301
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 302
    .local v3, "_arg1":[I
    invoke-virtual {p0, v2, v3}, Landroid/apex/IApexService$Stub;->destroyCeSnapshotsNotSpecified(I[I)V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    goto/16 :goto_163

    .line 289
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[I
    :pswitch_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 291
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 292
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/apex/IApexService$Stub;->destroyCeSnapshots(II)V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    goto/16 :goto_163

    .line 281
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 282
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->destroyDeSnapshots(I)V

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    goto/16 :goto_163

    .line 269
    .end local v2    # "_arg0":I
    :pswitch_b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 271
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 273
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Landroid/apex/IApexService$Stub;->restoreCeData(IILjava/lang/String;)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    goto/16 :goto_163

    .line 257
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 259
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 261
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 262
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Landroid/apex/IApexService$Stub;->snapshotCeData(IILjava/lang/String;)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    goto/16 :goto_163

    .line 250
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_df
    invoke-virtual {p0}, Landroid/apex/IApexService$Stub;->revertActiveSessions()V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    goto/16 :goto_163

    .line 243
    :pswitch_e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 244
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->abortStagedSession(I)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    goto/16 :goto_163

    .line 235
    .end local v2    # "_arg0":I
    :pswitch_f3
    invoke-virtual {p0}, Landroid/apex/IApexService$Stub;->getAllPackages()[Landroid/apex/ApexInfo;

    move-result-object v2

    .line 236
    .local v2, "_result":[Landroid/apex/ApexInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 238
    goto :goto_163

    .line 228
    .end local v2    # "_result":[Landroid/apex/ApexInfo;
    :pswitch_fe
    invoke-virtual {p0}, Landroid/apex/IApexService$Stub;->getActivePackages()[Landroid/apex/ApexInfo;

    move-result-object v2

    .line 229
    .restart local v2    # "_result":[Landroid/apex/ApexInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 231
    goto :goto_163

    .line 220
    .end local v2    # "_result":[Landroid/apex/ApexInfo;
    :pswitch_109
    sget-object v2, Landroid/apex/ApexSessionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/apex/ApexSessionParams;

    .line 221
    .local v2, "_arg0":Landroid/apex/ApexSessionParams;
    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->getStagedApexInfos(Landroid/apex/ApexSessionParams;)[Landroid/apex/ApexInfo;

    move-result-object v3

    .line 222
    .local v3, "_result":[Landroid/apex/ApexInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 224
    goto :goto_163

    .line 211
    .end local v2    # "_arg0":Landroid/apex/ApexSessionParams;
    .end local v3    # "_result":[Landroid/apex/ApexInfo;
    :pswitch_11c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 212
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    move-result-object v3

    .line 213
    .local v3, "_result":Landroid/apex/ApexSessionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 215
    goto :goto_163

    .line 203
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/apex/ApexSessionInfo;
    :pswitch_12b
    invoke-virtual {p0}, Landroid/apex/IApexService$Stub;->getSessions()[Landroid/apex/ApexSessionInfo;

    move-result-object v2

    .line 204
    .local v2, "_result":[Landroid/apex/ApexSessionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 206
    goto :goto_163

    .line 196
    .end local v2    # "_result":[Landroid/apex/ApexSessionInfo;
    :pswitch_136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 197
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->markStagedSessionSuccessful(I)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    goto :goto_163

    .line 188
    .end local v2    # "_arg0":I
    :pswitch_141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 189
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/apex/IApexService$Stub;->markStagedSessionReady(I)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    goto :goto_163

    .line 177
    .end local v2    # "_arg0":I
    :pswitch_14c
    sget-object v2, Landroid/apex/ApexSessionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/apex/ApexSessionParams;

    .line 179
    .local v2, "_arg0":Landroid/apex/ApexSessionParams;
    new-instance v3, Landroid/apex/ApexInfoList;

    invoke-direct {v3}, Landroid/apex/ApexInfoList;-><init>()V

    .line 180
    .local v3, "_arg1":Landroid/apex/ApexInfoList;
    invoke-virtual {p0, v2, v3}, Landroid/apex/IApexService$Stub;->submitStagedSession(Landroid/apex/ApexSessionParams;Landroid/apex/ApexInfoList;)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 183
    nop

    .line 373
    .end local v2    # "_arg0":Landroid/apex/ApexSessionParams;
    .end local v3    # "_arg1":Landroid/apex/ApexInfoList;
    :goto_163
    return v1

    :pswitch_data_164
    .packed-switch 0x1
        :pswitch_14c
        :pswitch_141
        :pswitch_136
        :pswitch_12b
        :pswitch_11c
        :pswitch_109
        :pswitch_fe
        :pswitch_f3
        :pswitch_e7
        :pswitch_df
        :pswitch_cb
        :pswitch_b7
        :pswitch_ab
        :pswitch_9b
        :pswitch_8b
        :pswitch_7f
        :pswitch_73
        :pswitch_6b
        :pswitch_63
        :pswitch_5b
        :pswitch_47
        :pswitch_37
        :pswitch_1e
    .end packed-switch
.end method
