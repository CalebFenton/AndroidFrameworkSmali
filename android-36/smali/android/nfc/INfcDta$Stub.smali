.class public abstract Landroid/nfc/INfcDta$Stub;
.super Landroid/os/Binder;
.source "INfcDta.java"

# interfaces
.implements Landroid/nfc/INfcDta;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcDta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcDta$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcDta"

.field static final greylist-max-o TRANSACTION_disableClient:I = 0x6

.field static final greylist-max-o TRANSACTION_disableDta:I = 0x2

.field static final greylist-max-o TRANSACTION_disableServer:I = 0x4

.field static final greylist-max-o TRANSACTION_enableClient:I = 0x5

.field static final greylist-max-o TRANSACTION_enableDta:I = 0x1

.field static final greylist-max-o TRANSACTION_enableServer:I = 0x3

.field static final greylist-max-o TRANSACTION_registerMessageService:I = 0x7


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "android.nfc.INfcDta"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcDta$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcDta;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_4
    const-string v0, "android.nfc.INfcDta"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/nfc/INfcDta;

    if-eqz v1, :cond_14

    .line 65
    move-object v1, v0

    check-cast v1, Landroid/nfc/INfcDta;

    return-object v1

    .line 67
    :cond_14
    new-instance v1, Landroid/nfc/INfcDta$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcDta$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 76
    packed-switch p0, :pswitch_data_1a

    .line 108
    const/4 v0, 0x0

    return-object v0

    .line 104
    :pswitch_5
    const-string v0, "registerMessageService"

    return-object v0

    .line 100
    :pswitch_8
    const-string v0, "disableClient"

    return-object v0

    .line 96
    :pswitch_b
    const-string v0, "enableClient"

    return-object v0

    .line 92
    :pswitch_e
    const-string v0, "disableServer"

    return-object v0

    .line 88
    :pswitch_11
    const-string v0, "enableServer"

    return-object v0

    .line 84
    :pswitch_14
    const-string v0, "disableDta"

    return-object v0

    .line 80
    :pswitch_17
    const-string v0, "enableDta"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 71
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 349
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 115
    invoke-static {p1}, Landroid/nfc/INfcDta$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 119
    const-string v6, "android.nfc.INfcDta"

    .line 120
    .local v6, "descriptor":Ljava/lang/String;
    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 121
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 124
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    return v7

    .line 127
    :cond_16
    packed-switch p1, :pswitch_data_8e

    .line 199
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 190
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, v1}, Landroid/nfc/INfcDta$Stub;->registerMessageService(Ljava/lang/String;)Z

    move-result v2

    .line 193
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 195
    goto :goto_8d

    .line 183
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_30
    invoke-virtual {p0}, Landroid/nfc/INfcDta$Stub;->disableClient()V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    goto :goto_8d

    .line 168
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 170
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 172
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 174
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 175
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/nfc/INfcDta$Stub;->enableClient(Ljava/lang/String;III)Z

    move-result v5

    .line 177
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 179
    goto :goto_8d

    .line 161
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Z
    :pswitch_55
    invoke-virtual {p0}, Landroid/nfc/INfcDta$Stub;->disableServer()V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    goto :goto_8d

    .line 144
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 146
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 148
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 150
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 152
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 153
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/nfc/INfcDta$Stub;->enableServer(Ljava/lang/String;IIII)Z

    move-result v8

    .line 155
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 157
    goto :goto_8d

    .line 137
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v8    # "_result":Z
    :pswitch_7f
    invoke-virtual {p0}, Landroid/nfc/INfcDta$Stub;->disableDta()V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    goto :goto_8d

    .line 131
    :pswitch_86
    invoke-virtual {p0}, Landroid/nfc/INfcDta$Stub;->enableDta()V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    nop

    .line 202
    :goto_8d
    return v7

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_86
        :pswitch_7f
        :pswitch_5c
        :pswitch_55
        :pswitch_37
        :pswitch_30
        :pswitch_1e
    .end packed-switch
.end method
