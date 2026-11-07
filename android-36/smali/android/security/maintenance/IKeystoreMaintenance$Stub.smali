.class public abstract Landroid/security/maintenance/IKeystoreMaintenance$Stub;
.super Landroid/os/Binder;
.source "IKeystoreMaintenance.java"

# interfaces
.implements Landroid/security/maintenance/IKeystoreMaintenance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/maintenance/IKeystoreMaintenance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearNamespace:I = 0x5

.field static final blacklist TRANSACTION_deleteAllKeys:I = 0x8

.field static final blacklist TRANSACTION_earlyBootEnded:I = 0x6

.field static final blacklist TRANSACTION_getAppUidsAffectedBySid:I = 0x9

.field static final blacklist TRANSACTION_initUserSuperKeys:I = 0x2

.field static final blacklist TRANSACTION_migrateKeyNamespace:I = 0x7

.field static final blacklist TRANSACTION_onUserAdded:I = 0x1

.field static final blacklist TRANSACTION_onUserLskfRemoved:I = 0x4

.field static final blacklist TRANSACTION_onUserRemoved:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 154
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 155
    const-string v0, "android.security.maintenance.IKeystoreMaintenance"

    invoke-virtual {p0, p0, v0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/maintenance/IKeystoreMaintenance;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 163
    if-nez p0, :cond_4

    .line 164
    const/4 v0, 0x0

    return-object v0

    .line 166
    :cond_4
    const-string v0, "android.security.maintenance.IKeystoreMaintenance"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 167
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/security/maintenance/IKeystoreMaintenance;

    if-eqz v1, :cond_14

    .line 168
    move-object v1, v0

    check-cast v1, Landroid/security/maintenance/IKeystoreMaintenance;

    return-object v1

    .line 170
    :cond_14
    new-instance v1, Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 179
    packed-switch p0, :pswitch_data_26

    .line 219
    const/4 v0, 0x0

    return-object v0

    .line 215
    :pswitch_5
    const-string v0, "getAppUidsAffectedBySid"

    return-object v0

    .line 211
    :pswitch_8
    const-string v0, "deleteAllKeys"

    return-object v0

    .line 207
    :pswitch_b
    const-string/jumbo v0, "migrateKeyNamespace"

    return-object v0

    .line 203
    :pswitch_f
    const-string v0, "earlyBootEnded"

    return-object v0

    .line 199
    :pswitch_12
    const-string v0, "clearNamespace"

    return-object v0

    .line 195
    :pswitch_15
    const-string/jumbo v0, "onUserLskfRemoved"

    return-object v0

    .line 191
    :pswitch_19
    const-string/jumbo v0, "onUserRemoved"

    return-object v0

    .line 187
    :pswitch_1d
    const-string/jumbo v0, "initUserSuperKeys"

    return-object v0

    .line 183
    :pswitch_21
    const-string/jumbo v0, "onUserAdded"

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 174
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 606
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 226
    invoke-static {p1}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 230
    const-string v0, "android.security.maintenance.IKeystoreMaintenance"

    .line 231
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 232
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 235
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    return v1

    .line 238
    :cond_16
    packed-switch p1, :pswitch_data_b2

    .line 328
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 317
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 319
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 320
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {p0, v2, v3, v4}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->getAppUidsAffectedBySid(IJ)[J

    move-result-object v5

    .line 322
    .local v5, "_result":[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 324
    goto/16 :goto_b0

    .line 310
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":J
    .end local v5    # "_result":[J
    :pswitch_35
    invoke-virtual {p0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->deleteAllKeys()V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    goto/16 :goto_b0

    .line 300
    :pswitch_3d
    sget-object v2, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/keystore2/KeyDescriptor;

    .line 302
    .local v2, "_arg0":Landroid/system/keystore2/KeyDescriptor;
    sget-object v3, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/system/keystore2/KeyDescriptor;

    .line 303
    .local v3, "_arg1":Landroid/system/keystore2/KeyDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {p0, v2, v3}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->migrateKeyNamespace(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    goto :goto_b0

    .line 293
    .end local v2    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    .end local v3    # "_arg1":Landroid/system/keystore2/KeyDescriptor;
    :pswitch_57
    invoke-virtual {p0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->earlyBootEnded()V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    goto :goto_b0

    .line 283
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 285
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 286
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-virtual {p0, v2, v3, v4}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->clearNamespace(IJ)V

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    goto :goto_b0

    .line 274
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":J
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 275
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, v2}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->onUserLskfRemoved(I)V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    goto :goto_b0

    .line 265
    .end local v2    # "_arg0":I
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 266
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    invoke-virtual {p0, v2}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->onUserRemoved(I)V

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    goto :goto_b0

    .line 252
    .end local v2    # "_arg0":I
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 254
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 256
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 257
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, v2, v3, v4}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->initUserSuperKeys(I[BZ)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    goto :goto_b0

    .line 243
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":Z
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 244
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, v2}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->onUserAdded(I)V

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    nop

    .line 331
    .end local v2    # "_arg0":I
    :goto_b0
    return v1

    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_a2
        :pswitch_8c
        :pswitch_7e
        :pswitch_70
        :pswitch_5e
        :pswitch_57
        :pswitch_3d
        :pswitch_35
        :pswitch_1e
    .end packed-switch
.end method
