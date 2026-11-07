.class public abstract Landroid/security/legacykeystore/ILegacyKeystore$Stub;
.super Landroid/os/Binder;
.source "ILegacyKeystore.java"

# interfaces
.implements Landroid/security/legacykeystore/ILegacyKeystore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/legacykeystore/ILegacyKeystore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/legacykeystore/ILegacyKeystore$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_get:I = 0x1

.field static final blacklist TRANSACTION_list:I = 0x4

.field static final blacklist TRANSACTION_put:I = 0x2

.field static final blacklist TRANSACTION_remove:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 89
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 90
    const-string v0, "android.security.legacykeystore.ILegacyKeystore"

    invoke-virtual {p0, p0, v0}, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/legacykeystore/ILegacyKeystore;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 98
    if-nez p0, :cond_4

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 101
    :cond_4
    const-string v0, "android.security.legacykeystore.ILegacyKeystore"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 102
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/security/legacykeystore/ILegacyKeystore;

    if-eqz v1, :cond_14

    .line 103
    move-object v1, v0

    check-cast v1, Landroid/security/legacykeystore/ILegacyKeystore;

    return-object v1

    .line 105
    :cond_14
    new-instance v1, Landroid/security/legacykeystore/ILegacyKeystore$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/legacykeystore/ILegacyKeystore$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 114
    packed-switch p0, :pswitch_data_14

    .line 134
    const/4 v0, 0x0

    return-object v0

    .line 130
    :pswitch_5
    const-string/jumbo v0, "list"

    return-object v0

    .line 126
    :pswitch_9
    const-string/jumbo v0, "remove"

    return-object v0

    .line 122
    :pswitch_d
    const-string/jumbo v0, "put"

    return-object v0

    .line 118
    :pswitch_11
    const-string v0, "get"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 109
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 337
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 141
    invoke-static {p1}, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 145
    const-string v0, "android.security.legacykeystore.ILegacyKeystore"

    .line 146
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 147
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 150
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    return v1

    .line 153
    :cond_16
    packed-switch p1, :pswitch_data_74

    .line 205
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 194
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 197
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2, v3}, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 201
    goto :goto_72

    .line 183
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":[Ljava/lang/String;
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 185
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 186
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, v2, v3}, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->remove(Ljava/lang/String;I)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    goto :goto_72

    .line 170
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 174
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 175
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v2, v3, v4}, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->put(Ljava/lang/String;I[B)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    goto :goto_72

    .line 158
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[B
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 161
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2, v3}, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->get(Ljava/lang/String;I)[B

    move-result-object v4

    .line 163
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 165
    nop

    .line 208
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":[B
    :goto_72
    return v1

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_46
        :pswitch_34
        :pswitch_1e
    .end packed-switch
.end method
