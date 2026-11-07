.class public abstract Landroid/app/blob/IBlobStoreSession$Stub;
.super Landroid/os/Binder;
.source "IBlobStoreSession.java"

# interfaces
.implements Landroid/app/blob/IBlobStoreSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/blob/IBlobStoreSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/blob/IBlobStoreSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_abandon:I = 0xb

.field static final blacklist TRANSACTION_allowPackageAccess:I = 0x3

.field static final blacklist TRANSACTION_allowPublicAccess:I = 0x5

.field static final blacklist TRANSACTION_allowSameSignatureAccess:I = 0x4

.field static final blacklist TRANSACTION_close:I = 0xa

.field static final blacklist TRANSACTION_commit:I = 0xc

.field static final blacklist TRANSACTION_getSize:I = 0x9

.field static final blacklist TRANSACTION_isPackageAccessAllowed:I = 0x6

.field static final blacklist TRANSACTION_isPublicAccessAllowed:I = 0x8

.field static final blacklist TRANSACTION_isSameSignatureAccessAllowed:I = 0x7

.field static final blacklist TRANSACTION_openRead:I = 0x2

.field static final blacklist TRANSACTION_openWrite:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 70
    const-string v0, "android.app.blob.IBlobStoreSession"

    invoke-virtual {p0, p0, v0}, Landroid/app/blob/IBlobStoreSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/blob/IBlobStoreSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 78
    if-nez p0, :cond_4

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_4
    const-string v0, "android.app.blob.IBlobStoreSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 82
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/blob/IBlobStoreSession;

    if-eqz v1, :cond_14

    .line 83
    move-object v1, v0

    check-cast v1, Landroid/app/blob/IBlobStoreSession;

    return-object v1

    .line 85
    :cond_14
    new-instance v1, Landroid/app/blob/IBlobStoreSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/blob/IBlobStoreSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 94
    packed-switch p0, :pswitch_data_30

    .line 146
    const/4 v0, 0x0

    return-object v0

    .line 142
    :pswitch_5
    const-string v0, "commit"

    return-object v0

    .line 138
    :pswitch_8
    const-string v0, "abandon"

    return-object v0

    .line 134
    :pswitch_b
    const-string v0, "close"

    return-object v0

    .line 130
    :pswitch_e
    const-string/jumbo v0, "getSize"

    return-object v0

    .line 126
    :pswitch_12
    const-string/jumbo v0, "isPublicAccessAllowed"

    return-object v0

    .line 122
    :pswitch_16
    const-string/jumbo v0, "isSameSignatureAccessAllowed"

    return-object v0

    .line 118
    :pswitch_1a
    const-string/jumbo v0, "isPackageAccessAllowed"

    return-object v0

    .line 114
    :pswitch_1e
    const-string v0, "allowPublicAccess"

    return-object v0

    .line 110
    :pswitch_21
    const-string v0, "allowSameSignatureAccess"

    return-object v0

    .line 106
    :pswitch_24
    const-string v0, "allowPackageAccess"

    return-object v0

    .line 102
    :pswitch_27
    const-string/jumbo v0, "openRead"

    return-object v0

    .line 98
    :pswitch_2b
    const-string/jumbo v0, "openWrite"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1a
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

    .line 89
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 494
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 153
    invoke-static {p1}, Landroid/app/blob/IBlobStoreSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 157
    const-string v0, "android.app.blob.IBlobStoreSession"

    .line 158
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 159
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 162
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    return v1

    .line 165
    :cond_16
    packed-switch p1, :pswitch_data_ba

    .line 265
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 257
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/blob/IBlobCommitCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/blob/IBlobCommitCallback;

    move-result-object v2

    .line 258
    .local v2, "_arg0":Landroid/app/blob/IBlobCommitCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, v2}, Landroid/app/blob/IBlobStoreSession$Stub;->commit(Landroid/app/blob/IBlobCommitCallback;)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    goto/16 :goto_b9

    .line 250
    .end local v2    # "_arg0":Landroid/app/blob/IBlobCommitCallback;
    :pswitch_31
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->abandon()V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    goto/16 :goto_b9

    .line 244
    :pswitch_39
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->close()V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    goto/16 :goto_b9

    .line 237
    :pswitch_41
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->getSize()J

    move-result-wide v2

    .line 238
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 240
    goto :goto_b9

    .line 230
    .end local v2    # "_result":J
    :pswitch_4c
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->isPublicAccessAllowed()Z

    move-result v2

    .line 231
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 233
    goto :goto_b9

    .line 223
    .end local v2    # "_result":Z
    :pswitch_57
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->isSameSignatureAccessAllowed()Z

    move-result v2

    .line 224
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 226
    goto :goto_b9

    .line 212
    .end local v2    # "_result":Z
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 215
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {p0, v2, v3}, Landroid/app/blob/IBlobStoreSession$Stub;->isPackageAccessAllowed(Ljava/lang/String;[B)Z

    move-result v4

    .line 217
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 219
    goto :goto_b9

    .line 205
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":Z
    :pswitch_78
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->allowPublicAccess()V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    goto :goto_b9

    .line 199
    :pswitch_7f
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->allowSameSignatureAccess()V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    goto :goto_b9

    .line 189
    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 191
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 192
    .restart local v3    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2, v3}, Landroid/app/blob/IBlobStoreSession$Stub;->allowPackageAccess(Ljava/lang/String;[B)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    goto :goto_b9

    .line 181
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    :pswitch_98
    invoke-virtual {p0}, Landroid/app/blob/IBlobStoreSession$Stub;->openRead()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 182
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 184
    goto :goto_b9

    .line 170
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 172
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 173
    .local v4, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/blob/IBlobStoreSession$Stub;->openWrite(JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 175
    .local v6, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 177
    nop

    .line 268
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":J
    .end local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    :goto_b9
    return v1

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_a3
        :pswitch_98
        :pswitch_86
        :pswitch_7f
        :pswitch_78
        :pswitch_62
        :pswitch_57
        :pswitch_4c
        :pswitch_41
        :pswitch_39
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
