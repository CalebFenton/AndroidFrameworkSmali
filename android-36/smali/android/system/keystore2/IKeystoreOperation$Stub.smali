.class public abstract Landroid/system/keystore2/IKeystoreOperation$Stub;
.super Landroid/os/Binder;
.source "IKeystoreOperation.java"

# interfaces
.implements Landroid/system/keystore2/IKeystoreOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/keystore2/IKeystoreOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/keystore2/IKeystoreOperation$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_abort:I = 0x4

.field static final blacklist TRANSACTION_finish:I = 0x3

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_update:I = 0x2

.field static final blacklist TRANSACTION_updateAad:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreOperation$Stub;->markVintfStability()V

    .line 59
    sget-object v0, Landroid/system/keystore2/IKeystoreOperation$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/system/keystore2/IKeystoreOperation$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/system/keystore2/IKeystoreOperation;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 67
    if-nez p0, :cond_4

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_4
    sget-object v0, Landroid/system/keystore2/IKeystoreOperation$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/system/keystore2/IKeystoreOperation;

    if-eqz v1, :cond_14

    .line 72
    move-object v1, v0

    check-cast v1, Landroid/system/keystore2/IKeystoreOperation;

    return-object v1

    .line 74
    :cond_14
    new-instance v1, Landroid/system/keystore2/IKeystoreOperation$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/system/keystore2/IKeystoreOperation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 83
    sparse-switch p0, :sswitch_data_1a

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 103
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 107
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 99
    :sswitch_b
    const-string v0, "abort"

    return-object v0

    .line 95
    :sswitch_e
    const-string v0, "finish"

    return-object v0

    .line 91
    :sswitch_11
    const-string/jumbo v0, "update"

    return-object v0

    .line 87
    :sswitch_15
    const-string/jumbo v0, "updateAad"

    return-object v0

    nop

    :sswitch_data_1a
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_11
        0x3 -> :sswitch_e
        0x4 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 78
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 329
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 118
    invoke-static {p1}, Landroid/system/keystore2/IKeystoreOperation$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 122
    sget-object v0, Landroid/system/keystore2/IKeystoreOperation$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 123
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 124
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 127
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    return v2

    .line 130
    :cond_16
    if-ne p1, v1, :cond_23

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreOperation$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    return v2

    .line 135
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreOperation$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    return v2

    .line 140
    :cond_33
    packed-switch p1, :pswitch_data_7a

    .line 181
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 175
    :pswitch_3b
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreOperation$Stub;->abort()V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    goto :goto_78

    .line 164
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 166
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 167
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v1, v3}, Landroid/system/keystore2/IKeystoreOperation$Stub;->finish([B[B)[B

    move-result-object v4

    .line 169
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 171
    goto :goto_78

    .line 154
    .end local v1    # "_arg0":[B
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":[B
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 155
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, v1}, Landroid/system/keystore2/IKeystoreOperation$Stub;->update([B)[B

    move-result-object v3

    .line 157
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 159
    goto :goto_78

    .line 145
    .end local v1    # "_arg0":[B
    .end local v3    # "_result":[B
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 146
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, v1}, Landroid/system/keystore2/IKeystoreOperation$Stub;->updateAad([B)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    nop

    .line 184
    .end local v1    # "_arg0":[B
    :goto_78
    return v2

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_58
        :pswitch_42
        :pswitch_3b
    .end packed-switch
.end method
